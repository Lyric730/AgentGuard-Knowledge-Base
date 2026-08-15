param(
    [string]$RootWikiUrl = 'https://acntglrfp7bm.feishu.cn/wiki/PEl8wr8D7ipWSEkMOMfcZvPMnjd?fromScene=spaceOverview'
)

$ErrorActionPreference = 'Stop'
$env:LARKSUITE_CLI_NO_UPDATE_NOTIFIER = '1'
$env:LARKSUITE_CLI_NO_SKILLS_NOTIFIER = '1'

$script:RepoRoot = Split-Path -Parent $PSScriptRoot
$script:LarkCli = 'C:\Users\26898\AppData\Roaming\npm\lark-cli.cmd'
$script:Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
$script:ExportedAt = (Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ')
$script:ManifestEntries = New-Object System.Collections.Generic.List[object]
$script:IndexLines = New-Object System.Collections.Generic.List[string]

function Write-Utf8NoBom {
    param([string]$Path, [string]$Content)

    $parent = Split-Path -Parent $Path
    if ($parent) {
        New-Item -ItemType Directory -Force -Path $parent | Out-Null
    }
    [System.IO.File]::WriteAllText($Path, $Content, $script:Utf8NoBom)
}

function Invoke-LarkJson {
    param([string[]]$Arguments)

    $stderrPath = Join-Path ([System.IO.Path]::GetTempPath()) ("lark-export-{0}.stderr" -f ([guid]::NewGuid().ToString('N')))
    $previousErrorActionPreference = $ErrorActionPreference
    try {
        # PowerShell 5.1 wraps native stderr progress messages as ErrorRecord objects.
        # The CLI exit code remains the authoritative success signal.
        $ErrorActionPreference = 'Continue'
        $stdout = & $script:LarkCli @Arguments 2> $stderrPath
        $exitCode = $LASTEXITCODE
        $ErrorActionPreference = $previousErrorActionPreference
        $stderr = if (Test-Path -LiteralPath $stderrPath) {
            [System.IO.File]::ReadAllText($stderrPath)
        } else {
            ''
        }
        if ($exitCode -ne 0) {
            throw "lark-cli failed ($exitCode): $stderr"
        }

        $jsonText = ($stdout -join "`n").Trim()
        if (-not $jsonText) {
            throw "lark-cli returned no JSON. stderr: $stderr"
        }
        $result = $jsonText | ConvertFrom-Json
        if (-not $result.ok) {
            throw "lark-cli returned ok=false: $jsonText"
        }
        return $result
    }
    finally {
        $ErrorActionPreference = $previousErrorActionPreference
        Remove-Item -LiteralPath $stderrPath -Force -ErrorAction SilentlyContinue
    }
}

function ConvertTo-SafeName {
    param([string]$Name)

    $safe = $Name -replace '[<>:"/\\|?*]', ' - '
    $safe = ($safe -replace '\s+', ' ').Trim().TrimEnd('.')
    if (-not $safe) {
        return 'untitled'
    }
    if ($safe.Length -gt 96) {
        return $safe.Substring(0, 96).Trim()
    }
    return $safe
}

function ConvertTo-RelativeLink {
    param([string]$Path)

    return ($Path -replace '\\', '/')
}

function Get-AssetExtension {
    param([string]$ContentType)

    switch -Regex ($ContentType) {
        '^image/png' { return '.png' }
        '^image/jpeg' { return '.jpg' }
        '^image/gif' { return '.gif' }
        '^image/webp' { return '.webp' }
        '^image/svg\+xml' { return '.svg' }
        '^text/html' { return '.html' }
        '^application/pdf' { return '.pdf' }
        '^application/zip' { return '.zip' }
        '^application/json' { return '.json' }
        default { return '.bin' }
    }
}

function Localize-RemoteAssets {
    param(
        [string]$Content,
        [string]$OutputRelativePath,
        [string]$DocumentToken
    )

    $assetUrls = @(
        [regex]::Matches($Content, 'https://internal-api-drive-stream\.feishu\.cn/[^\s)"''<>]+') |
            ForEach-Object { $_.Value } |
            Sort-Object -Unique
    )
    if ($assetUrls.Count -eq 0) {
        return [pscustomobject]@{
            content = $Content
            asset_count = 0
            asset_directory = $null
        }
    }

    $documentDirectory = Split-Path -Parent $OutputRelativePath
    $assetDirectoryRelative = Join-Path $documentDirectory (Join-Path '_assets' $DocumentToken)
    $assetDirectory = Join-Path $script:RepoRoot $assetDirectoryRelative
    New-Item -ItemType Directory -Force -Path $assetDirectory | Out-Null

    $previousProgressPreference = $ProgressPreference
    $ProgressPreference = 'SilentlyContinue'
    try {
        for ($i = 0; $i -lt $assetUrls.Count; $i++) {
            $url = $assetUrls[$i]
            $temporaryPath = Join-Path $assetDirectory ('{0:D3}.download' -f ($i + 1))
            try {
                $response = Invoke-WebRequest -Uri $url -UseBasicParsing -OutFile $temporaryPath -PassThru
                $extension = Get-AssetExtension -ContentType ([string]$response.Headers['Content-Type'])
                $assetName = '{0:D3}{1}' -f ($i + 1), $extension
                $assetPath = Join-Path $assetDirectory $assetName
                Move-Item -LiteralPath $temporaryPath -Destination $assetPath -Force
            }
            finally {
                Remove-Item -LiteralPath $temporaryPath -Force -ErrorAction SilentlyContinue
            }

            $assetRelativePath = ConvertTo-RelativeLink -Path (Join-Path (Join-Path '_assets' $DocumentToken) $assetName)
            $Content = $Content.Replace($url, $assetRelativePath)
        }
    }
    finally {
        $ProgressPreference = $previousProgressPreference
    }

    $attachmentPattern = '<figure[^>]*>\s*<source\s+name="([^"]+)"\s+href="([^"]+)"[^>]*/>\s*</figure>'
    $attachmentEvaluator = [System.Text.RegularExpressions.MatchEvaluator]{
        param($match)
        return ('[Attachment: {0}](<{1}>)' -f $match.Groups[1].Value, $match.Groups[2].Value)
    }
    $Content = [regex]::Replace($Content, $attachmentPattern, $attachmentEvaluator)

    return [pscustomobject]@{
        content = $Content
        asset_count = $assetUrls.Count
        asset_directory = (ConvertTo-RelativeLink -Path $assetDirectoryRelative)
    }
}

function Get-WikiChildren {
    param([string]$SpaceId, [string]$ParentNodeToken)

    $args = @('wiki', '+node-list', '--space-id', $SpaceId, '--page-all', '--page-limit', '0', '--as', 'user', '--format', 'json')
    if ($ParentNodeToken) {
        $args += @('--parent-node-token', $ParentNodeToken)
    }
    $result = Invoke-LarkJson -Arguments $args
    return @($result.data.nodes)
}

function Export-DocxNode {
    param(
        [object]$Node,
        [string]$OutputRelativePath,
        [string]$SourceUrl
    )

    $result = Invoke-LarkJson -Arguments @(
        'docs', '+fetch', '--doc', [string]$Node.obj_token,
        '--doc-format', 'markdown', '--detail', 'simple',
        '--as', 'user', '--format', 'json'
    )
    $document = $result.data.document
    $metadata = @(
        '<!--',
        "Source: $SourceUrl",
        "Feishu document id: $($document.document_id)",
        "Revision: $($document.revision_id)",
        "Exported at: $script:ExportedAt",
        '-->',
        ''
    ) -join "`n"
    $localized = Localize-RemoteAssets -Content ($metadata + $document.content) -OutputRelativePath $OutputRelativePath -DocumentToken ([string]$Node.obj_token)
    Write-Utf8NoBom -Path (Join-Path $script:RepoRoot $OutputRelativePath) -Content $localized.content
    return [ordered]@{
        revision_id = $document.revision_id
        document_id = $document.document_id
        asset_count = $localized.asset_count
        asset_directory = $localized.asset_directory
    }
}

function Export-SheetNode {
    param(
        [object]$Node,
        [string]$DirectoryRelativePath,
        [string]$SourceUrl
    )

    $targetDirectory = Join-Path $script:RepoRoot $DirectoryRelativePath
    New-Item -ItemType Directory -Force -Path $targetDirectory | Out-Null

    $info = Invoke-LarkJson -Arguments @(
        'sheets', '+workbook-info', '--spreadsheet-token', [string]$Node.obj_token,
        '--as', 'user', '--format', 'json'
    )
    Write-Utf8NoBom -Path (Join-Path $targetDirectory 'workbook-info.json') -Content (($info.data | ConvertTo-Json -Depth 30) + "`n")

    $xlsxName = (ConvertTo-SafeName -Name ([string]$Node.title)) + '.xlsx'
    $xlsxRelativePath = Join-Path $DirectoryRelativePath $xlsxName
    $null = Invoke-LarkJson -Arguments @(
        'sheets', '+workbook-export', '--spreadsheet-token', [string]$Node.obj_token,
        '--file-extension', 'xlsx', '--output-path', $xlsxRelativePath,
        '--as', 'user', '--format', 'json'
    )

    $sheetLines = @($info.data.sheets | ForEach-Object {
        "- $($_.sheet_name) [$($_.sheet_id)]: $($_.row_count) rows x $($_.column_count) columns"
    })
    $readme = @(
        "# $($Node.title)",
        '',
        "- Source: [$($Node.title)]($SourceUrl)",
        "- Exported at: $script:ExportedAt",
        "- Workbook: [$xlsxName](<$xlsxName>)",
        '',
        '## Worksheets',
        '',
        ($sheetLines -join "`n"),
        ''
    ) -join "`n"
    Write-Utf8NoBom -Path (Join-Path $targetDirectory 'README.md') -Content $readme

    return [ordered]@{
        revision = $info.data.revision
        sheet_count = @($info.data.sheets).Count
        workbook = (ConvertTo-RelativeLink -Path $xlsxRelativePath)
    }
}

function Get-AllBaseTables {
    param([string]$BaseToken)

    $tables = New-Object System.Collections.Generic.List[object]
    $offset = 0
    do {
        $result = Invoke-LarkJson -Arguments @(
            'base', '+table-list', '--base-token', $BaseToken,
            '--limit', '100', '--offset', [string]$offset,
            '--as', 'user', '--format', 'json'
        )
        foreach ($table in @($result.data.tables)) {
            $tables.Add($table)
        }
        $offset += @($result.data.tables).Count
    } while ($offset -lt [int]$result.data.total)
    return $tables.ToArray()
}

function Get-AllBaseFields {
    param([string]$BaseToken, [string]$TableId)

    $fields = New-Object System.Collections.Generic.List[object]
    $offset = 0
    do {
        $result = Invoke-LarkJson -Arguments @(
            'base', '+field-list', '--base-token', $BaseToken, '--table-id', $TableId,
            '--limit', '200', '--offset', [string]$offset,
            '--as', 'user', '--format', 'json'
        )
        foreach ($field in @($result.data.fields)) {
            $fields.Add($field)
        }
        $offset += @($result.data.fields).Count
        $total = [int]$result.data.total
    } while ($offset -lt $total)
    return $fields.ToArray()
}

function Get-AllBaseRecords {
    param([string]$BaseToken, [string]$TableId)

    $records = New-Object System.Collections.Generic.List[object]
    $offset = 0
    $revision = $null
    $timezone = $null
    do {
        $result = Invoke-LarkJson -Arguments @(
            'base', '+record-list', '--base-token', $BaseToken, '--table-id', $TableId,
            '--limit', '200', '--offset', [string]$offset,
            '--as', 'user', '--format', 'json'
        )
        $data = $result.data
        $revision = $data.rev
        $timezone = $data.timezone
        for ($i = 0; $i -lt @($data.data).Count; $i++) {
            $fieldMap = [ordered]@{}
            for ($j = 0; $j -lt @($data.fields).Count; $j++) {
                $fieldMap[[string]$data.fields[$j]] = $data.data[$i][$j]
            }
            $records.Add([ordered]@{
                record_id = $data.record_id_list[$i]
                fields = $fieldMap
            })
        }
        $pageCount = @($data.data).Count
        $offset += $pageCount
        if ($data.has_more -and $pageCount -eq 0) {
            throw "Base pagination made no progress for table $TableId at offset $offset"
        }
    } while ($data.has_more)

    return [ordered]@{
        revision = $revision
        timezone = $timezone
        records = $records.ToArray()
    }
}

function Export-BaseNode {
    param(
        [object]$Node,
        [string]$DirectoryRelativePath,
        [string]$SourceUrl
    )

    $targetDirectory = Join-Path $script:RepoRoot $DirectoryRelativePath
    New-Item -ItemType Directory -Force -Path $targetDirectory | Out-Null

    $resolved = Invoke-LarkJson -Arguments @(
        'base', '+url-resolve', '--url', $SourceUrl,
        '--as', 'user', '--format', 'json'
    )
    $baseToken = [string]$resolved.data.base_token
    $tables = @(Get-AllBaseTables -BaseToken $baseToken)
    $tableSummaries = New-Object System.Collections.Generic.List[object]

    for ($i = 0; $i -lt $tables.Count; $i++) {
        $table = $tables[$i]
        $tableDirectoryName = '{0:D2}-{1}' -f ($i + 1), (ConvertTo-SafeName -Name ([string]$table.name))
        $tableRelativePath = Join-Path $DirectoryRelativePath $tableDirectoryName
        $tableDirectory = Join-Path $script:RepoRoot $tableRelativePath
        New-Item -ItemType Directory -Force -Path $tableDirectory | Out-Null

        $fields = @(Get-AllBaseFields -BaseToken $baseToken -TableId ([string]$table.id))
        $recordResult = Get-AllBaseRecords -BaseToken $baseToken -TableId ([string]$table.id)
        $records = @($recordResult.records)

        Write-Utf8NoBom -Path (Join-Path $tableDirectory 'schema.json') -Content ((@{
            table = $table
            fields = $fields
        } | ConvertTo-Json -Depth 50) + "`n")
        Write-Utf8NoBom -Path (Join-Path $tableDirectory 'records.json') -Content ((@{
            revision = $recordResult.revision
            timezone = $recordResult.timezone
            records = $records
        } | ConvertTo-Json -Depth 60) + "`n")

        $csvRows = foreach ($record in $records) {
            $row = [ordered]@{ record_id = $record.record_id }
            foreach ($field in $fields) {
                $value = $record.fields[[string]$field.name]
                if ($null -eq $value) {
                    $row[[string]$field.name] = ''
                } elseif ($value -is [string] -or $value -is [ValueType]) {
                    $row[[string]$field.name] = $value
                } else {
                    $row[[string]$field.name] = ($value | ConvertTo-Json -Depth 30 -Compress)
                }
            }
            [pscustomobject]$row
        }
        $csvText = if (@($csvRows).Count -gt 0) {
            (@($csvRows) | ConvertTo-Csv -NoTypeInformation) -join "`r`n"
        } else {
            'record_id'
        }
        Write-Utf8NoBom -Path (Join-Path $tableDirectory 'records.csv') -Content ($csvText + "`r`n")

        $tableReadme = @(
            "# $($table.name)",
            '',
            "- Table ID: $($table.id)",
            "- Fields: $($fields.Count)",
            "- Records exported: $($records.Count)",
            "- Source revision: $($recordResult.revision)",
            '',
            '- [Schema](schema.json)',
            '- [Records (JSON)](records.json)',
            '- [Records (CSV)](records.csv)',
            ''
        ) -join "`n"
        Write-Utf8NoBom -Path (Join-Path $tableDirectory 'README.md') -Content $tableReadme

        $tableSummaries.Add([ordered]@{
            table_id = $table.id
            name = $table.name
            field_count = $fields.Count
            record_count = $records.Count
            revision = $recordResult.revision
            path = (ConvertTo-RelativeLink -Path $tableRelativePath)
        })
    }

    $readme = @(
        "# $($Node.title)",
        '',
        "- Source: [$($Node.title)]($SourceUrl)",
        "- Exported at: $script:ExportedAt",
        "- Tables: $($tables.Count)",
        '',
        'Each table directory contains the field schema, lossless JSON records, and a CSV review copy.',
        ''
    ) -join "`n"
    Write-Utf8NoBom -Path (Join-Path $targetDirectory 'README.md') -Content $readme

    return [ordered]@{
        base_token = $baseToken
        table_count = $tables.Count
        tables = $tableSummaries.ToArray()
    }
}

function Export-WikiNode {
    param(
        [object]$Node,
        [string]$ParentRelativePath,
        [int]$Index,
        [int]$Depth,
        [string]$SpaceId,
        [string]$HostName
    )

    $safeTitle = ConvertTo-SafeName -Name ([string]$Node.title)
    $baseName = '{0:D2}-{1}' -f $Index, $safeTitle
    $sourceUrl = "https://$HostName/wiki/$($Node.node_token)"
    $hasChild = [bool]$Node.has_child
    $nodeRelativePath = if ($hasChild -or $Node.obj_type -ne 'docx') {
        if ($ParentRelativePath) { Join-Path $ParentRelativePath $baseName } else { $baseName }
    } else {
        $fileName = $baseName + '.md'
        if ($ParentRelativePath) { Join-Path $ParentRelativePath $fileName } else { $fileName }
    }

    $details = $null
    switch ([string]$Node.obj_type) {
        'docx' {
            $docPath = if ($hasChild) { Join-Path $nodeRelativePath 'README.md' } else { $nodeRelativePath }
            $details = Export-DocxNode -Node $Node -OutputRelativePath $docPath -SourceUrl $sourceUrl
            $indexTarget = $docPath
        }
        'sheet' {
            $details = Export-SheetNode -Node $Node -DirectoryRelativePath $nodeRelativePath -SourceUrl $sourceUrl
            $indexTarget = Join-Path $nodeRelativePath 'README.md'
        }
        'bitable' {
            $details = Export-BaseNode -Node $Node -DirectoryRelativePath $nodeRelativePath -SourceUrl $sourceUrl
            $indexTarget = Join-Path $nodeRelativePath 'README.md'
        }
        default {
            $unsupported = "# $($Node.title)`n`n- Source: $sourceUrl`n- Unsupported object type: $($Node.obj_type)`n"
            $unsupportedPath = Join-Path $nodeRelativePath 'README.md'
            Write-Utf8NoBom -Path (Join-Path $script:RepoRoot $unsupportedPath) -Content $unsupported
            $details = [ordered]@{ unsupported = $true }
            $indexTarget = $unsupportedPath
        }
    }

    $script:IndexLines.Add((('  ' * $Depth) + '- [' + [string]$Node.title + '](<' + (ConvertTo-RelativeLink -Path $indexTarget) + '>) - `' + [string]$Node.obj_type + '`'))
    $entry = [ordered]@{
        title = [string]$Node.title
        node_token = [string]$Node.node_token
        object_token = [string]$Node.obj_token
        object_type = [string]$Node.obj_type
        parent_node_token = [string]$Node.parent_node_token
        source_url = $sourceUrl
        local_path = (ConvertTo-RelativeLink -Path $indexTarget)
        has_child = $hasChild
        details = $details
    }
    $script:ManifestEntries.Add($entry)

    if ($hasChild) {
        $children = Get-WikiChildren -SpaceId $SpaceId -ParentNodeToken ([string]$Node.node_token)
        for ($i = 0; $i -lt $children.Count; $i++) {
            Export-WikiNode -Node $children[$i] -ParentRelativePath $nodeRelativePath -Index ($i + 1) -Depth ($Depth + 1) -SpaceId $SpaceId -HostName $HostName
        }
    }
}

if (-not (Test-Path -LiteralPath $script:LarkCli)) {
    throw "lark-cli was not found at $script:LarkCli"
}

$rootUri = [uri]$RootWikiUrl
$rootNode = Invoke-LarkJson -Arguments @(
    'wiki', '+node-get', '--node-token', $RootWikiUrl,
    '--as', 'user', '--format', 'json'
)
$spaceId = [string]$rootNode.data.space_id
$nodes = Get-WikiChildren -SpaceId $spaceId -ParentNodeToken ''

Push-Location $script:RepoRoot
try {
    for ($i = 0; $i -lt $nodes.Count; $i++) {
        Export-WikiNode -Node $nodes[$i] -ParentRelativePath 'docs' -Index ($i + 1) -Depth 0 -SpaceId $spaceId -HostName $rootUri.Host
    }
}
finally {
    Pop-Location
}

$typeCounts = $script:ManifestEntries | Group-Object { [string]$_['object_type'] } | ForEach-Object {
    [ordered]@{ type = $_.Name; count = $_.Count }
}
$manifest = [ordered]@{
    source_wiki = $RootWikiUrl
    space_id = $spaceId
    exported_at = $script:ExportedAt
    node_count = $script:ManifestEntries.Count
    type_counts = @($typeCounts)
    entries = $script:ManifestEntries.ToArray()
}
Write-Utf8NoBom -Path (Join-Path $script:RepoRoot 'manifest.json') -Content (($manifest | ConvertTo-Json -Depth 80) + "`n")

$readme = @(
    '# AgentGuard Knowledge Base',
    '',
    'Private mirror of the AgentGuard Feishu knowledge base.',
    '',
    "- Source: [$($rootNode.data.title)]($RootWikiUrl)",
    "- Exported at: $script:ExportedAt",
    "- Nodes: $($script:ManifestEntries.Count)",
    "- Documents: $((@($script:ManifestEntries | Where-Object { $_['object_type'] -eq 'docx' })).Count)",
    "- Spreadsheets: $((@($script:ManifestEntries | Where-Object { $_['object_type'] -eq 'sheet' })).Count)",
    "- Bases: $((@($script:ManifestEntries | Where-Object { $_['object_type'] -eq 'bitable' })).Count)",
    '',
    '> This repository contains internal/client delivery material. Review and sanitize it before changing repository visibility.',
    '',
    '## Contents',
    '',
    ($script:IndexLines -join "`n"),
    '',
    '## Export formats',
    '',
    '- Feishu documents: Markdown with source and revision metadata.',
    '- Feishu spreadsheets: original XLSX plus workbook metadata.',
    '- Feishu Bases: field schema, lossless JSON records, and CSV review copy.',
    '- Full provenance and counts: [`manifest.json`](manifest.json).',
    '',
    '## Refresh',
    '',
    'Run `scripts/export-from-feishu.ps1` with a valid `lark-cli` user session. Export into a clean checkout or review the generated diff before committing.',
    ''
) -join "`n"
Write-Utf8NoBom -Path (Join-Path $script:RepoRoot 'README.md') -Content $readme

Write-Output ($manifest | ConvertTo-Json -Depth 6)
