<!--
Source: https://acntglrfp7bm.feishu.cn/wiki/BH18wlQu0iFhKFksA8RcVTJKndh
Feishu document id: B9OkdPiLEoBVsUxS3mWcKMWwn6d
Revision: 158
Exported at: 2026-08-15T13:31:06Z
-->
# AgentGuard 02 页面信息架构

这份文档是 28 个 P0 页面的完整页面结构，直接用于本周原型图和 PRD。

- **已有页面：** 先审计当前页面。没有问题的模块直接保留；有问题的模块已经把修改后的英文文案、布局和结构写进最终顺序，并用中文括号简述修改原因。
- **新增页面：** 先确认搜索任务，再从筛选通过的真实竞品页面中借鉴模块顺序和信息缺口，最后只用 AgentGuard 一手事实填写页面内容。
- **页面内容：** H1、H2、正文、CTA 和界面标签使用面向美国市场的英文。
- **审核说明：** 页面状态、修改原因、事实缺口和发布阻塞使用中文大白话。
- **事实边界：** 竞品只提供结构参考，不复制竞品正文、客户、Logo、认证、数字、价格或能力承诺。没有 AgentGuard 一手证据的内容不会写成正式产品事实。
- **交付状态：** 🟡 可用于原型图与 PRD。各页末尾的待确认项仍是上线前门槛。

---

## 01. Homepage `/`

**页面目标：** 让美国市场的开发者和技术型安全买家快速理解 AgentGuard 保护什么、如何接入、哪些能力可以公开验证，并进入 Quickstart 或 Demo。

**主关键词：**`ai agent security platform`

**辅助关键词：**`ai agent security`、`ai agent security solution`、`agent security platform`、`ai ciso`

**审计基线：** 当前首页已有 Hero、安装命令、证明条、四张风险卡、运行时护栏、三层保护、六个检测器、三步流程、威胁情报、Pricing、FAQ 和底部 CTA。本方案保留这些有效内容，但把 15 个一级模块合并为 8 个，减少页面断层和重复导航。

**竞品结构依据：** Silverfort、Zenity、BeyondTrust、CyberArk 的美国 Google 自然结果页面。共同可借鉴点是：风险背景后接产品能力；用工作流、集成或产品演示证明能力；将研究内容作为信任证据；FAQ 后再转化。

### 模块 1：Hero + Verifiable Product Proof

**处理方式：** 合并原 Hero 与证明条，并把 `AI CISO` 前移到首屏

**布局**

首屏左侧展示定位、价值说明和两个 CTA；右侧保留真实产品界面或终端运行画面。四项证明条紧接 Hero，不再单独形成一个大区块。移动端先展示文案，再展示产品画面和证明条。

**页面内容**

**Eyebrow**

> AI Agent Security for Developers and AI CISOs

**H1**

> AI Agent Security Platform for High-Risk Agent Actions

**Supporting Copy**

> Evaluate high-risk agent actions before execution, review agent components for documented threats, and give the AI CISO and security teams verifiable evidence for deployment decisions.

**Primary CTA**

> Open Runtime Guard

**Secondary CTA**

> Book a Demo

**Text Link**

> Evaluate AI CISO Requirements → `/ai-ciso`

**Proof Strip**

- **Open Source** — Inspect the runtime layer on GitHub.
- **Local-First** — Keep full code, prompts, secrets, and file contents local in documented local mode.
- **Public Docs and APIs** — Review installation, integrations, and documented endpoint groups.
- **Public Advisories** — Inspect first-party AgentGuard security advisories.

（已修改：`AI CISO` 从原第 10 个模块前移到 Hero，解决出现太晚的问题。H1 仍负责首页主关键词，Hero 其余文案负责承接 `AI CISO`；不把 AgentGuard 写成完整 AI CISO 治理平台。原证明条保留，但并入首屏下方，减少一个独立模块。）

### 模块 2：Install AgentGuard + Integration Entry

**处理方式：** 合并安装入口与集成深度说明

**布局**

上半部分保留终端安装组件、平台切换和复制按钮；下半部分用分组矩阵说明不同环境的公开接入方式和需要验证的保护深度。桌面端横向展示，移动端允许命令与矩阵横向滚动。

**Section Heading**

> Install AgentGuard and Choose an Integration Path

**Supporting Copy**

> Start with the documented installation path, then verify the protection depth available for your environment.

**macOS / Linux**

```bash
curl -fsSL https://agentguard.gopluslabs.io/install.sh | bash
```

**Windows**

```powershell
iwr -useb https://agentguard.gopluslabs.io/install.ps1 | iex
```

**安装交互**

- 切换标签显示对应命令。
- 点击复制图标复制命令。
- 复制成功后显示简短状态提示。
- 保留 GitHub 入口。

**Integration Matrix**

| Environment | Documented Integration Mode | What to Verify |
|-|-|-|
| Claude Code | Pre- and post-tool hooks | Which actions reach Runtime Guard and how decisions are enforced |
| OpenClaw | Plugin hooks, auto-scanning, and patrol | Runtime hooks, component scans, and workspace patrol behavior |
| Hermes | Native tool hooks | Tool categories and decision handling |
| Codex CLI, Gemini CLI, Cursor, GitHub Copilot | Skill- or command-based paths | Where evaluation occurs and what cannot be intercepted |
| MCP hosts | Scan and integration paths | Component review and the documented limitation on full third-party runtime monitoring |

**CTA**

> Review Integration Docs

（已修改：安装和集成原本分散在第 2、11 个模块，用户需要前后跳着看。现在先安装，再直接判断自己的环境能接到多深；不加入未经证实的 LangChain、AutoGen 或 CrewAI 支持。）

### 模块 3：Why AI Agent Security Matters

**处理方式：** 保留四张风险卡，只优化文案

**布局**

继续使用现有四张风险卡。桌面端 `2 x 2`，移动端单列，不压缩、不合并卡片。

**Section Heading**

> Why AI Agent Security Matters

**Supporting Copy**

> AI agents do more than generate text. They call tools, access data, execute commands, and interact with external services. Each action creates a security decision that text-only controls may not cover.

**Card 1**

> **Agents Can Take Real Actions**  
> Commands, file changes, API calls, and automated workflows can create immediate consequences.

**Card 2**

> **Skills, Plugins, and MCP Servers Add Supply-Chain Risk**  
> Third-party components introduce code, permissions, dependencies, and external services into the agent workflow.

**Card 3**

> **Prompt Injection Can Influence Tool Behavior**  
> Manipulated instructions can change which tools an agent chooses and how those tools are used.

**Card 4**

> **Static Scanning Is Not Enough**  
> Components can be reviewed before use, but high-impact actions still need a decision at runtime.

（保留：原本就是四张卡，结构没有问题；本轮精简一级模块，不改变四卡布局。）

### 模块 4：Runtime Decisions + Workflow

**处理方式：** 合并运行时判断与三步工作流

**布局**

上半部分保留运行时护栏的大型可视化：左侧展示三步决策，右侧展示四类风险信号。下半部分用横向步骤流说明运行前、运行时和运行后的完整位置；移动端改为纵向。

**Section Heading**

> Evaluate High-Risk Agent Actions Before They Execute

**Supporting Copy**

> AgentGuard evaluates documented shell, file, tool, network, secret, sensitive-write, and webhook-exfiltration action categories before execution.

**Decision Flow**

1. **Agent Requests an Action** — A documented integration sends the action for evaluation.
2. **Runtime Guard Evaluates Context** — The configured policy and available risk signals are applied.
3. **The Integration Handles the Decision** — Actual enforcement depth depends on the documented integration mode.

**Risk Signal Cards**

- Unreviewed tool and shell actions
- Secret and credential access
- Sensitive writes and data movement
- Component and supply-chain risk

**Workflow Context**

1. **Review Components Before Trust** — Scan skills, plugins, agents, MCP servers, repositories, packages, or URLs through a documented AgentGuard path.
2. **Evaluate High-Risk Actions at Runtime** — Connect a documented hook, plugin, skill, command, or API path and verify its actual protection depth.
3. **Monitor Changes and Review Evidence** — Use available findings, audit events, public advisories, and OpenClaw patrol signals to support follow-up decisions.

（已修改：原第 5、8 个模块都在解释“AgentGuard 如何进入工作流”，拆开后重复。现在合成一个完整流程，同时删除没有可审核口径的实时数字。）

### 模块 5：Protection Coverage

**处理方式：** 合并三层防护与六个检测器，内容完整保留

**布局**

先用三张能力卡说明 Runtime Guard、Deep Scan 和 OpenClaw Patrol 各自负责什么；下方继续使用六张检测器卡，桌面端 `3 x 2`，移动端单列。两部分属于同一个“保护范围”模块，但视觉上保持清楚分区。

**Section Heading**

> Three Layers of Protection for AI Agents

**Runtime Guard**

> Evaluate documented high-risk action categories before execution.

- Shell commands
- File access
- Tool actions
- Network requests
- Secret access
- Sensitive writes
- Webhook exfiltration
- CTA: **Explore Runtime Guard**

**Deep Scan**

> Review agent-related components for documented security risks before you trust them.

- Skills
- Plugins
- Agents
- MCP servers
- Repositories, packages, and URLs through documented API groups
- CTA: **Explore Deep Scan**

**OpenClaw Environment Patrol**

> Monitor documented security-relevant changes inside an OpenClaw workspace.

- Suspicious skills
- Modified plugins
- New MCP servers
- Drift in trusted files
- CTA: **Explore OpenClaw Patrol**

**Detector Subsection Heading**

> Six Security Detectors. One Scan.

**Detector Cards**

1. **Credential Exposure Detection** — Identify embedded secrets, tokens, private keys, and connection strings.
2. **Prompt Injection Detection** — Review encoded, obfuscated, role-manipulation, and system-prompt extraction patterns.
3. **Malicious Command Detection** — Identify command patterns associated with remote execution and unsafe payload delivery.
4. **Data Exfiltration Detection** — Review suspicious access and transfer paths that may expose sensitive data.
5. **Permission Abuse Analysis** — Compare declared tool needs with risky permission combinations.
6. **URL Analysis** — Review suspicious domains, phishing patterns, shortened links, and lookalike URLs.

（已修改：原第 6、7 个模块都在回答“保护什么”，现在合成一个一级模块。六个检测器仍完整展示，不塞进 Deep Scan 卡片，也不删除；只删除与检测器重复的独立覆盖清单。）

### 模块 6：Product Tour + Real Agent Workflows

**处理方式：** 合并真实产品演示与使用场景

**布局**

上半部分展示 20 至 30 秒真实录屏或逐步终端截图，解释输入、判断和结果；下半部分用三张场景卡说明开发者、组件/MCP、AI CISO 与安全团队分别如何使用这些证据。没有真实录屏时使用带标注的终端步骤，不做虚构动画。

**Section Heading**

> See AgentGuard in Real Agent Workflows

**Product Tour**

1. A documented agent workflow requests an action or component scan.
2. AgentGuard evaluates the available context and configured policy.
3. The interface shows the decision, reason, or finding available in the verified product flow.

**Tour CTA**

> Open the Quickstart

**Use Case 1**

> **Protect High-Impact Coding-Agent Actions**  
> Evaluate documented shell, file, network, secret, write, and tool-action categories before execution through a supported integration path.  
> CTA: **For Developers**

**Use Case 2**

> **Review Skills, Plugins, and MCP Components**  
> Scan documented component types before adding them to a trusted agent workflow.  
> CTA: **Explore MCP Security**

**Use Case 3**

> **Give AI CISOs and Security Teams Verifiable Evidence**  
> Review documented findings, qualified audit events, integration boundaries, and public advisories when evaluating AI CISO responsibilities and wider deployment. These evidence surfaces do not establish AgentGuard as a complete AI CISO platform.  
> CTAs: **Explore AI CISO Evaluation** → `/ai-ciso` · **For Security Teams** → `/solutions/security-teams`

（已修改：原第 9、10 个模块分别讲产品演示和使用场景，关系紧密，合并后可以直接从“产品怎么工作”过渡到“谁怎么用”。`AI CISO` 在 Hero 已首次出现，这里只负责展开角色任务和边界。）

### 模块 7：Threat Intelligence from AgentGuard

**处理方式：** 保留并强化第一方证据

**布局**

保留第一方 Advisory 卡片，将泛行业新闻降级为底部资源链接。卡片展示 Advisory ID、标题、风险类型、发布日期和详情入口；不展示未同步的总数。

**Section Heading**

> First-Party Advisories for AI Agent Threats

**Supporting Copy**

> Review public AgentGuard advisories covering documented threats across agent components, software supply chains, phishing URLs, and prompt-injection payloads.

**Primary CTA**

> Browse All Advisories

**Secondary CTA**

> Explore Threat Intelligence

（保留并修改：公开 Advisory 是可核验的产品证据。删除缺少统一事实口径的“实时推送”“本地自动自检”和未同步总数。）

### 模块 8：Pricing + FAQ + Final CTA

**处理方式：** 合并购买信息、疑问处理和页尾转化

**布局**

先展示五档 Pricing 卡片，再展示 FAQ 手风琴，最后使用全宽双按钮 CTA 收口。三部分视觉上分区，但不再各自占一个一级模块。

**Pricing Heading**

> Start with the Protection Level You Need

**Pricing Review Rule**

当前 Free、Personal、Starter、Pro、Enterprise 的价格、额度、试用期、席位、私有化部署和 SLA 尚未进入产品事实库。

（原型可以保留五卡布局，但所有具体商业数字必须在产品或销售确认后才能进入上线文案。）

**FAQ Questions**

1. **What is AgentGuard?**
2. **How is runtime security different from prompt filtering?**
3. **What actions can Runtime Guard evaluate?**
4. **What components can Deep Scan review?**
5. **What does OpenClaw Environment Patrol monitor?**
6. **Does AgentGuard upload code, prompts, secrets, or file contents?**
7. **Does AgentGuard fully monitor every third-party MCP runtime call?**
8. **Which integrations use hooks versus skills or commands?**

**Final CTA Heading**

> Add a Security Decision to Your Agent Workflow

**Supporting Copy**

> Start with the official Quickstart, or talk to the AgentGuard team about integration depth, data handling, and deployment requirements.

**Primary CTA**

> Open the Quickstart

**Secondary CTA**

> Book a Demo

（已修改：原第 13、14、15 个模块都是页面末端的转化流程，合并后顺序仍是“看价格 → 解疑问 → 做选择”，但减少三个连续的大区块。Pricing 数字继续等待产品或销售确认。）

**原型与 PRD 前仍需确认**

1. Hero 右侧使用哪一段真实产品流程。
2. 六个检测器的名称和公开描述是否仍与当前版本一致。
3. 各集成的实际保护深度和决策处理方式。
4. Pricing 的价格、额度、席位、试用期和 Enterprise 权益。
5. `www.agentguard.one` 与 `agentguard.gopluslabs.io` 的最终 canonical 主域。
6. `/contact`、Quickstart、各 Feature 页和 Solution 页的最终路由。

---

## 02. AI CISO `/ai-ciso`

- **页面目标：** 让正在搜索 AI CISO 的安全负责人先定义监督职责，再用公开证据判断 AgentGuard 能覆盖哪些 AI agent security 控制、哪些治理要求仍然没有证据。
- **主关键词：**`ai ciso`
- **辅助关键词：**`ai ciso platform`、`ai ciso for ai agents`、`ai ciso security`
- **页面状态：** 新增页面
- **现有内容审计：** 当前首页没有独立 AI CISO 模块。首页只证明 Runtime Guard、Deep Scan、OpenClaw Patrol、FAQ 数据边界和 Advisor 入口；这些可作为本页证据，不能组合成“完整治理平台”。

### 模块 1：Hero

**处理方式：** 新增

- **状态：** 新增
- **布局：** 左侧为 H1、两句 supporting copy 和双 CTA；右侧为“Requirement / Documented evidence / Gap”三列表格预览。首屏内直接展示边界句，不放到脚注。
- **最终英文页面内容：**

  - **Eyebrow:**`AI CISO Evaluation`
  - **H1:**`Evaluate AI CISO Requirements for AI Agent Security`
  - **Supporting copy:**`Map AgentGuard's documented runtime checks, component scanning, and public advisories to the responsibilities your team actually needs. AgentGuard is not presented here as a complete AI CISO governance platform.`
  - **Primary CTA:**`Open Quickstart`
  - **Secondary CTA:**`Book a Demo`
  - **Boundary note:**`AI CISO is used on this page as an evaluation lens, not as a verified AgentGuard product category.`
- （修改说明：旧稿只说“评估需求”，但边界不够靠前；现在把“不是完整 AI CISO 治理平台”放进首屏可见文案。）
- **事实/素材待确认：** 产品负责人需确认是否接受 `AI CISO` 作为正式对外获客词；右侧只能做职责与证据矩阵，不能画成现有治理控制台。

### 模块 2：Define the Responsibility Before the Product

**处理方式：** 新增

- **状态：** 新增
- **布局：** 四张横向职责卡；每张卡只有“需要做出的决定”和“需要的证据”，不展示 AgentGuard 已覆盖。
- **最终英文页面内容：**

  - **H2:**`Define the AI CISO Responsibility Before Evaluating a Product`
  - **Supporting copy:**`Write down the decisions, owners, and evidence your operating model requires before mapping any vendor capability.`
  - **Card 1 title:**`Oversight Scope`
  - **Card 1 copy:**`Which agents, tools, components, and environments require security oversight?`
  - **Card 2 title:**`Decision Rights`
  - **Card 2 copy:**`Which actions require review, approval, blocking, or escalation before execution?`
  - **Card 3 title:**`Evidence Duties`
  - **Card 3 copy:**`What audit, retention, reporting, and privacy evidence must be produced?`
  - **Card 4 title:**`Response Ownership`
  - **Card 4 copy:**`Who investigates findings, changes policy, and owns the operational response?`
- （修改说明：把抽象的“定义 AI CISO”改成可用于 PRD 和采购访谈的四组具体问题，避免自行发明 AI CISO 标准。）
- **事实/素材待确认：** 无 AgentGuard 产品事实依赖；如需引用外部 AI CISO 定义，必须另做来源审核，本周原型不需要。

### 模块 3：Documented AgentGuard Surfaces

**处理方式：** 新增

- **状态：** 修改
- **布局：** 三张能力卡，卡内固定显示“Control point / Documented scope / Evidence link”；不加入 OpenClaw Patrol，以免把专用巡检包装成通用治理支柱。
- **最终英文页面内容：**

  - **H2:**`Start with the AgentGuard Surfaces You Can Verify`
  - **Supporting copy:**`Use first-party product evidence to assess specific control points without expanding them into a broader governance claim.`
  - **Card 1 title:**`Runtime Guard`
  - **Card 1 copy:**`Evaluate named shell, file, tool, network, secret, sensitive-write, and webhook-exfiltration action categories before execution.`
  - **Card 1 link:**`Review Runtime Guard`
  - **Card 2 title:**`Deep Scan`
  - **Card 2 copy:**`Review skills, plugins, agents, and MCP servers for documented component risks before trust.`
  - **Card 2 link:**`Review Deep Scan`
  - **Card 3 title:**`Agent Security Advisor`
  - **Card 3 copy:**`Inspect first-party public advisories for documented AI agent threat examples and remediation context.`
  - **Card 3 link:**`Browse Advisories`
- （修改说明：保留旧稿的三项公开证据，但改成“可核验控制点”，不再让三张卡看起来像完整 AI CISO 产品套件。）
- **事实/素材待确认：** 卡片应使用真实 Docs、产品或 Advisor 截图；没有真实界面素材时使用文字和证据链接，不制作虚构 dashboard。

### 模块 4：Responsibility-to-Evidence Matrix

**处理方式：** 新增

- **状态：** 新增
- **布局：** 桌面端五列表格；移动端按职责堆叠。状态只用 `Documented`、`Partially documented`、`Not established`。
- **最终英文页面内容：**

  - **H2:**`Map Responsibilities to Evidence, Not Assumptions`
  - **Supporting copy:**`Separate what first-party sources document from what your team still needs to verify.`
  - **Column labels:**`Responsibility` / `Relevant AgentGuard surface` / `Public evidence` / `Current status` / `Next verification step`
  - **Row 1:**`Pre-execution action review` / `Runtime Guard` / `Named action categories and runtime API groups` / `Documented` / `Test the target integration`
  - **Row 2:**`Component review before trust` / `Deep Scan` / `Named component and risk categories` / `Documented` / `Verify scan depth and output`
  - **Row 3:**`Threat research context` / `Agent Security Advisor` / `Public first-party advisories` / `Documented` / `Confirm update and reuse policy`
  - **Row 4:**`Approval and policy administration` / `API groups only` / `Policy and audit endpoint groups are listed` / `Partially documented` / `Verify the actual workflow`
  - **Row 5:**`Organization-wide governance` / `No verified complete surface` / `No complete public workflow` / `Not established` / `Define the requirement with AgentGuard`
- （修改说明：新增可直接落原型的职责矩阵，把 API 分组与完整审批/治理工作流明确拆开。）
- **事实/素材待确认：** 策略和审计 API 的线上行为未测试；不得把 `Partially documented` 渲染成绿色已完成状态。

### 模块 5：What the Public Evidence Does Not Establish

**处理方式：** 新增

- **状态：** 修改
- **布局：** 全宽边界带，左侧标题，右侧六项缺口清单；视觉权重与能力卡相同，不做弱化脚注。
- **最终英文页面内容：**

  - **H2:**`Do Not Treat Product Controls as a Complete Governance Platform`
  - **Supporting copy:**`The reviewed public materials do not establish complete organization-wide discovery, red-team simulation, approval administration, reporting, retention, or autonomous governance workflows.`
  - **List title:**`Requirements that still need authoritative confirmation`
  - **List items:**`Asset inventory` / `Approval workflow` / `Role-based access` / `Reporting and retention` / `Policy administration` / `Governance ownership`
- （修改说明：将旧稿笼统的“不支持完整 lifecycle”改成买家能逐项核验的六类缺口，并明确禁止“自主治理”暗示。）
- **事实/素材待确认：** 产品、销售或法务只有提供一手证据后，才能把某一项从缺口移入已支持区。

### 模块 6：Evaluation Questions

**处理方式：** 新增

- **状态：** 保留
- **布局：** 两列 checklist；左列 `Your operating model`，右列 `Proof of concept`。可勾选但不提交数据。
- **最终英文页面内容：**

  - **H2:**`Turn AI CISO Requirements into a Proof of Concept`
  - **Supporting copy:**`Use a bounded workflow to test the controls that matter instead of evaluating a broad platform label.`
  - **Checklist title 1:**`Define the requirement`
  - **Checklist items 1:**`Name the agents and tools in scope.` / `List the actions that need a decision.` / `Define evidence, access, privacy, and retention needs.` / `Assign review and response owners.`
  - **Checklist title 2:**`Verify AgentGuard`
  - **Checklist items 2:**`Choose one documented integration.` / `Test one expected allow path and one high-risk path.` / `Inspect the evidence produced.` / `Record unsupported requirements and residual gaps.`
- **事实/素材待确认：** POC 下载或表单功能不在当前范围；原型用静态 checklist。

### 模块 7：Technical Proof and Final CTA

**处理方式：** 新增

- **状态：** 调序
- **布局：** 先放四个证据入口，再放 FAQ accordion，最后是双 CTA 全宽收口。
- **最终英文页面内容：**

  - **H2:**`Verify the Technical Surface`
  - **Supporting copy:**`Review the Quickstart, API Reference, public repository, and Security information before making a platform decision.`
  - **Evidence links:**`Quickstart` / `API Reference` / `GitHub Repository` / `Security`
  - **FAQ question:**`Is AI CISO a formally defined AgentGuard product category?`
  - **FAQ answer:**`No. This page uses AI CISO as an evaluation task. Reviewed public sources position AgentGuard as AI agent security for developers.`
  - **FAQ question:**`Can AgentGuard replace a security leader?`
  - **FAQ answer:**`The public evidence does not support that claim. Evaluate documented controls against the responsibilities your team needs.`
  - **FAQ question:**`What can a buyer verify today?`
  - **FAQ answer:**`Named runtime action categories, component scan targets, integration modes, API endpoint groups, public advisories, and qualified data-boundary statements.`
  - **Final CTA heading:**`Evaluate the Controls, Then Resolve the Gaps`
  - **Final CTA copy:**`Start with the documented technical path or book a scoped discussion for requirements that public evidence does not answer.`
  - **Primary CTA:**`Open Quickstart`
  - **Secondary CTA:**`Book a Demo`
- （修改说明：把证据入口放在 FAQ 和销售 CTA 前，避免 AI CISO 页面先卖“平台”再补边界。）
- **事实/素材待确认：**`/contact` 的真实表单与预约流程需确认；CTA 不写 `Start Free`。

---

## 03. Runtime Guard `/features/runtime-guard`

- **页面目标：** 让开发者和安全工程师准确理解 Runtime Guard 在什么动作执行前做判断、不同集成深度有什么差异，以及上线前必须验证什么。
- **主关键词：**`ai runtime security`
- **辅助关键词：**`ai agent runtime security`、`runtime protection for ai agents`、`ai agent action security`
- **页面状态：** 新增页面
- **现有内容审计：** 首页已有“高风险行动前护栏”“运行时防护”“三步保护”和 Runtime Guard FAQ。具名动作范围可保留；“一个控制平面”“审批时间线”“策略拦截/要求确认”等宽泛表达缺乏完整公开证据，不能原样迁入。

### 模块 1：Hero

**处理方式：** 新增

- **状态：** 修改
- **布局：** 左侧文案与 CTA；右侧为一次动作判断的三段式真实产品流程图占位，不使用虚构 dashboard。
- **最终英文页面内容：**

  - **Eyebrow:**`Runtime Guard`
  - **H1:**`Check High-Risk Agent Actions Before Execution`
  - **Supporting copy:**`Evaluate documented shell, file, tool, network, secret, sensitive-write, and webhook-exfiltration action categories through the integration path available in your environment.`
  - **Primary CTA:**`Open Quickstart`
  - **Secondary CTA:**`Read Docs`
  - **Scope note:**`Coverage and enforcement depth depend on the selected integration.`
- （修改说明：保留首页“执行前检查”的核心价值，删除未证实的统一拦截、审批和控制平面暗示，并把集成差异放进首屏。）
- **事实/素材待确认：** 需要一段真实、已验证的 Runtime Guard terminal 或 API response 素材；没有实录时只画带 `Conceptual flow` 标识的流程图。

### 模块 2：The Runtime Action Surface

**处理方式：** 新增

- **状态：** 修改
- **布局：** 七张紧凑图标卡，按 `System / Data / External` 三组排列；每卡只放动作类别和一个通用例子，不写检测结果。
- **最终英文页面内容：**

  - **H2:**`Review the Runtime Action Surface`
  - **Supporting copy:**`AgentGuard publicly names seven high-risk action categories. Use them to define the actions your integration must observe.`
  - **Card titles:**`Shell Commands` / `File Access` / `Tool Actions` / `Network Requests` / `Secret Access` / `Sensitive Writes` / `Webhook Exfiltration`
  - **Section note:**`Named categories describe the documented surface; they do not establish universal interception or blocking.`
- （修改说明：将首页散落的 shell、secret、MCP tool 等风险句收束为事实库支持的七类动作，不再混入浏览器覆盖或生产事故结果。）
- **事实/素材待确认：** 各类别的具体 allow/block 示例需来自真实测试；原型阶段不写示例结果。

### 模块 3：How a Runtime Decision Works

**处理方式：** 新增

- **状态：** 新增
- **布局：** 横向三步流程；下方放一条 API evidence strip。
- **最终英文页面内容：**

  - **H2:**`Place a Security Decision Before the Action`
  - **Step 1 title:**`Observe a Documented Action`
  - **Step 1 copy:**`The selected hook, plugin, skill, command, or API path exposes an action for evaluation.`
  - **Step 2 title:**`Request a Runtime Decision`
  - **Step 2 copy:**`The documented API surface includes tool-call, file, text, and runtime-decision endpoints.`
  - **Step 3 title:**`Verify the Observed Outcome`
  - **Step 3 copy:**`Test the configured allow, block, or other returned behavior in a controlled workflow before production use.`
  - **Evidence note:**`Public API documentation establishes endpoint groups, not latency, accuracy, or a universal enforcement outcome.`
- （修改说明：旧首页“三步保护”混合安装、云连接、审批和扫描；现在改成 Runtime Guard 自己的可验证决策流程。）
- **事实/素材待确认：** 实时 API 行为、返回字段、错误处理、速率限制和延迟均需实测。

### 模块 4：Integration Modes by Protection Depth

**处理方式：** 新增

- **状态：** 新增
- **布局：** 桌面端分组表，移动端卡片。按模式而不是品牌 Logo 平铺，避免把所有集成写成同等覆盖。
- **最终英文页面内容：**

  - **H2:**`Choose the Integration Mode, Then Verify Its Depth`
  - **Supporting copy:**`First-party materials list different integration patterns across supported environments. Evaluate each workflow separately.`
  - **Group 1 title:**`Tool Hooks`
  - **Group 1 copy:**`Claude Code is documented with pre- and post-tool hooks. Hermes is documented with native tool hooks.`
  - **Group 2 title:**`Plugin Hooks and Patrol`
  - **Group 2 copy:**`OpenClaw is documented with plugin hooks, auto-scanning, and patrol capabilities.`
  - **Group 3 title:**`Skills and Commands`
  - **Group 3 copy:**`Codex CLI, Gemini CLI, Cursor, and GitHub Copilot are listed with skill- or command-based paths.`
  - **Group 4 title:**`MCP Hosts`
  - **Group 4 copy:**`MCP hosts are listed as an entry point, but third-party MCP runtime coverage remains limited and must be verified.`
  - **CTA:**`Review Integration Guidance`
- （修改说明：从首页品牌并列改为按保护深度分组，直接修正“列出即完整支持”的误读。）
- **事实/素材待确认：** 当前版本兼容性、每个产品的具体 hook 行为及可执行结果需产品负责人和实测确认。

### 模块 5：Data and Audit Boundaries

**处理方式：** 新增

- **状态：** 调序
- **布局：** 左右两栏 `Local mode` 与 `Cloud-connected use`，底部单独放 `Verify before deployment`。
- **最终英文页面内容：**

  - **H2:**`Keep the Data Path Visible`
  - **Column 1 title:**`Local Mode`
  - **Column 1 copy:**`Public materials say full code, prompts, secrets, and file contents are not uploaded in local mode.`
  - **Column 2 title:**`Cloud-Connected Use`
  - **Column 2 copy:**`Public materials say sanitized action previews, risk metadata, decisions, policy versions, and audit events may be sent.`
  - **Boundary note:**`Confirm the current data path, policy source, cached-policy behavior, retention, and audit output for the selected integration.`
- （修改说明：把首页 FAQ 的数据说明前移到实施决策区；删除“连接 Cloud 即获得审批和审计工作流”的未证实推论。）
- **事实/素材待确认：** 正式隐私承诺、数据保留、数据驻留、访问权限和 audit event 输出需产品/法务确认。

### 模块 6：Related Component Checks

**处理方式：** 新增

- **状态：** 保留
- **布局：** 两段横向 workflow bridge，左侧 Deep Scan，右侧 Runtime Guard，中间用 `Before trust → During execution` 标明控制点。
- **最终英文页面内容：**

  - **H2:**`Use Component Review and Runtime Checks at Different Control Points`
  - **Left title:**`Before Trust: Deep Scan`
  - **Left copy:**`Review skills, plugins, agents, and MCP servers for documented component risks.`
  - **Right title:**`During Execution: Runtime Guard`
  - **Right copy:**`Evaluate named high-risk actions through the integration path available in the workflow.`
  - **CTA:**`Review Deep Scan`
- **事实/素材待确认：** 无新增事实阻塞；流程图不得暗示两项能力已自动串成完整处置闭环。

### 模块 7：Implementation Checklist, FAQ, and Final CTA

**处理方式：** 新增

- **状态：** 修改
- **布局：** 六项 checklist → 四项 FAQ → 页尾双 CTA。
- **最终英文页面内容：**

  - **H2:**`Validate Runtime Guard in the Exact Workflow You Plan to Use`
  - **Checklist items:**`Name the actions in scope.` / `Confirm the integration mode.` / `Define expected allow and high-risk outcomes.` / `Test online and offline behavior.` / `Inspect the evidence produced.` / `Document calls outside the control path.`
  - **FAQ question:**`Do all integrations provide the same protection depth?`
  - **FAQ answer:**`No. The documented hook, plugin, skill, and command paths are different and must be tested separately.`
  - **FAQ question:**`What happens offline?`
  - **FAQ answer:**`The Quickstart says offline use can rely on cached policy. Verify current behavior for the selected integration.`
  - **FAQ question:**`Are latency or accuracy metrics available?`
  - **FAQ answer:**`No approved public metric is available in the reviewed evidence.`
  - **Final CTA heading:**`Test One Documented Runtime Path`
  - **Primary CTA:**`Open Quickstart`
  - **Secondary CTA:**`Read API Reference`
- （修改说明：把首页泛化的“保护你的智能体”CTA 改成具体实施动作，并增加残余覆盖检查。）
- **事实/素材待确认：** Quickstart 与 `/docs/api` 的最终 URL 和内容状态需上线前复核。

---

## 04. Deep Scan `/features/deep-scan`

- **页面目标：** 让用户知道 Deep Scan 扫什么组件、查哪些已公开风险、如何开始扫描，以及为什么扫描结果不是安全保证。
- **主关键词：**`ai agent component scanning`
- **辅助关键词：**`ai agent scanner`、`ai agent security scanner`、`mcp server scanner`
- **页面状态：** 新增页面
- **现有内容审计：** 首页已有 Deep Scan 卡片、“6 大安全检测器”和 FAQ。skills、plugins、agents、MCP servers 及四类风险可保留；`160+`、`75+`、`112+`、检测器数量、规则数量、风险评分等数字与事实库不一致或未获批准，全部不迁入本页。

### 模块 1：Hero

**处理方式：** 新增

- **状态：** 修改
- **布局：** 左侧 Hero；右侧用真实 scan result 或命令输出占位，旁边显示 `Component / Finding / Review status` 三个字段。
- **最终英文页面内容：**

  - **Eyebrow:**`Deep Scan`
  - **H1:**`Scan AI Agent Components Before You Trust Them`
  - **Supporting copy:**`Review skills, plugins, agents, and MCP servers for documented component risks before they become trusted dependencies.`
  - **Primary CTA:**`Open Quickstart`
  - **Secondary CTA:**`Explore MCP Security`
  - **Boundary note:**`A scan result supports review; it does not guarantee that a component or its future behavior is safe.`
- （修改说明：保留“信任前扫描”，删除首页检测器数量和覆盖规模，首屏直接加入非安全保证边界。）
- **事实/素材待确认：** 需要一张去敏后的真实扫描输出；不能用自制高危结果冒充产品截图。

### 模块 2：Components and Risks in Scope

**处理方式：** 新增

- **状态：** 修改
- **布局：** 左侧四类组件，右侧四类公开风险，中间用多对多连线；移动端改为两组卡片，不承诺每一风险适用于每一组件。
- **最终英文页面内容：**

  - **H2:**`Review the Components Your Agent Workflow Depends On`
  - **Supporting copy:**`The public product surface names four component types and four risk categories for Deep Scan.`
  - **Component titles:**`Skills` / `Plugins` / `Agents` / `MCP Servers`
  - **Risk titles:**`Prompt Injection` / `Malicious Tools` / `Credential Leaks` / `Backdoors`
  - **Section note:**`These documented categories are not a complete detection taxonomy or a coverage guarantee.`
- （修改说明：用事实库的四类组件和四类风险替代当前首页“6 大检测器 + 大量模式数字”，避免数字冲突和虚假完整性。）
- **事实/素材待确认：** 当前扫描深度、语言、文件类型、包生态和各组件适用的具体检测项需确认。

### 模块 3：How to Start a Scan

**处理方式：** 新增

- **状态：** 新增
- **布局：** 三步流程，上方为自助路径，下方为 API evidence strip。
- **最终英文页面内容：**

  - **H2:**`Start with a Documented Scan Path`
  - **Step 1 title:**`Choose the Component`
  - **Step 1 copy:**`Identify the repository, package, MCP server, URL, skill, plugin, or agent you need to review.`
  - **Step 2 title:**`Use Current Documentation`
  - **Step 2 copy:**`Follow the supported CLI, Quickstart, or API path available for that component.`
  - **Step 3 title:**`Inspect and Record the Result`
  - **Step 3 copy:**`Review the finding with component provenance, permissions, dependencies, and configuration in view.`
  - **API note:**`The public API Reference lists repository, package, MCP-server, and URL scan endpoints. Live request and response behavior has not been verified in this audit.`
- （修改说明：旧首页只罗列检测器，没有告诉用户如何开始；新增从对象选择到结果记录的实施路径。）
- **事实/素材待确认：** CLI 和 API 各自支持哪些目标、认证方式、输出格式、错误与限流需实测。

### 模块 4：Read Results with the Right Boundary

**处理方式：** 新增

- **状态：** 新增
- **布局：** 左侧 `What a result can support`，右侧 `What it cannot prove`；边界对比不使用红绿二元安全判断。
- **最终英文页面内容：**

  - **H2:**`Treat Scan Output as Review Evidence`
  - **Positive title:**`Use the result to investigate`
  - **Positive items:**`Component provenance` / `Requested permissions` / `Dependencies and external resources` / `Configuration and material changes`
  - **Boundary title:**`Do not infer`
  - **Boundary items:**`Complete risk coverage` / `Permanent safety after an update` / `Safe runtime behavior` / `A guaranteed detection outcome`
- （修改说明：新增结果解释模块，纠正当前首页“扫描一次即可覆盖全部检测器”的确定性表达。）
- **事实/素材待确认：** 如产品有 severity、confidence 或 remediation 字段，必须以真实输出为准后再加入原型。

### 模块 5：From Component Review to Runtime Checks

**处理方式：** 新增

- **状态：** 保留
- **布局：** 线性控制链：`Before installation → After material change → During execution`。
- **最终英文页面内容：**

  - **H2:**`Use Scanning and Runtime Security at Different Moments`
  - **Stage 1 title:**`Before Trust`
  - **Stage 1 copy:**`Use Deep Scan to review a component before it becomes a dependency.`
  - **Stage 2 title:**`After Material Change`
  - **Stage 2 copy:**`Review the component again when its source, package, permissions, or configuration changes.`
  - **Stage 3 title:**`During Execution`
  - **Stage 3 copy:**`Use Runtime Guard where the selected integration can evaluate documented high-risk actions.`
  - **CTA:**`Explore Runtime Guard`
- **事实/素材待确认：** 产品是否自动触发重新扫描未被证明；页面只能写“review again”，不能写“automatically rescans”。

### 模块 6：FAQ and Final CTA

**处理方式：** 新增

- **状态：** 修改
- **布局：** 四项 FAQ accordion，页尾双 CTA；MCP 路径作为次要动作。
- **最终英文页面内容：**

  - **FAQ question:**`Which components can Deep Scan review?`
  - **FAQ answer:**`The public homepage names skills, plugins, agents, and MCP servers.`
  - **FAQ question:**`Which risks are documented?`
  - **FAQ answer:**`Prompt injection, malicious tools, credential leaks, and backdoors.`
  - **FAQ question:**`Does a clean scan guarantee safety?`
  - **FAQ answer:**`No. Public evidence does not establish complete coverage or a safety guarantee.`
  - **FAQ question:**`Which package ecosystems are supported?`
  - **FAQ answer:**`The reviewed evidence does not define a complete package-ecosystem list.`
  - **Final CTA heading:**`Review a Component Before It Enters the Workflow`
  - **Primary CTA:**`Open Quickstart`
  - **Secondary CTA:**`Explore MCP Security`
- （修改说明：删除首页关于检测器和规则精确数量的 FAQ 表述，改为用户真正需要核验的范围与边界。）
- **事实/素材待确认：** Quickstart 是否存在直接 scan 操作路径需复核；若没有，主 CTA 应改为 `Read Scan API`。

---

## 05. Red-Team `/features/red-team`

- **页面目标：** 让 AI 开发者、AI CISO 和安全团队理解 AgentGuard 如何对已发现的 AI Agent 资产执行受控 dry-run 红队验证，并把 Findings 转化为修复与复测闭环。
- **主关键词：**`ai red teaming`
- **辅助关键词：**`ai red teaming tools`
- **页面状态：** 替换原 OpenClaw Patrol 页面
- **页面结构参考：** F5 AI Red Team 产品页的 Hero、价值、能力、流程、产品证据、FAQ 与最终 CTA 顺序。只借鉴结构；测试对象、能力范围和页面文案均来自 AgentGuard 产品说明。

### 模块 1：Hero + In-Page Navigation

**布局**

左侧展示 H1、说明和双 CTA；右侧展示 AI Agent 被攻击场景、工具调用、控制响应和 Finding 的可视化。Hero 下方使用稳定的页内导航：Overview、Benefits、Capabilities、Workflow、Findings、FAQ。

**H1**

> Red-Team AI Agent Systems Before Deployment

**Supporting Copy**

> Run controlled dry-run attacks against discovered AI assets to validate exploitable behavior across prompts, tools, RAG pipelines, MCP permissions, secrets, and Web3 interactions.

**Primary CTA**

> Start a Red-Team Test

**Secondary CTA**

> Book a Demo

### 模块 2：Why AI Agent Red Teaming Matters

**布局**

使用宽标题和一张 Agent 攻击面示意图。图中展示 Agent、Tools、RAG、MCP、Secrets 和 Web3 的连接关系，不重复使用功能卡片。

**H2**

> Validate What AI Agents Can Access, Decide, and Execute

**Body**

> AI agents can call tools, retrieve private data, inherit permissions, execute actions, and interact with external systems. AI red teaming tests these connected behaviors under adversarial conditions before they become production incidents.

**Detail**

> Effective AI red teaming tools must test more than model output. They must cover the connected systems, permissions, data, and actions that determine what an agent can actually do.

### 模块 3：Benefits

**布局**

使用四项选项卡或分段控制器，切换时更新右侧的攻击路径示意和简短说明。

**H2**

> Find Exploitable Agent Behavior Before Attackers Do

**Discover Exploitable Behavior**

> Test whether manipulated instructions can redirect agent reasoning, tool selection, data access, or downstream actions.

**Validate Security Controls**

> Confirm whether existing policies, permissions, runtime controls, and approval paths contain the simulated attack.

**Turn Findings into Fixes**

> Give each finding a severity, evidence trail, responsible owner, remediation action, and retest status.

**Build Continuous Validation**

> Convert confirmed attack paths, threat intelligence, and new advisories into repeatable red-team scenarios.

### 模块 4：Core AI Red Teaming Capabilities

**布局**

使用四组不同图标和一张共享的 Agent 系统图，避免四张等宽纯文字卡。

**H2**

> Test the Agent System Across Its Connected Attack Surface

**Prompt and Instruction Attacks**

> Simulate prompt injection and multi-turn manipulation that may change agent decisions or actions.

**Tool and MCP Abuse**

> Test unsafe tool calls, excessive permissions, MCP privilege escalation, and unintended access to connected systems.

**RAG and Sensitive Data Exposure**

> Validate whether retrieved context, private data, credentials, or secrets can be exposed through the agent workflow.

**Web3 Action Risk**

> Test agent-triggered Web3 interactions and contract-related actions in a controlled dry-run environment.

### 模块 5：Red-Team Workflow

**布局**

使用五步横向流程，桌面端从左到右，移动端改为纵向。风险信号插入 Scenario 与 Dry-Run 之间，Findings 插入 Dry-Run 与 Remediation 之间。

**H2**

> Run a Controlled Red-Team Workflow

1. **Discover the Target** — Map the agent asset, connected tools, permissions, data paths, MCP services, and external dependencies.
2. **Build Adversarial Scenarios** — Select the risks and control assumptions that matter to the target system.
3. **Run in Dry-Run Mode** — Exercise the scenario without allowing the simulated attack to create uncontrolled production impact.
4. **Capture the Finding** — Record the attack path, affected component, evidence, severity, and control response.
5. **Remediate and Retest** — Assign an owner, fix the issue, and run the same scenario again.

### 模块 6：Findings + Product Evidence

**布局**

使用真实产品界面或高保真 Findings 面板。左侧显示 Findings 列表和 Severity，右侧显示 Evidence、Owner、Remediation Status 与 Retest Status。

**H2**

> Move from Attack Evidence to a Verified Fix

**Finding**

> A concise description of the exploitable behavior and affected agent asset.

**Severity**

> A prioritized risk level based on impact, reachability, permissions, and evidence.

**Evidence**

> The prompts, tool calls, data path, decision trace, and control outcome needed to reproduce the finding.

**Owner and Status**

> The responsible owner, remediation state, exception status, and next retest date.

**Retest**

> Run the original attack scenario again to verify that the remediation contains the risk.

### 模块 7：Continuous Validation Loop

**布局**

使用一个低复杂度闭环图：Red-Team Finding → Runtime Defense Policy → Runtime Logs + Threat Intelligence → New Scenario → Focused Retest。

**H2**

> Turn Confirmed Threats into the Next Test Cycle

**Body**

> Feed red-team findings into runtime defense policies, use runtime logs and threat intelligence to create new scenarios, and trigger focused retests when a new advisory or relevant system change appears.

### 模块 8：FAQ + Final CTA

**布局**

FAQ 使用折叠项；下方使用全宽双按钮 CTA 收口。

**H2**

> Frequently Asked Questions

**Q: What does AgentGuard test during AI red teaming?**

> AgentGuard tests the connected behavior described for the target system, including prompt injection, tool abuse, RAG leakage, MCP privilege escalation, secret exposure, and Web3 action risk.

**Q: Does the red-team test execute destructive production actions?**

> The page describes a controlled dry-run workflow. The exact isolation, simulation boundary, and supported environments must be confirmed before publication.

**Q: How are findings used after a test?**

> Each finding carries severity, evidence, an owner, remediation status, and a retest path so teams can verify closure.

**Final CTA Heading**

> Test Your AI Agent Before Attackers Do

**Supporting Copy**

> Start with a discovered agent asset, validate the attack paths that matter, and turn every confirmed finding into a fix and retest.

**Primary CTA**

> Start a Red-Team Test

**Secondary CTA**

> Book a Demo

**上线前待确认**

1. Dry-run 的隔离方式、不会执行真实破坏动作的技术边界和支持环境。
2. Web3 合约风险的测试范围、支持链和可公开示例。
3. Findings 的实际字段、Severity 分级、责任人和复测状态。
4. Red-Team 是否支持自动化、人工主导或两种模式，以及各自的交付形式。
5. 可用于 Hero 和 Findings 模块的真实产品界面或录屏。

## 06. Govern /features/govern

- **主关键词：** `ai agent observability`
- **辅助关键词：** `ai agent monitoring`
- **页面状态：** 替换原 Threat Intelligence 页面
- **页面目标：** 让安全负责人通过统一控制面查看 Agent 资产、运行活动、风险信号、策略版本、审批和审计证据，并将高风险活动纳入 deny-first 治理流程。

### 模块 1：Hero + Unified Control Plane

- **布局：** 左侧为 H1、说明与双 CTA；右侧展示统一控制面，必须同时出现 Agent inventory、Risk state、Policy version 与 Approval queue。
- **H1:** `See and Govern Every Security Decision Across Your AI Agents`
- **Supporting Copy:** `Monitor agent activity, risk signals, policy decisions, approvals, and audit evidence from one control plane built for AI agent governance.`
- **Primary CTA:** `Explore the Control Plane`
- **Secondary CTA:** `Book a Demo`
- **In-Page Navigation:** `Overview · Observe · Monitor · Policies · Approvals · Audit · FAQ`

### 模块 2：Why AI Agent Observability Matters + Unified Risk Overview

- **布局：** 左侧大标题与说明，右侧使用 Agent inventory 和决策状态列表，不使用通用卡片网格。
- **H2:** `Turn Agent Activity into Security Decisions`
- **Body:** `AI agents operate across prompts, tools, data, permissions, and external systems. Security teams need a connected record of what the agent requested, which risks were detected, how policy responded, and who approved the outcome.`
- **Detail:** `AI agent monitoring provides the activity record. AgentGuard connects that record to policy, approval, audit, and remediation workflows.`
- **Agent Inventory:** `Review registered agents, owners, environments, connected tools, and current risk state.`
- **Risk Overview:** `Prioritize blocked actions, pending approvals, unresolved findings, and policy exceptions.`
- **Decision Status:** `Distinguish allowed, denied, escalated, approved, and unresolved activity at a glance.`

### 模块 3：Observe Agent Activity End to End

- **布局：** 纵向事件时间线，风险信号和策略判断位于请求与结果之间。
- **H2:** `Follow Each Request from Agent Action to Final Outcome`

1. **Agent Request** — `The agent requests a tool, data, file, network, or other high-impact action.`
2. **Runtime Evaluation** — `Runtime Guard evaluates the request against available context, policy, and threat signals.`
3. **Decision Handling** — `The decision is allowed, denied, or routed for approval.`
4. **Audit Record** — `The final outcome, owner, reason, and evidence are recorded in the audit timeline.`

### 模块 4：What to Monitor

- **布局：** 使用横向信号板，将身份、动作、风险和治理状态放在同一事件上下文中。
- **H2:** `Keep the Signals That Change a Security Decision in View`
- **Agent and Environment:** `Agent identity, owner, environment, integration path, and connected systems.`
- **Requested Action:** `Tool, command, file, data, network destination, permission, and affected asset.`
- **Risk and Decision:** `Detected signals, policy result, severity, reason, and enforcement outcome.`
- **Governance State:** `Approval status, exception, remediation owner, policy version, and verification state.`

### 模块 5：Policy Distribution and Versions

- **布局：** 左侧为策略版本轨道，右侧为环境分发状态。
- **H2:** `Distribute One Policy Model with Traceable Versions`
- **Body:** `Create and distribute policy changes from the control plane, show which version each environment uses, and retain the change history needed to explain a decision.`
- **Detail:** `Each policy update should expose its owner, scope, version, deployment state, and effective time.`

### 模块 6：Approval Workflow

- **布局：** 左侧待审批队列，右侧显示当前请求的上下文和 Allow / Deny 操作。
- **H2:** `Route High-Risk Requests to the Right Decision Owner`
- **Request:** `A policy identifies an action that requires human review.`
- **Context:** `The reviewer sees the agent, action, risk signals, affected resource, and policy reason.`
- **Decision:** `Approve, deny, or grant a bounded exception with an owner and expiry.`
- **Record:** `Store the reviewer, reason, timestamp, and resulting action in the audit timeline.`

### 模块 7：Audit Timeline + Threat Intelligence

- **布局：** 左侧为时间线，右侧为与当前事件相关的威胁情报，不单独做 Threat Intelligence 产品页。
- **H2:** `Investigate Decisions with the Evidence in Sequence`
- **Audit Timeline:** `Review agent requests, risk signals, policy versions, approval events, final outcomes, and follow-up actions in chronological order.`
- **Threat Intelligence:** `Add relevant threat context to the event and use confirmed threats to inform policy updates and focused investigations.`

### 模块 8：Deny-First Governance Loop

- **布局：** 使用闭环路径表示持续治理，不使用通用步骤表格。
- **H2:** `Default High-Risk Activity to a Verifiable Decision`

1. `Observe agent activity and capture the requested action.`
2. `Investigate risk signals, context, and affected systems.`
3. `Approve a bounded request or deny the action.`
4. `Update policy when the decision reveals a reusable rule.`
5. `Verify the new policy against later activity and audit evidence.`

### 模块 9：FAQ + Final CTA

- **H2:** `Frequently Asked Questions`
- **Q:** `What does AgentGuard monitor?`

  - **A:** `The Govern page covers agent inventory, action requests, risk signals, policy decisions, approvals, audit evidence, and relevant threat context available through the connected AgentGuard workflow.`
- **Q:** `How does deny-first governance work?`

  - **A:** `High-risk activity is denied or held for an explicit decision when policy and context do not support automatic execution. The exact enforcement path depends on the connected integration.`
- **Q:** `Can teams track policy versions?`

  - **A:** `The Govern concept includes policy ownership, scope, version, distribution state, effective time, and the policy version used for each recorded decision.`
- **Final CTA Heading:** `Bring Agent Decisions Under One Governance Workflow`
- **Supporting Copy:** `Connect agent activity, policy, approvals, audit evidence, and threat context in one control plane.`
- **Primary CTA:** `Explore the Control Plane`
- **Secondary CTA:** `Book a Demo`

## 07. For Developers `/solutions/developers`

- **页面目标：** 给使用 coding agents 的开发者一条从安装、组件审核、运行时检查到验证数据边界的实施路径，而不是重复 Feature 页。
- **主关键词：**`coding agent security`
- **辅助关键词：**`ai coding agent security`、`secure coding agents`、`developer ai agent security`
- **页面状态：** 新增页面
- **现有内容审计：** 首页已有安装命令、三层能力、三步工作流和集成 FAQ，但缺少开发者场景中的失败点、按接入深度选模式和可执行 checklist。本页不复制 Feature 机制细节，只把控制放入开发工作流。

### 模块 1：Hero

**处理方式：** 新增

- **状态：** 修改
- **布局：** 左侧 Hero；右侧展示 `Install → Review components → Evaluate actions` 的开发工作流，附一个真实安装命令入口。
- **最终英文页面内容：**

  - **Eyebrow:**`For Developers`
  - **H1:**`Secure Coding Agents Without Hiding the Workflow`
  - **Supporting copy:**`Start with documented installation paths, review agent components before trust, and evaluate named high-risk actions through the integration available in your development environment.`
  - **Primary CTA:**`Open Quickstart`
  - **Secondary CTA:**`Explore Runtime Guard`
- （修改说明：继承首页自助安装入口，但把“全面保护”改成三个开发者可执行步骤，并保留集成差异。）
- **事实/素材待确认：** Hero 命令必须来自当前 Quickstart；不在页面硬编码过期安装 host。

### 模块 2：Where Coding-Agent Workflows Fail

**处理方式：** 新增

- **状态：** 新增
- **布局：** 按开发流程排四个 failure point：`Add a component / Read or write data / Call a tool / Reach an external system`。
- **最终英文页面内容：**

  - **H2:**`Find the Control Point Before the Agent Acts`
  - **Supporting copy:**`Coding-agent risk can enter through a trusted dependency or through an action the agent attempts during a session.`
  - **Card 1 title:**`Unreviewed Components`
  - **Card 1 copy:**`Skills, plugins, agents, and MCP servers can introduce prompt injection, malicious tools, credential leaks, or backdoors.`
  - **Card 2 title:**`Sensitive File and Secret Access`
  - **Card 2 copy:**`Agent workflows may reach files, credentials, tokens, or other sensitive values.`
  - **Card 3 title:**`High-Impact Tool Actions`
  - **Card 3 copy:**`Shell, tool, and sensitive-write actions can change the development or production environment.`
  - **Card 4 title:**`Network and Webhook Activity`
  - **Card 4 copy:**`Network requests and webhook exfiltration are named runtime action categories that require an observable control path.`
- （修改说明：把首页泛风险教育改为 coding-agent 工作流中的四个具体失效点，不编造客户事故。）
- **事实/素材待确认：** 不需要新增产品事实；具体事故或代码示例若加入，必须有授权来源。

### 模块 3：A Developer Security Workflow

**处理方式：** 新增

- **状态：** 调序
- **布局：** 三步横向 workflow，每步包含任务、AgentGuard surface 和下一步链接。
- **最终英文页面内容：**

  - **H2:**`Add Security at Three Practical Moments`
  - **Step 1 title:**`Install Through a Documented Path`
  - **Step 1 copy:**`Use the current Windows, Unix, or npm path described in first-party materials.`
  - **Step 2 title:**`Review Components Before Use`
  - **Step 2 copy:**`Use Deep Scan for documented component and risk categories. Treat the result as review evidence.`
  - **Step 3 title:**`Evaluate High-Risk Actions`
  - **Step 3 copy:**`Use Runtime Guard where a hook, plugin, skill, command, or API path exposes the action for evaluation.`
  - **Step CTAs:**`Open Quickstart` / `Review Deep Scan` / `Review Runtime Guard`
- （修改说明：保留首页三步形式，但改成开发者实际旅程；删除“连接 Cloud 即获得审批和会话时间线”的未证实内容。）
- **事实/素材待确认：** npm latest、CLI 当前版本与各安装方式的维护状态需确认。

### 模块 4：Choose the Right Integration Mode

**处理方式：** 新增

- **状态：** 新增
- **布局：** 按接入模式分组的选择器，不使用 Logo 墙；选择后显示 `Documented mode` 和 `Verify`。
- **最终英文页面内容：**

  - **H2:**`Match the Integration Mode to Your Workflow`
  - **Supporting copy:**`First-party materials list Claude Code, OpenClaw, Hermes, Codex CLI, Gemini CLI, Cursor, GitHub Copilot, and MCP hosts, but they do not all use the same protection path.`
  - **Option 1 title:**`Hooks`
  - **Option 1 copy:**`Review documented pre/post-tool or native tool-hook paths for the target environment.`
  - **Option 2 title:**`Plugin`
  - **Option 2 copy:**`Use the documented OpenClaw plugin path and verify its current behavior.`
  - **Option 3 title:**`Skill or Command`
  - **Option 3 copy:**`Confirm what the selected skill- or command-based integration can observe and enforce.`
  - **Option 4 title:**`API or MCP Host`
  - **Option 4 copy:**`Verify the request path and keep third-party MCP runtime limitations visible.`
  - **CTA:**`Review Current Integration Guidance`
- （修改说明：补齐首页缺少的“集成深度选择器”，把品牌支持改成模式与验证任务。）
- **事实/素材待确认：** 当前版本兼容矩阵和各环境保护深度需要产品验证。

### 模块 5：CLI, API, and Data Boundaries

**处理方式：** 新增

- **状态：** 修改
- **布局：** 三列工具区：`CLI / API / Data path`；每列附第一方证据入口。
- **最终英文页面内容：**

  - **H2:**`Keep the Implementation Surface Inspectable`
  - **Column 1 title:**`CLI`
  - **Column 1 copy:**`The public repository documents npm installation and commands including hook, scan, trust, status, and config.`
  - **Column 2 title:**`API`
  - **Column 2 copy:**`The API Reference lists runtime analysis, runtime decision, repository scan, package scan, MCP-server scan, and URL scan endpoints.`
  - **Column 3 title:**`Data Path`
  - **Column 3 copy:**`Public materials distinguish local handling from cloud-connected sanitized metadata, decisions, policy versions, and audit events.`
  - **Boundary note:**`Verify current authentication, request behavior, data handling, and output before production integration.`
- （修改说明：将安装、API 和数据边界放在一个开发者核验区，避免它们散落在首页安装区与 FAQ。）
- **事实/素材待确认：** API 线上行为未测试；`AGENTGUARD_API_KEY` 的当前必需范围和 Cloud feature 定义需复核。

### 模块 6：Developer Implementation Checklist

**处理方式：** 新增

- **状态：** 保留
- **布局：** 可复制的六步 checklist；右侧放 `Evidence to save` 小栏。
- **最终英文页面内容：**

  - **H2:**`Run a Controlled Developer Evaluation`
  - **Checklist items:**`Install from the current Quickstart.` / `Confirm the integration mode.` / `Scan the components in scope.` / `Test one expected allow path and one high-risk path.` / `Inspect the resulting evidence.` / `Document residual gaps and ownership.`
  - **Evidence title:**`Keep for review`
  - **Evidence items:**`Version and configuration` / `Test input` / `Observed decision` / `Data sent` / `Actions outside the control path`
- **事实/素材待确认：** 无新增产品事实；若做可下载 checklist，需另行确定数据收集与隐私规则。

### 模块 7：FAQ and Final CTA

**处理方式：** 新增

- **状态：** 修改
- **布局：** 四项 FAQ → 自助主 CTA → Runtime Guard 次 CTA。
- **最终英文页面内容：**

  - **FAQ question:**`Do all listed integrations provide the same depth?`
  - **FAQ answer:**`No. The documented modes differ across hooks, plugins, skills, commands, APIs, and MCP hosts.`
  - **FAQ question:**`Is an API key required for basic local protection?`
  - **FAQ answer:**`The public repository says an API key is optional for cloud features. Verify the current setup for the workflow you plan to use.`
  - **FAQ question:**`Which API surfaces are documented?`
  - **FAQ answer:**`Runtime analysis, runtime decision, repository scan, package scan, MCP-server scan, and URL scan endpoints are listed.`
  - **FAQ question:**`Can every third-party MCP runtime call be monitored?`
  - **FAQ answer:**`No. The public FAQ states that current limitation.`
  - **Final CTA heading:**`Secure One Real Coding-Agent Workflow`
  - **Primary CTA:**`Open Quickstart`
  - **Secondary CTA:**`Explore Runtime Guard`
- （修改说明：FAQ 从品牌支持列表改成实施差异、认证与 MCP 残余缺口。）
- **事实/素材待确认：** CTA 的自助路径需验证到最终可执行步骤，不要停在无操作入口的文档首页。

---

## 08. For Security Teams `/solutions/security-teams`

- **页面目标：** 帮安全团队把组件、运行时、MCP 和数据风险映射到已有公开控制与证据，并把 RBAC、审批、报告、保留、认证等缺口留在评估清单里。
- **主关键词：**`ai agent security for security teams`
- **辅助关键词：**`ai security controls for agents`、`ai agent risk management for security teams`、`ai agent security operations`
- **页面状态：** 新增页面
- **现有内容审计：** 首页有产品能力、数据边界、Advisor 与“控制平面/审批/审计时间线”文案。前四类公开证据可用于本页；完整 SOC dashboard、审批与治理工作流没有事实支持，必须从肯定性内容中删除。

### 模块 1：Hero

**处理方式：** 新增

- **状态：** 修改
- **布局：** 左侧 Hero；右侧是 `Risk / Documented control / Evidence / Gap` 四列矩阵预览。
- **最终英文页面内容：**

  - **Eyebrow:**`For Security Teams`
  - **H1:**`Evaluate AI Agent Controls with Clear Boundaries`
  - **Supporting copy:**`Review documented component checks, pre-execution action evaluation, data handling, and first-party advisories before deciding how AgentGuard fits your security program.`
  - **Primary CTA:**`Book a Demo`
  - **Secondary CTA:**`Review Security`
  - **Boundary note:**`The reviewed evidence does not establish a complete security-operations platform.`
- （修改说明：保留“证据与边界”定位，首屏删除完整控制平面暗示，并明确这不是现成 SOC 平台。）
- **事实/素材待确认：** Hero 不使用 dashboard mockup；真实 security console 或 audit view 未确认前只展示评估矩阵。

### 模块 2：Security-Team Failure Modes

**处理方式：** 新增

- **状态：** 新增
- **布局：** 四张风险卡，卡底固定显示 `Control point to evaluate`。
- **最终英文页面内容：**

  - **H2:**`Separate the Failure Modes Before Choosing a Control`
  - **Card 1 title:**`Untrusted Components`
  - **Card 1 copy:**`Skills, plugins, agents, and MCP servers can introduce documented component risks.`
  - **Card 1 control:**`Evaluate Deep Scan`
  - **Card 2 title:**`High-Impact Runtime Actions`
  - **Card 2 copy:**`Shell, file, tool, network, secret, sensitive-write, and webhook actions require an observable decision point.`
  - **Card 2 control:**`Evaluate Runtime Guard`
  - **Card 3 title:**`MCP Coverage Gaps`
  - **Card 3 copy:**`Third-party MCP server runtime calls may remain outside complete monitoring or blocking coverage.`
  - **Card 3 control:**`Evaluate the host and integration path`
  - **Card 4 title:**`Unclear Data Handling`
  - **Card 4 copy:**`Local and cloud-connected paths expose different privacy, metadata, and audit questions.`
  - **Card 4 control:**`Verify the data path`
- （修改说明：新增面向安全团队的失败模式，而不是重复三张 Feature 卡。）
- **事实/素材待确认：** 不引用事故、损失或攻击成功率；如加入案例，需有可公开来源。

### 模块 3：Risk-to-Control Map

**处理方式：** 新增

- **状态：** 修改
- **布局：** 矩阵主体；状态列只显示 `Documented surface` 或 `Gap to verify`。
- **最终英文页面内容：**

  - **H2:**`Map Each Risk to a Documented Surface`
  - **Row 1:**`Component provenance and malicious content` / `Deep Scan` / `Named component and risk categories` / `Verify scan depth and output`
  - **Row 2:**`High-risk actions before execution` / `Runtime Guard` / `Named action categories and runtime API groups` / `Verify integration depth and outcome`
  - **Row 3:**`OpenClaw workspace drift` / `OpenClaw Patrol` / `Four documented change types` / `Verify schedule and response path`
  - **Row 4:**`Threat research context` / `Agent Security Advisor` / `Public first-party advisories` / `Verify update and reuse policy`
  - **Row 5:**`Policy and audit operations` / `API groups` / `Endpoint groups are listed` / `Verify the actual workflow`
  - **Boundary note:**`An API group or public page is evidence of a technical surface, not proof of a complete operational workflow.`
- （修改说明：把首页能力并列改成风险—控制—证据—缺口矩阵，直接支持安全评估原型。）
- **事实/素材待确认：** Policy/audit endpoint 的实际功能与权限模型需实测；不画 case management 或 approval queue。

### 模块 4：Review Data and Integration Boundaries

**处理方式：** 新增

- **状态：** 调序
- **布局：** 上半区为集成模式分层，下半区为 local/cloud-connected 数据路径。
- **最终英文页面内容：**

  - **H2:**`Verify What the Integration Can See and What the Data Path Sends`
  - **Integration copy:**`Hooks, plugins, skills, commands, APIs, and MCP hosts represent different control paths. Confirm whether the chosen path can observe the actions in scope.`
  - **Local copy:**`Public materials say local mode does not upload full code, prompts, secrets, or file contents.`
  - **Cloud copy:**`Cloud-connected use may send sanitized action previews, risk metadata, decisions, policy versions, and audit events.`
  - **Checklist:**`Observation depth` / `Data sent` / `Policy source` / `Offline behavior` / `Retention` / `Access`
- （修改说明：将首页 FAQ 的数据说明与集成深度放在同一安全评估模块，避免只看“本地优先”标签。）
- **事实/素材待确认：** 保留、访问、驻留、subprocessors 与审计导出仍需产品/法务确认。

### 模块 5：Evidence Available Today

**处理方式：** 新增

- **状态：** 新增
- **布局：** 五个证据入口，不用客户 Logo 或认证 Logo。
- **最终英文页面内容：**

  - **H2:**`Use First-Party Evidence to Design the Evaluation`
  - **Evidence 1:**`Homepage — documented product scope and qualified FAQ statements`
  - **Evidence 2:**`Quickstart — installation and integration modes`
  - **Evidence 3:**`API Reference — documented endpoint groups`
  - **Evidence 4:**`GitHub Repository — package, CLI, and source evidence`
  - **Evidence 5:**`Agent Security Advisor — public first-party threat examples`
  - **CTA:**`Open the Evidence Set`
- （修改说明：新增真实证据入口，替代无来源的信任数字、客户 Logo 或认证占位。）
- **事实/素材待确认：** Security 页面与 Privacy Policy 的最终内容和 URL 需发布前核验。

### 模块 6：Enterprise Controls Still to Verify

**处理方式：** 新增

- **状态：** 修改
- **布局：** 全宽 `Evaluation gaps` 区，八项问题卡；与企业页互链，但不展开采购细节。
- **最终英文页面内容：**

  - **H2:**`Keep Operational and Enterprise Gaps Visible`
  - **Supporting copy:**`The reviewed public evidence does not establish a complete implementation for the following requirements.`
  - **Gap items:**`Role-based access` / `Approval workflows` / `Reporting` / `Retention` / `Audit export` / `Certifications` / `Security-operations integration` / `Support commitments`
  - **CTA:**`Review the Enterprise Evaluation Path`
- （修改说明：保留旧稿缺口，但从脚注提升为采购前必看模块；本页只说明安全运营缺口，详细采购问题交给 Enterprise 页。）
- **事实/素材待确认：** 每项需由产品、销售、安全或法务给出证据，不得用 roadmap 回答现状问题。

### 模块 7：Security Evaluation Checklist, FAQ, and Final CTA

**处理方式：** 新增

- **状态：** 保留
- **布局：** checklist → 三项 FAQ → 双 CTA。
- **最终英文页面内容：**

  - **H2:**`Define a Bounded Security Evaluation`
  - **Checklist items:**`List the agents, components, tools, actions, and data in scope.` / `Map each risk to a documented control.` / `Define expected allow and high-risk outcomes.` / `Specify required evidence and access.` / `Record unsupported workflows.` / `Assign owners for residual gaps.`
  - **FAQ question:**`Is a complete RBAC or approval workflow publicly documented?`
  - **FAQ answer:**`No. The reviewed public evidence does not establish a complete workflow.`
  - **FAQ question:**`Are policy and audit API groups documented?`
  - **FAQ answer:**`Yes, but live behavior and the surrounding operational workflow were not verified in this audit.`
  - **FAQ question:**`Which certifications are available?`
  - **FAQ answer:**`No certification claim is approved in the current product fact base.`
  - **Final CTA heading:**`Review the Evidence Against Your Environment`
  - **Primary CTA:**`Book a Demo`
  - **Secondary CTA:**`Review Security`
- **事实/素材待确认：**`/contact` 的 demo 流程和 `/security` 内容需确认；CTA 不承诺 `Security Assessment` 服务。

---

## 09. For Enterprise `/solutions/enterprise`

- **页面目标：** 给企业技术、安全、隐私和采购相关方一条证据驱动的售前路径：先核对已有产品面，再明确部署、数据、合规、支持与合同缺口。
- **主关键词：**`enterprise ai agent security`
- **辅助关键词：**`enterprise agent security`、`ai agent security for business`、`enterprise ai security platform`
- **页面状态：** 新增页面
- **现有内容审计：** 首页有产品能力、Pricing、数据 FAQ 及“高级治理/合规运营”套餐措辞，但事实库没有确认企业部署、IAM、认证、SLA、支持或合同能力。企业页只能使用公开产品面和有限数据说明作为评估起点，不能复用首页未确认的套餐承诺。

### 模块 1：Hero

**处理方式：** 新增

- **状态：** 修改
- **布局：** 左侧 Hero 与双 CTA；右侧为企业评估 checklist 预览，分 `Documented` 和 `Needs confirmation`。
- **最终英文页面内容：**

  - **Eyebrow:**`For Enterprise`
  - **H1:**`Evaluate AgentGuard for Enterprise AI Agent Security`
  - **Supporting copy:**`Start with documented controls, integration modes, and qualified data boundaries, then verify deployment, access, compliance, support, and service requirements.`
  - **Primary CTA:**`Book a Demo`
  - **Secondary CTA:**`Review Security`
  - **Boundary note:**`This is an evidence-led evaluation path, not a complete enterprise capability claim.`
- （修改说明：保留售前评估定位，删除首页“生产级高级治理”“合规运营自定义控制”等未确认套餐文案。）
- **事实/素材待确认：** 不能使用企业客户 Logo、认证徽章或部署架构图，除非客户提供已批准证据。

### 模块 2：Documented Product Surfaces

**处理方式：** 新增

- **状态：** 修改
- **布局：** 六项证据地图，按 `Control / Integration / Research` 三组排列，不包装成生命周期平台。
- **最终英文页面内容：**

  - **H2:**`Start with the Product Surfaces Documented Today`
  - **Control items:**`Runtime Guard for named high-risk actions` / `Deep Scan for documented component risks` / `OpenClaw Patrol for named workspace changes`
  - **Integration items:**`Quickstart integration modes` / `Runtime and scan API groups`
  - **Research item:**`Public Agent Security Advisor`
  - **Section note:**`These surfaces form the current evidence base. They do not establish complete enterprise governance or lifecycle coverage.`
- （修改说明：将首页三层能力、API 和 Advisor 合并为“证据地图”，但不使用 Discover/Defend/Govern 生命周期包装。）
- **事实/素材待确认：** OpenClaw Patrol 只适用于 OpenClaw，不得在企业图中泛化。

### 模块 3：Enterprise Risk and Control Map

**处理方式：** 新增

- **状态：** 新增
- **布局：** 四行风险映射；每行必须带 `Residual question`。
- **最终英文页面内容：**

  - **H2:**`Map Product Controls to a Real Enterprise Workflow`
  - **Row 1:**`Component risk` / `Deep Scan` / `Which repositories, packages, skills, plugins, agents, and MCP servers are actually supported?`
  - **Row 2:**`High-risk actions` / `Runtime Guard` / `Which integrations can observe and enforce the actions in scope?`
  - **Row 3:**`OpenClaw workspace drift` / `OpenClaw Patrol` / `How are findings delivered, reviewed, and escalated?`
  - **Row 4:**`Threat context` / `Public Advisor and cloud-backed context` / `How are sources, updates, and product decisions governed?`
- （修改说明：新增残余问题列，防止“有产品模块”被误读为“企业要求已满足”。）
- **事实/素材待确认：** 每行答案需通过 POC 或权威产品资料确认。

### 模块 4：Deployment and Integration Questions

**处理方式：** 新增

- **状态：** 修改
- **布局：** 先展示环境 inventory，再展示 integration depth；不用现成拓扑图。
- **最终英文页面内容：**

  - **H2:**`Verify the Deployment and Integration Path`
  - **Supporting copy:**`Identify the exact agents, IDEs, MCP hosts, repositories, and environments in scope before discussing scale.`
  - **Checklist items:**`Supported topology` / `Integration mode` / `Protection depth` / `Identity and access model` / `Change and upgrade process` / `Production support`
  - **Section note:**`First-party materials list different hook, plugin, skill, and command paths. Evaluate each target workflow separately.`
- （修改说明：把“支持多个环境”改成部署问卷；不假设私有化、SaaS、混合部署或统一 IAM。）
- **事实/素材待确认：** 部署拓扑、账号体系、SSO/RBAC、版本升级和生产支持未确认。

### 模块 5：Data, Privacy, and Audit Questions

**处理方式：** 新增

- **状态：** 修改
- **布局：** 顶部为已公开的 local/cloud 两栏，底部为正式审查清单。
- **最终英文页面内容：**

  - **H2:**`Separate Qualified Public Statements from Contractual Requirements`
  - **Documented title:**`Qualified public statements`
  - **Documented copy:**`Public materials distinguish local handling from cloud-connected use and describe limited categories of sanitized metadata, decisions, policy versions, and audit events.`
  - **Confirm title:**`Confirm before procurement`
  - **Confirm items:**`Retention` / `Access` / `Audit export` / `Data residency` / `Subprocessors` / `Privacy terms` / `Incident handling` / `Contractual commitments`
- （修改说明：保留首页和 Quickstart 的有限数据边界，但明确它们不能替代正式隐私和合同审查。）
- **事实/素材待确认：** Privacy Policy、DPA、retention、residency、subprocessors 和 audit export 需法务/产品确认。

### 模块 6：Support and Service Readiness

**处理方式：** 新增

- **状态：** 新增
- **布局：** 采购 readiness checklist，不展示套餐卡和价格。
- **最终英文页面内容：**

  - **H2:**`Confirm Service Readiness Before Treating the Product as Enterprise-Ready`
  - **Supporting copy:**`The reviewed evidence does not establish the following service and assurance commitments.`
  - **Checklist items:**`Support tiers` / `Escalation path` / `Response targets` / `Service-level commitments` / `Private deployment` / `Security certifications` / `Commercial terms` / `Contract ownership`
  - **CTA:**`Discuss Enterprise Requirements`
- （修改说明：新增服务 readiness 模块，直接替代当前首页未确认的 Enterprise/Compliance 套餐承诺。）
- **事实/素材待确认：** Pricing、support、SLA、certification、private deployment 和合同条款全部阻塞。

### 模块 7：Enterprise Evaluation Path, FAQ, and Final CTA

**处理方式：** 新增

- **状态：** 保留
- **布局：** 三步评估路径 → 四项 FAQ → 双 CTA。
- **最终英文页面内容：**

  - **H2:**`Run an Evidence-Led Enterprise Evaluation`
  - **Step 1 title:**`Review`
  - **Step 1 copy:**`Inspect Security, Docs, API Reference, GitHub, and public advisories.`
  - **Step 2 title:**`Test`
  - **Step 2 copy:**`Run a proof of concept around one real agent workflow and record the observed control depth and data path.`
  - **Step 3 title:**`Resolve`
  - **Step 3 copy:**`Use a scoped discussion to resolve deployment, privacy, compliance, support, and commercial requirements.`
  - **FAQ question:**`Which enterprise deployment topologies are supported?`
  - **FAQ answer:**`The reviewed public evidence does not define a complete deployment matrix.`
  - **FAQ question:**`Are IAM, retention, and audit export documented?`
  - **FAQ answer:**`These requirements need authoritative confirmation.`
  - **FAQ question:**`Are support and SLA terms public?`
  - **FAQ answer:**`No approved support or SLA commitment is available in the current evidence set.`
  - **FAQ question:**`Is AgentGuard a complete enterprise oversight platform?`
  - **FAQ answer:**`The reviewed public evidence does not support that claim.`
  - **Final CTA heading:**`Evaluate One Enterprise Workflow with Clear Boundaries`
  - **Primary CTA:**`Book a Demo`
  - **Secondary CTA:**`Review Security`
- **事实/素材待确认：** Contact 路由、POC 交付方式、销售响应和 Security 页内容需确认。

---

## 10. MCP & Agent Security `/solutions/mcp-security`

- **页面目标：** 让开发者和安全团队理解 MCP 风险从哪里进入、AgentGuard 能公开证明哪些扫描与信任控制，以及为什么不能声称完整监控或拦截全部第三方 MCP runtime calls。
- **主关键词：**`mcp security`
- **辅助关键词：**`mcp server security`、`model context protocol security`、`secure mcp servers`
- **页面状态：** 新增页面
- **现有内容审计：** 首页已有 MCP server 扫描、MCP host 集成和 FAQ 限制。限制句“不能完整监控或拦截所有第三方 MCP runtime calls”必须保留并前置；首页关于 reputation、trust registry 和 hook-layer controls 的数据来源与逻辑未公开，只能写成有条件的评估面。

### 模块 1：Hero

**处理方式：** 新增

- **状态：** 修改
- **布局：** 左侧 Hero；右侧为 MCP 路径图 `Server → Host → Agent → Action`，在 Host/Runtime 之间显著标注 coverage boundary。
- **最终英文页面内容：**

  - **Eyebrow:**`MCP & Agent Security`
  - **H1:**`Secure MCP Components with Explicit Runtime Boundaries`
  - **Supporting copy:**`Review MCP servers before trust, inspect documented trust and hook-layer controls, and keep third-party runtime calls outside complete coverage visible.`
  - **Primary CTA:**`Explore Deep Scan`
  - **Secondary CTA:**`Book a Demo`
  - **Boundary note:**`AgentGuard's public FAQ says it cannot fully monitor or block all third-party MCP server runtime calls.`
- （修改说明：保留旧稿 H1 方向，但把最重要的 runtime 限制直接放进首屏，不藏在 FAQ。）
- **事实/素材待确认：** 路径图只能标“可能的控制点”，不能画成所有 MCP traffic 都经过 AgentGuard。

### 模块 2：Where MCP Risk Enters

**处理方式：** 新增

- **状态：** 新增
- **布局：** 沿 MCP 数据流展示四个风险入口，而不是复用 Feature 能力卡。
- **最终英文页面内容：**

  - **H2:**`Review MCP Risk Across the Component and Runtime Path`
  - **Stage 1 title:**`Server as a Trusted Component`
  - **Stage 1 copy:**`A server, package, or tool implementation can introduce malicious or vulnerable behavior.`
  - **Stage 2 title:**`Tool Descriptions and Returned Content`
  - **Stage 2 copy:**`An agent may receive instructions or context that influences later decisions.`
  - **Stage 3 title:**`Host Permissions`
  - **Stage 3 copy:**`The MCP host determines which files, credentials, networks, and systems a tool can reach.`
  - **Stage 4 title:**`Runtime Tool Calls`
  - **Stage 4 copy:**`Some third-party MCP runtime calls may remain outside the available observation or blocking path.`
- （修改说明：新增协议专属风险路径，避免 MCP Solution 页只是 Deep Scan 和 Runtime Guard 的重复介绍。）
- **事实/素材待确认：** 本模块是风险说明，不声称 AgentGuard 可观察每个阶段；如加入技术细节需引用具体 MCP/产品文档。

### 模块 3：Scan MCP Servers Before Trust

**处理方式：** 新增

- **状态：** 修改
- **布局：** 三步审查卡：`Identify → Scan → Review`，下方放 API evidence。
- **最终英文页面内容：**

  - **H2:**`Review an MCP Server Before It Becomes a Trusted Dependency`
  - **Step 1 title:**`Identify the Server`
  - **Step 1 copy:**`Record its source, package, owner, requested permissions, and update path.`
  - **Step 2 title:**`Use a Documented Scan Surface`
  - **Step 2 copy:**`The public homepage includes MCP servers in Deep Scan coverage, and the API Reference lists an MCP-server scan endpoint.`
  - **Step 3 title:**`Review the Result in Context`
  - **Step 3 copy:**`Inspect findings alongside provenance, configuration, dependencies, permissions, and material changes.`
  - **CTA:**`Review Deep Scan`
- （修改说明：保留 MCP server scan 事实，但加入信任前审查步骤，不把一个 scan endpoint 写成完整 MCP security。）
- **事实/素材待确认：** MCP scan 的输入形式、深度、输出和重新扫描触发方式需实测。

### 模块 4：Trust, Reputation, and Hook-Layer Controls

**处理方式：** 新增

- **状态：** 修改
- **布局：** 三层“可评估信号”卡，每张卡同时显示 `What is documented` 与 `What to verify`。
- **最终英文页面内容：**

  - **H2:**`Evaluate Each MCP Risk-Reduction Layer Separately`
  - **Card 1 title:**`Scans`
  - **Card 1 documented:**`MCP servers are named as Deep Scan targets, and an MCP-server scan endpoint is listed.`
  - **Card 1 verify:**`Scan depth, supported inputs, and output behavior.`
  - **Card 2 title:**`Reputation and Trust Registry`
  - **Card 2 documented:**`The public FAQ names reputation and trust-registry signals as MCP risk-reduction layers.`
  - **Card 2 verify:**`Data sources, freshness, decision logic, and ownership.`
  - **Card 3 title:**`Hook-Layer Controls`
  - **Card 3 documented:**`The public FAQ names hook-layer controls as another layer.`
  - **Card 3 verify:**`Which hosts expose the relevant calls and what outcome the hook can enforce.`
- （修改说明：旧稿把四层控制合在一句里；现在每层都带明确的验证问题，避免 reputation/trust registry 被当成成熟数据库 claim。）
- **事实/素材待确认：** Reputation 与 trust registry 的数据来源、新鲜度、评分/决策逻辑、覆盖范围均未公开。

### 模块 5：Current Runtime Coverage Limitation

**处理方式：** 新增

- **状态：** 调序
- **布局：** 全宽高对比边界带，紧跟控制层之后；桌面与移动端默认展开。
- **最终英文页面内容：**

  - **H2:**`Keep the Third-Party Runtime Gap in the Main Evaluation Path`
  - **Supporting copy:**`AgentGuard's public FAQ says it cannot fully monitor or block all third-party MCP server runtime calls. Coverage depends on the host, integration mode, and whether the relevant action reaches an observable control point.`
  - **Checklist title:**`Verify before relying on runtime coverage`
  - **Checklist items:**`Target MCP host` / `Server and tool path` / `Available hook` / `Actions in scope` / `Observed decision` / `Calls outside the path`
- （修改说明：把原 IA 的限制模块前移到控制说明之后、checklist 之前，确保用户不会先看到“secure MCP”再在页尾才发现缺口。）
- **事实/素材待确认：** 每个 MCP host 的验证覆盖矩阵尚不存在；上线前至少要有一个真实 POC 结果。

### 模块 6：MCP Evaluation Checklist

**处理方式：** 新增

- **状态：** 保留
- **布局：** 两列 checklist：`Component trust` 与 `Runtime path`。
- **最终英文页面内容：**

  - **H2:**`Evaluate the Server, Host, and Runtime Path Together`
  - **Component checklist:**`Verify server provenance and ownership.` / `Review permissions and data access.` / `Scan before use and after material changes.` / `Record dependencies and update behavior.`
  - **Runtime checklist:**`Confirm the host integration mode.` / `Test expected tool-call decisions.` / `Inspect the evidence produced.` / `Document calls outside the control path.`
- **事实/素材待确认：** 无新增事实阻塞；checklist 不代表所有项均可由 AgentGuard 自动完成。

### 模块 7：Verify the Implementation, FAQ, and Final CTA

**处理方式：** 新增

- **状态：** 修改
- **布局：** 受控 POC 三步 → 四项 FAQ → 双 CTA。
- **最终英文页面内容：**

  - **H2:**`Run a Controlled MCP Proof of Concept`
  - **Step 1:**`Use Deep Scan and the API documentation to review the component surface.`
  - **Step 2:**`Use Runtime Guard only where the selected integration can evaluate the relevant action.`
  - **Step 3:**`Record observed decisions and calls that remain outside the control path.`
  - **FAQ question:**`Can AgentGuard scan an MCP server?`
  - **FAQ answer:**`Yes. MCP servers are named as Deep Scan targets, and an MCP-server scan endpoint is documented.`
  - **FAQ question:**`Can AgentGuard monitor or block every third-party MCP runtime call?`
  - **FAQ answer:**`No. The public FAQ explicitly states that current limitation.`
  - **FAQ question:**`How do reputation and trust-registry signals work?`
  - **FAQ answer:**`The reviewed evidence does not establish the complete sources, freshness, or decision logic.`
  - **FAQ question:**`Which MCP hosts have verified coverage?`
  - **FAQ answer:**`First-party materials list MCP hosts as an entry point, but protection depth must be verified for the target host.`
  - **Final CTA heading:**`Verify MCP Coverage in Your Actual Host and Tool Path`
  - **Primary CTA:**`Explore Deep Scan`
  - **Secondary CTA:**`Book a Demo`
- （修改说明：CTA 保留自助扫描与技术讨论两条路径，但不使用“Secure every MCP call”一类全覆盖承诺。）
- **事实/素材待确认：**`/contact` 是否能承接 MCP POC、是否有 MCP 专属 Quickstart 和 host 覆盖表需确认。

---

## 11. Pricing `/pricing`

- 页面状态：新增页面
- 页面目标：承接品牌定价意图，先提供已验证的开源本地评估路径，再让团队和企业买家获取当前商业条款；在商业信息未确认前不展示套餐名、价格、限额、试用、部署或 SLA。
- 主关键词：`agentguard pricing`
- 辅助关键词：`agentguard plans`、`agentguard free plan`、`agentguard enterprise pricing`
- 真实结构参考页面：Promptfoo Pricing（[https://www.promptfoo.dev/pricing/](https://www.promptfoo.dev/pricing/)）用于“版本/部署选择 → 能力比较 → FAQ → 双路径 CTA”；Promptfoo Contact（[https://www.promptfoo.dev/contact/](https://www.promptfoo.dev/contact/)）用于销售路径的短表单前说明。未采用竞品套餐名、价格、客户、Logo 或认证。

### 模块 1：Hero

**处理方式：** 新增

- 布局：左侧 H1、两句 supporting copy 和双 CTA；右侧为两条评估路径的简洁对照，不展示价格数字。
- 页面内容：

  - Eyebrow: `Pricing`
  - H1: `Choose the Right AgentGuard Evaluation Path`
  - Supporting copy: `Start with the MIT-licensed local guard, or contact AgentGuard for current team and enterprise terms. Plan names, prices, usage limits, trials, deployment options, and support terms are published only after commercial approval.`
  - Primary CTA: `Open Quickstart` → `/docs/quickstart`
  - Secondary CTA: `Contact Sales` → `/contact`
  - Path labels: `Local, open-source evaluation` / `Team and enterprise evaluation`
- （当前没有 `/pricing` 独立页；新增首屏先把已验证自助路径和待确认商业路径分开，避免用空价格卡伪装正式套餐。）

### 模块 2：Start with the Verified Local Path

**处理方式：** 新增

- 布局：全宽说明 + 三个要点；下方放安装入口和源码入口，不放“Free plan”徽章。
- 页面内容：

  - H2: `Start with the Verified Local Path`
  - Copy: `AgentGuard’s public repository describes an open-source runtime security layer for AI coding agents under the MIT license. Basic local protection can run without an API key; documented cloud features use an optional API key.`
  - H3: `Install from the official Quickstart`
  - Point: `Use the current Windows or Unix instructions maintained in AgentGuard Docs.`
  - H3: `Review the source`
  - Point: `Inspect the public repository and current license before adopting the local guard.`
  - H3: `Add cloud-connected features when needed`
  - Point: `Configure an API key only for the documented cloud-connected path.`
  - CTA: `Start the Quickstart` → `/docs/quickstart`
- （将“free plan”改成可核验的“open-source local path”；没有证据证明它是一个正式命名的免费套餐。）

### 模块 3：Evaluation Paths

**处理方式：** 新增

- 布局：两列对照表；第一列只填已验证内容，第二列用联系销售承接未公开商业信息。
- 页面内容：

  | Evaluation path | What is confirmed | Best for | Next step |
  |-|-|-|-|
  | `Local, open-source evaluation` | `MIT-licensed local guard; basic local protection without an API key; optional API key for documented cloud features.` | `Developers validating installation and local workflow fit.` | `Open Quickstart` |
  | `Team and enterprise evaluation` | `Current commercial terms require confirmation from AgentGuard.` | `Teams evaluating deployment, access, support, governance, or procurement requirements.` | `Contact Sales` |

  - Supporting note: `Commercial plan names, included capabilities, usage limits, billing terms, trials, deployment options, support coverage, and service commitments must come from the current approved offer.`
- （新增可直接画原型的比较结构，但把所有未验证商业字段集中为一处 owner 输入，不预设套餐层级。）

### 模块 4：Capability Comparison

**处理方式：** 新增

- 布局：可横向滚动的能力矩阵；行标题先固定，套餐列和勾选状态由商业 owner 补齐后上线。
- 页面内容：

  - H2: `Compare the Capabilities That Matter`
  - Intro: `Use the approved commercial offer to compare each path across the same decision criteria. Do not infer inclusion from product documentation alone.`
  - Comparison rows:
  
    - `Local runtime protection`
    - `Cloud-connected policy and threat intelligence`
    - `Component and supply-chain scanning`
    - `Team access and administration`
    - `Policy configuration and approvals`
    - `Audit events and reporting`
    - `Deployment options`
    - `Support coverage`
    - `Usage limits`
    - `Service commitments`
  - Prototype state for unapproved cells: `To be confirmed`
  - Inline CTA: `Ask about current terms` → `/contact`
- （原规划只说“比较维度先列好”；现已给出可落原型的逐行字段，同时不替销售填写权益。）

### 模块 5：Deployment and Support Questions

**处理方式：** 新增

- 布局：四张问答卡，不给确定答案；每张卡提供买家应向销售确认的精确问题。
- 页面内容：

  - H2: `Confirm Deployment and Support Before You Commit`
  - H3: `Deployment`
  - Copy: `Ask which hosted, connected, or customer-managed deployment options are currently offered and what prerequisites apply.`
  - H3: `Data handling`
  - Copy: `Review the documented local and cloud-connected data boundaries, then confirm any contract-specific processing requirements.`
  - H3: `Team operations`
  - Copy: `Confirm whether the current offer includes team access, approvals, policy administration, audit workflows, or reporting.`
  - H3: `Support and service terms`
  - Copy: `Confirm support channels, coverage hours, escalation paths, and any service commitments in the approved agreement.`
  - CTA: `Review Security Boundaries` → `/security`
- （新增买家决策模块；不声称私有化部署、团队席位、支持等级或 SLA 已提供。）

### 模块 6：Pricing Questions

**处理方式：** 新增

- 布局：FAQ accordion；仅回答已有证据的问题，商业答案明确转给当前 offer。
- 页面内容：

  - H2: `Pricing Questions`
  - H3: `Can I evaluate AgentGuard without an API key?`
  - Copy: `Yes. The public AgentGuard repository states that basic local protection can run without an API key. Documented cloud features use an optional API key.`
  - H3: `Is the open-source path a published pricing plan?`
  - Copy: `The public evidence confirms an MIT-licensed local guard. It does not establish an approved commercial plan name, price, usage allowance, or support entitlement.`
  - H3: `Which option is right for a team?`
  - Copy: `Compare your deployment, policy, access, reporting, support, and procurement requirements with AgentGuard’s current approved commercial offer.`
  - H3: `Are enterprise deployment or service commitments included?`
  - Copy: `Confirm current deployment and service terms directly with AgentGuard. This page does not publish unapproved commitments.`
- （FAQ 只回答开源和 API key 的已核验边界；套餐、部署和 SLA 不给推测答案。）

### 模块 7：Start or Request Current Terms

**处理方式：** 新增

- 布局：全宽页尾 band，左右两条不重叠路径。
- 页面内容：

  - H2: `Start Locally or Review Current Commercial Terms`
  - Copy: `Run the verified Quickstart for a hands-on evaluation. If your decision depends on team access, deployment, support, governance, or procurement, send those requirements to AgentGuard.`
  - Primary CTA: `Open Quickstart` → `/docs/quickstart`
  - Secondary CTA: `Contact Sales` → `/contact`
- （新增页尾收口；两个 CTA 分别服务自助实施和商业评估，不做同义按钮。）
- 内部去向：`/docs/quickstart`、`/security`、`/solutions/enterprise`、`/contact`
- 事实来源：`github_agentguard_repo`、`github_agentguard_readme_raw`、`github_agentguard_package_json`、`official_docs_quickstart`
- 发布前待确认：商业 owner 提供并批准当前套餐名、价格、计费周期、用量限制、试用、权益矩阵、部署选项、团队能力、支持条款和任何服务承诺；确认 `/solutions/enterprise` 是否上线及其真实 URL。未补齐前，本页可以进入原型和 PRD，但不能作为完整 Pricing 页发布。

## 12. Security `/security`

- 页面状态：新增页面
- 页面目标：让安全负责人、开发者、隐私审核者和采购者在一个页面定位已记录的产品控制、数据边界、集成限制、证据入口和联系路径；不把产品安全描述写成认证或法律保证。
- 主关键词：`agentguard security`
- 辅助关键词：`agentguard data security`、`agentguard security architecture`、`agentguard security controls`
- 真实结构参考页面：HiddenLayer Security（[https://www.hiddenlayer.com/security](https://www.hiddenlayer.com/security)）用于“目录 → 控制主题 → 风险入口”；Zenity Trust Center（[https://zenity.io/company/trust-center](https://zenity.io/company/trust-center)）仅用于“原则/证据/政策入口分层”。未采用其 SOC 2、ISO、GDPR、HIPAA、客户或生态声明。

### 模块 1：Hero and Security Topic Navigation

**处理方式：** 新增

- 布局：左侧 Hero；右侧为锚点目录，点击跳到 Controls、Data Boundaries、Integration Limits、Evidence、Policies。
- 页面内容：

  - Eyebrow: `Security`
  - H1: `AgentGuard Security and Data Boundaries`
  - Supporting copy: `Review the documented controls AgentGuard applies to agent actions and components, what public sources say about local and connected data handling, and where current integration limits remain.`
  - Primary CTA: `Read the Docs` → `/docs`
  - Secondary CTA: `Contact Security` → `/contact`
  - Topic links: `Product controls` / `Data boundaries` / `Integration limits` / `Security evidence` / `Policies and contact`
- （当前没有 `/security` 独立页；新增可扫描目录，避免把控制、政策和未验证认证混成一个长营销页。）

### 模块 2：Documented Product Controls

**处理方式：** 新增

- 布局：两张主能力卡；每张卡包含“what it evaluates / when it acts / learn more”。
- 页面内容：

  - H2: `Documented Product Controls`
  - Intro: `The following descriptions are limited to capabilities documented on AgentGuard’s public site. They do not establish certification, compliance, or complete coverage.`
  - H3: `Runtime Guard`
  - Copy: `Runtime Guard evaluates security-relevant actions before execution, including shell commands, file access, tool actions, network requests, secret access, sensitive writes, and potential webhook exfiltration.`
  - CTA: `Explore Runtime Guard` → `/features/runtime-guard`
  - H3: `Deep Scan`
  - Copy: `Deep Scan reviews skills, plugins, MCP servers, agents, and related components for documented risks such as prompt injection, malicious tools, credential leaks, and backdoors.`
  - CTA: `Explore Deep Scan` → `/features/deep-scan`
- （新增并限定到公开事实；不把“检查”扩写为保证阻断所有风险。）

### 模块 3：Local and Cloud-Connected Data Handling

**处理方式：** 新增

- 布局：本地模式与云连接模式双列；下方放一条“legal review required”提示。
- 页面内容：

  - H2: `Local and Cloud-Connected Data Handling`
  - H3: `Local mode`
  - Copy: `AgentGuard’s public FAQ states that local mode does not upload full code, prompts, secrets, or file contents.`
  - H3: `Cloud-connected use`
  - Copy: `Public sources state that connected use may send sanitized action previews, risk metadata, decisions, policy versions, redacted metadata, and audit events when needed.`
  - Boundary note: `Exact processing depends on configuration and use. Review the approved Privacy Policy and any applicable agreement before relying on these statements for a legal or procurement decision.`
  - CTA: `Read the Privacy Policy` → `/privacy-policy`
- （将官网 FAQ 与 Quickstart 的两套 qualified wording并排呈现；没有补写数据保留、驻留、加密或子处理者结论。）

### 模块 4：Integration Depth and MCP Limits

**处理方式：** 新增

- 布局：上方集成模式矩阵，下方醒目的 limitation callout。
- 页面内容：

  - H2: `Integration Depth and MCP Limits`
  - Copy: `AgentGuard documents different integration modes across supported agent and IDE environments. Some use pre- and post-tool hooks, some use plugin hooks, and others use skill- or command-based paths. Coverage should not be assumed to be identical.`
  - H3: `A documented limitation`
  - Limitation: `AgentGuard’s public FAQ states that it cannot currently fully monitor or block every third-party MCP server runtime call. MCP server scans, reputation, trust-registry signals, and available hook layers can still support risk decisions within their documented scope.`
  - CTA: `Review MCP Security` → `/solutions/mcp-security`
- （新增明确限制，修正容易被营销文案泛化成“MCP runtime 全覆盖”的风险。）

### 模块 5：Security Evidence and Assurance Materials

**处理方式：** 新增

- 布局：证据目录表，包含 Evidence type、Status、Owner-approved link；未提供项目统一显示 `Not yet published`。
- 页面内容：

  - H2: `Security Evidence and Assurance Materials`
  - Intro: `Use this section only for current, owner-approved evidence. Product documentation is available today; the remaining materials must not appear as badges or claims until verified.`
  - Evidence rows:
  
    - `Product security documentation` — `Available through AgentGuard Docs`
    - `Third-party security assessments` — `Not yet published`
    - `Security certifications` — `Not yet published`
    - `Encryption and key-management details` — `Not yet published`
    - `Data retention and residency information` — `Not yet published`
    - `Subprocessor information` — `Not yet published`
    - `Vulnerability disclosure channel` — `Not yet published`
  - CTA: `Request Available Security Information` → `/contact`
- （原规划只有“待提供清单”；现给出原型字段和统一空状态，但没有擅自生成认证、审计、加密、保留或披露事实。）

### 模块 6：Policies and Security Contact

**处理方式：** 新增

- 布局：三张轻量链接卡，不复制法律正文。
- 页面内容：

  - H2: `Policies and Security Contact`
  - H3: `Privacy Policy`
  - Copy: `Review the Legal-approved policy that governs AgentGuard privacy disclosures.`
  - CTA: `Read Privacy Policy` → `/privacy-policy`
  - H3: `Terms of Service`
  - Copy: `Review the Legal-approved terms that govern use of AgentGuard services.`
  - CTA: `Read Terms` → `/terms`
  - H3: `Security questions`
  - Copy: `Send your environment, control, or procurement questions without including credentials, source code, API keys, or production data.`
  - CTA: `Contact Security` → `/contact`
- （新增政策和联系入口；Privacy/Terms 只做链接，不把法律正文拼进 Security 页。）

### 模块 7：Security Questions

**处理方式：** 新增

- 布局：FAQ accordion。
- 页面内容：

  - H2: `Security Questions`
  - H3: `Does local mode upload full code, prompts, secrets, or file contents?`
  - Copy: `AgentGuard’s public FAQ states that local mode does not upload those full contents. Configuration and connected features still require review against the approved Privacy Policy.`
  - H3: `What may connected use send?`
  - Copy: `Public sources describe sanitized action previews, risk metadata, decisions, policy versions, redacted metadata, and audit events as data that may be sent when needed.`
  - H3: `Can AgentGuard block every third-party MCP runtime call?`
  - Copy: `No. The public FAQ states that complete monitoring or blocking of every third-party MCP server runtime call is not currently supported.`
  - H3: `Which certifications or audit reports are available?`
  - Copy: `Only materials listed in the owner-approved evidence directory should be treated as available. No certification or audit status is asserted by this page structure.`
- （新增可直接发布的边界型 FAQ；认证问题用 evidence directory 回答，不作推测。）

### 模块 8：Review AgentGuard for Your Environment

**处理方式：** 新增

- 布局：全宽页尾 band；主 CTA 面向企业评估，次 CTA 面向技术自助。
- 页面内容：

  - H2: `Review AgentGuard for Your Environment`
  - Copy: `Map your agent hosts, tool actions, components, data boundaries, and residual MCP risks before deciding which controls fit your workflow.`
  - Primary CTA: `Contact Security` → `/contact`
  - Secondary CTA: `Open AgentGuard Docs` → `/docs`
- （新增完整页尾路径，不使用未验证的报告下载、认证徽章或 SLA 作为转化诱因。）
- 内部去向：`/features/runtime-guard`、`/features/deep-scan`、`/solutions/mcp-security`、`/privacy-policy`、`/terms`、`/docs`、`/contact`
- 事实来源：`official_homepage`、`official_docs_quickstart`、`context/product-fact-base.md`
- 发布前待确认：安全/Legal owner 审批本地与云连接数据措辞；提供或明确不存在认证、第三方审计、加密、密钥管理、数据保留、数据驻留、子处理者和漏洞披露材料；确认 `/contact` 中受监控的安全请求路径。任何空状态在没有证据时不得换成认证徽章或“compliant”文案。

## 13. Contact `/contact`

- 页面状态：新增页面
- 页面目标：把销售、企业评估、合作、产品反馈、技术自助和安全披露分流到真实 owner；只收集路由所需信息，不承诺未确认响应时间。
- 主关键词：`contact agentguard`
- 辅助关键词：`agentguard sales`、`agentguard demo request`、`agentguard enterprise contact`
- 真实结构参考页面：Promptfoo Contact（[https://www.promptfoo.dev/contact/](https://www.promptfoo.dev/contact/)）用于“明确联系对象 → 表单 → 低摩擦次入口”；Prompt Security Schedule a Demo（[https://prompt.security/schedule-a-demo](https://prompt.security/schedule-a-demo)）只用于“表单前说明问题范围”。未采用竞品客户、伙伴、认证或响应承诺。

### 模块 1：Hero

**处理方式：** 新增

- 布局：左侧短 Hero；右侧显示“sales / partnership / product / security”四类请求标签，主 CTA 滚动到表单。
- 页面内容：

  - Eyebrow: `Contact`
  - H1: `Talk to the AgentGuard Team`
  - Supporting copy: `Tell us what you are evaluating so your request can reach the right owner. For installation and API questions, start with the public Docs.`
  - Primary CTA: `Submit a Request` → `/contact#request-form`
  - Secondary CTA: `Read the Docs` → `/docs`
- （当前没有 `/contact` 独立页；新增短首屏，避免用大段产品营销遮住联系任务。）

### 模块 2：Choose a Request Type

**处理方式：** 新增

- 布局：四张单选卡；选择后预填表单中的 Request type。
- 页面内容：

  - H2: `Choose a Request Type`
  - H3: `Sales and evaluation`
  - Copy: `Discuss current commercial terms, team requirements, deployment constraints, or a product evaluation.`
  - H3: `Partnership and integration`
  - Copy: `Describe the platform, agent host, MCP environment, or security workflow you want to connect.`
  - H3: `Product feedback`
  - Copy: `Share a reproducible product observation without including credentials or production data.`
  - H3: `Security disclosure`
  - Copy: `Use the approved security disclosure workflow once the monitored channel is confirmed. Do not submit vulnerability details through an unverified general inbox.`
- （新增请求类型分流；不预设“support”或“security disclosure”已有独立服务通道。）

### 模块 3：What to Include

**处理方式：** 新增

- 布局：左侧“Include”清单，右侧“Do not include”警示。
- 页面内容：

  - H2: `Help Us Route Your Request`
  - H3: `Include`
  - Bullets:
  
    - `The agent, IDE, or host environment you are evaluating`
    - `The security or implementation decision you need to make`
    - `Relevant deployment or procurement constraints`
    - `Your target evaluation timeline`
    - `A non-sensitive description of the issue or opportunity`
  - H3: `Do not include`
  - Warning: `Do not submit passwords, API keys, private keys, source code, private prompts, production logs, personal data, or other sensitive information.`
- （新增精确提交边界，降低表单收集不必要敏感数据的风险。）

### 模块 4：Request Form

**处理方式：** 新增

- 布局：单列分组表单；必填字段少于可选字段；底部包含 consent、privacy link、spam protection 和提交按钮。
- 页面内容：

  - H2: `Submit a Request`
  - Required fields:
  
    - `Request type`
    - `Work email`
    - `Full name`
    - `Company or organization`
    - `What are you evaluating?`
  - Optional fields:
  
    - `Role`
    - `Agent, IDE, or host environment`
    - `Target timeline`
    - `Deployment or procurement constraints`
  - Helper text: `Share only the minimum information needed to route your request. Do not include secrets or production data.`
  - Consent label: `[Privacy owner-approved consent text]`
  - Privacy link: `Privacy Policy` → `/privacy-policy`
  - Submit CTA: `Submit Request`
  - Error state: `We could not submit your request. Your information has not been sent. Please try again after the form owner confirms the production workflow.`
  - Success state: `Thanks. Your request has been received and routed by request type.`
- （原规划只列“字段、consent、spam protection”；现补齐可画原型的字段和状态。生产提交、接收 owner、同意文本与成功状态仍是上线阻塞项。）

### 模块 5：Technical Self-Service

**处理方式：** 新增

- 布局：三张资源卡，放在表单之后，避免技术用户必须等待人工回复。
- 页面内容：

  - H2: `Use the Public Technical Resources`
  - H3: `Quickstart`
  - Copy: `Install AgentGuard and complete the documented first-run path.`
  - CTA: `Open Quickstart` → `/docs/quickstart`
  - H3: `API Reference`
  - Copy: `Review the published authentication and endpoint reference before integrating.`
  - CTA: `View API Reference` → `/docs/api`
  - H3: `Documentation`
  - Copy: `Choose the implementation path that matches your environment.`
  - CTA: `Browse Docs` → `/docs`
- （新增真实自助入口；未声称存在尚未验证的支持 SLA、Discord 或工单服务。）

### 模块 6：What Happens Next

**处理方式：** 新增

- 布局：三步横向流程，不展示时长。
- 页面内容：

  - H2: `What Happens Next`
  - Step 1: `Your request is classified by the request type you select.`
  - Step 2: `The minimum information needed for routing is sent to the approved owner.`
  - Step 3: `Any follow-up will use the contact details you provide.`
  - Note: `A response-time commitment will be shown only after AgentGuard confirms the monitored workflow and service expectation.`
- （新增无时长承诺的流程说明；避免虚构“几小时内回复”或企业支持义务。）

### 模块 7：Find the Right Next Step

**处理方式：** 新增

- 布局：页尾双 CTA。
- 页面内容：

  - H2: `Find the Right Next Step`
  - Copy: `Submit a scoped business request, or continue immediately with the public implementation resources.`
  - Primary CTA: `Submit a Request` → `/contact#request-form`
  - Secondary CTA: `Browse AgentGuard Docs` → `/docs`
- （新增从 Hero 到提交/自助的完整收口。）
- 内部去向：`/docs`、`/docs/quickstart`、`/docs/api`、`/pricing`、`/security`、`/about`、`/privacy-policy`
- 事实来源：`official_docs`、`official_docs_quickstart`、`official_docs_api`
- 发布前待确认：表单技术方案、真实接收 owner、各 request type 的路由、必填字段、consent 文本、隐私处理、反垃圾、错误/成功状态、响应预期；确认销售、合作、产品反馈和安全披露是否共享一个流程；若安全披露需独立受监控渠道，必须由安全 owner 提供后再启用。

## 14. About `/about`

- 页面状态：新增页面
- 页面目标：说明 AgentGuard 针对的具体 AI agent 风险、当前公开产品、开源入口及与 GoPlus 的公开关系，再用可核实公司信息和下一步建立可信度。
- 主关键词：`about agentguard`
- 辅助关键词：`agentguard company`、`agentguard goplus portfolio`、`agentguard company information`
- 真实结构参考页面：General Analysis About（[https://generalanalysis.com/about](https://generalanalysis.com/about)）用于“具体问题/使命 → 产品与研究方向 → 下一步”；HiddenLayer About Us（[https://www.hiddenlayer.com/about-us](https://www.hiddenlayer.com/about-us)）仅用于“公司证据区 → 联系/招聘收口”。未采用其团队、客户、研究成果、数字或价值观。

### 模块 1：Hero

**处理方式：** 新增

- 布局：左侧 H1 与双 CTA；右侧为“runtime actions / components / supported environments”三项公开关注面。
- 页面内容：

  - Eyebrow: `About AgentGuard`
  - H1: `Security for AI Agents That Can Act`
  - Supporting copy: `AgentGuard focuses on security decisions around agent actions, components, and developer workflows. GoPlus lists AgentGuard as an AI agent security solution, and the public repository describes an open-source runtime security layer for AI coding agents.`
  - Primary CTA: `Explore AgentGuard` → `/`
  - Secondary CTA: `Read the Docs` → `/docs`
- （当前没有 `/about` 独立页；新增首屏只使用公开定位和 GoPlus 关系，不填公司规模、客户或融资。）

### 模块 2：Why AgentGuard Exists

**处理方式：** 新增

- 布局：全宽叙事 + 五个可执行动作标签。
- 页面内容：

  - H2: `Why AgentGuard Exists`
  - Copy: `AI agents can call tools, access files, execute commands, connect to networks, and depend on skills, plugins, packages, and MCP servers. AgentGuard is focused on making security decisions around those actions and dependencies before they become trusted parts of a workflow.`
  - Action labels: `Tool actions` / `File access` / `Commands` / `Network requests` / `Agent components`
- （新增具体问题陈述，替代宏大市场宣言；标签来自公开能力范围，不代表所有环境完整覆盖。）

### 模块 3：What AgentGuard Publishes Today

**处理方式：** 新增

- 布局：三列产品卡；每张卡只有一项公开能力和一个深入链接。
- 页面内容：

  - H2: `What AgentGuard Publishes Today`
  - H3: `Runtime Guard`
  - Copy: `Evaluate documented high-risk actions before execution and apply the available policy decision path.`
  - CTA: `Explore Runtime Guard` → `/features/runtime-guard`
  - H3: `Deep Scan`
  - Copy: `Review agent components for documented risks including prompt injection, malicious tools, credential leaks, and backdoors.`
  - CTA: `Explore Deep Scan` → `/features/deep-scan`
  - H3: `OpenClaw Environment Patrol`
  - Copy: `Check an OpenClaw workspace for suspicious skills, modified plugins, new MCP servers, and drift in trusted files.`
  - CTA: `Explore OpenClaw Patrol` → `/features/openclaw-patrol`
- （新增当前公开产品清单；没有加入只存在于内部材料、尚无公开页的 Discover、Red-Team 或 Govern 承诺。）

### 模块 4：From Component Review to Runtime Decisions

**处理方式：** 新增

- 布局：三步流程图。
- 页面内容：

  - H2: `From Component Review to Runtime Decisions`
  - Step 1: `Review components before trust` — `Scan relevant skills, plugins, MCP servers, agents, and related dependencies within the documented scope.`
  - Step 2: `Evaluate security-relevant actions` — `Use the available integration path to assess high-risk actions before execution.`
  - Step 3: `Keep the integration boundary visible` — `Different hosts use different integration modes, and complete third-party MCP runtime coverage is not claimed.`
  - CTA: `Review Security Boundaries` → `/security`
- （新增方法顺序，同时公开集成深度和 MCP 限制，防止 About 页把品牌故事写成全覆盖能力承诺。）

### 模块 5：Open-Source Developer Entry Point

**处理方式：** 新增

- 布局：左侧源码与许可证说明，右侧安装命令/Quickstart 入口。
- 页面内容：

  - H2: `Start from the Open-Source Developer Entry Point`
  - Copy: `The public AgentGuard repository describes an open-source runtime security layer for AI coding agents and lists the MIT license. Developers can review the source, install the published package, and follow the current Docs for supported integration paths.`
  - Code: `npm install -g @goplus/agentguard`
  - Primary CTA: `Read the Docs` → `/docs`
  - Secondary CTA: `View the Repository` → `[confirmed public GitHub URL]`
- （新增可核验的开源证据；GitHub URL 需在 PRD 绑定当前官方仓库，不在结构稿中猜地址。）

### 模块 6：AgentGuard and GoPlus

**处理方式：** 新增

- 布局：简短关系说明 + 单一 GoPlus 外链，不做生态 Logo 墙。
- 页面内容：

  - H2: `AgentGuard and GoPlus`
  - Copy: `GoPlus lists AgentGuard in its portfolio as an AI agent security solution. AgentGuard’s public site and documentation also identify GoPlus Security as the related organization.`
  - CTA: `Visit GoPlus` → `https://gopluslabs.io`
- （新增公开关系说明；不扩写 GoPlus 规模、融资、客户、集成或法律控制关系。）

### 模块 7：Company Facts

**处理方式：** 新增

- 布局：公司事实表；未获批字段不显示默认数字，原型使用统一 owner placeholder。
- 页面内容：

  - H2: `Company Facts`
  - Approved-field placeholders:
  
    - `Legal entity: [Company owner-approved value]`
    - `Founded: [Company owner-approved value]`
    - `Headquarters: [Company owner-approved value]`
    - `Leadership: [Company owner-approved names and roles]`
    - `Company contact: [Monitored company contact]`
  - Supporting copy: `Publish only facts supported by an approved first-party source.`
- （当前公开证据不足以填写领导者、地点、成立时间或法律实体；新增明确字段供 PRD 收数，正式上线前不得展示占位值。）

### 模块 8：Explore the Product or Start a Conversation

**处理方式：** 新增

- 布局：页尾双 CTA；产品优先，联系为次。
- 页面内容：

  - H2: `Explore the Product or Start a Conversation`
  - Copy: `Review the documented product and implementation paths, or contact AgentGuard with a scoped evaluation or partnership request.`
  - Primary CTA: `Explore AgentGuard` → `/`
  - Secondary CTA: `Contact AgentGuard` → `/contact`
- （新增品牌了解后的明确下一步，不用招聘链接或全站导航代替 page-level CTA。）
- 内部去向：`/`、`/features/runtime-guard`、`/features/deep-scan`、`/features/openclaw-patrol`、`/security`、`/docs`、`/contact`
- 事实来源：`official_homepage`、`gopluslabs_home`、`github_agentguard_repo`、`github_agentguard_readme_raw`、`github_agentguard_package_json`
- 发布前待确认：公司 owner 提供法律实体、成立日期、总部、领导者、公司联系方式及任何获批招聘/媒体入口；确认 AgentGuard 与 GoPlus 的标准对外关系措辞和官方 GitHub URL。未确认前不展示团队照、履历、客户、融资、规模或生态数字。

## 15. Privacy Policy `/privacy-policy`

- 页面状态：新增页面（已审计现有独立页 `/privacy`；规划 URL `/privacy-policy` 尚不存在）
- 页面目标：把现有 Legal-owned Privacy Policy 迁移到规划路由时保留权威正文、日期、标题和联系信息的原始措辞，并补齐可扫描目录、相关政策入口和规范 URL 迁移要求。
- 主关键词：`agentguard privacy policy`
- 辅助关键词：`agentguard data processing`、`agentguard privacy practices`、`agentguard data privacy`
- 真实结构参考页面：AgentGuard 现有 Privacy Policy（[https://www.agentguard.one/privacy](https://www.agentguard.one/privacy)）及本地渲染证据 `www-agentguard-one-privacy.html`。不采用竞品法律页，也不生成、总结或改写法律条款。

### 模块 1：Hero and Policy Metadata

**处理方式：** 修改

- 布局：保留现有 H1 与 effective/updated metadata 的首屏层级；增加正文锚点 CTA 和外置联系入口。
- 页面内容：

  - Eyebrow: `Legal`
  - H1: `AgentGuard Privacy Policy`
  - Metadata: `[Legal: retain the exact approved Effective Date and Last Updated date from the authoritative policy source.]`
  - Supporting copy: `[Legal: retain or replace with Legal-approved scope copy. Do not summarize the policy in product or marketing language.]`
  - Primary CTA: `Read the Policy` → `/privacy-policy#policy-body`
  - Secondary CTA: `Contact Us` → `/contact`
- （现有 `/privacy` 已有 H1、日期和长篇正文，但规划路由不同；保留信息层级，任何日期、scope 或外围文案迁移都须 Legal 逐字批准。）

### 模块 2：Policy Table of Contents

**处理方式：** 新增

- 布局：桌面左侧 sticky 目录，移动端折叠目录；所有条目使用可抓取的锚点链接。
- 页面内容：

  - H2: `Contents`
  - Navigation rule: `[Legal: generate the table of contents from the exact approved H2 and H3 titles in the authoritative policy body. Preserve numbering, wording, order, and anchor mapping.]`
  - Utility controls: `Expand all` / `Collapse all` / `Back to top`
- （现有页面把 19 个顶级章节连续放在一个长 article 中，缺少清晰目录；新增目录只改善导航，不改写法律标题。）

### 模块 3：Authoritative Policy Body

**处理方式：** 保留

- 布局：单一 article 容器，按 Legal-approved H2/H3 层级渲染；正文不得拆成营销卡片或 FAQ。
- 页面内容：

  - H2 anchor: `policy-body`
  - Content placeholder: `[Legal: insert the complete approved Privacy Policy verbatim. Preserve every heading, paragraph, list, defined term, date, address, email address, and jurisdictional notice from the authoritative source. No generated legal language is permitted.]`
  - Source-control note: `The Legal-approved source controls if navigation or metadata conflicts with the policy body.`
- （保留现有 `/privacy` 的权威正文模块；本结构稿不复制或改写任何条款，只定义原样迁移规则。）

### 模块 4：Privacy Requests and Contact

**处理方式：** 保留

- 布局：保留在法律正文内部的 approved contact section；正文之后再放一个非法律导航区。
- 页面内容：

  - Legal section: `[Legal: retain the exact approved privacy-request and Contact Us wording from the authoritative policy body.]`
  - External navigation label: `Need help finding the right contact path?`
  - External CTA: `Contact AgentGuard` → `/contact`
- （现有政策包含 Contact Us 章节；必须保留原文和受监控渠道，不能用普通 Contact 页替换法律联系义务。）

### 模块 5：Related Policies and Security Information

**处理方式：** 新增

- 布局：法律正文之后的三张链接卡，与 authoritative article 视觉上明确分隔。
- 页面内容：

  - H2: `Related Policies and Security Information`
  - H3: `Security`
  - Copy: `Review documented product controls, data boundaries, and current integration limitations.`
  - CTA: `Review Security` → `/security`
  - H3: `Terms of Service`
  - Copy: `Read the Legal-approved terms that govern use of AgentGuard services.`
  - CTA: `Read Terms` → `/terms`
  - H3: `Contact`
  - Copy: `Use the approved contact path for non-policy questions.`
  - CTA: `Contact AgentGuard` → `/contact`
- （新增正文后的下一步，不把 Security 或 Terms 内容拼进 Privacy Policy，也不改变政策实质。）
- 内部去向：`/security`、`/terms`、`/contact`
- 事实来源：`https://www.agentguard.one/privacy`；`site-audit/full-technical-seo-2026-07-08/raw-artifacts/internal-route-rendered-dom-html/www-agentguard-one-privacy.html`
- 发布前待确认：Legal 指定权威源文件并批准逐字迁移；批准 effective/updated dates、法律实体、联系渠道、页面 title/meta 和 canonical；决定 `/privacy` 到 `/privacy-policy` 的 301、canonical 和站内链接迁移策略；完成迁移前后正文 hash/逐字 diff。任何日期、标题、条款、地址或邮箱不得由产品、SEO 或设计自行修改。

## 16. Terms `/terms`

- 页面状态：新增页面
- 页面目标：为 Legal-approved Terms of Service 提供发布结构、可扫描导航和相关政策入口；在没有权威正文前保持明确阻塞，不生成合同条款。
- 主关键词：`agentguard terms`
- 辅助关键词：`agentguard terms of service`、`agentguard service terms`
- 真实结构参考页面：无竞品参考。当前证据集中未找到 AgentGuard 独立 Terms 页面或权威条款正文；本页只定义 Legal 交付容器。

### 模块 1：Hero and Terms Metadata

**处理方式：** 新增

- 布局：H1、Legal metadata、正文锚点和联系入口。
- 页面内容：

  - Eyebrow: `Legal`
  - H1: `AgentGuard Terms of Service`
  - Metadata: `[Legal: Effective Date]` / `[Legal: Last Updated]`
  - Supporting copy: `[Legal: approved scope and acceptance statement.]`
  - Primary CTA: `Read the Terms` → `/terms#terms-body`
  - Secondary CTA: `Contact Legal` → `/contact`
- （当前没有 `/terms` 页面和权威正文；新增首屏仅定义 Legal 必填字段，不能用 SEO 文案替代。）

### 模块 2：Terms Table of Contents

**处理方式：** 新增

- 布局：桌面 sticky 目录，移动端折叠目录；目录由正文标题自动生成。
- 页面内容：

  - H2: `Contents`
  - Navigation rule: `[Legal: generate anchor links from the exact approved Terms headings. Preserve wording, numbering, order, and hierarchy.]`
- （新增结构导航，不预设 acceptance、billing、warranty、liability、termination、governing law 或 dispute 等条款是否存在。）

### 模块 3：Authoritative Terms Body

**处理方式：** 新增

- 布局：单一 article 容器，使用 Legal-approved H2/H3 层级。
- 页面内容：

  - H2 anchor: `terms-body`
  - Content placeholder: `[Legal: insert the complete approved Terms of Service verbatim. Do not generate, summarize, infer, omit, or reorder any contractual language.]`
  - Source-control note: `The Legal-approved source controls if navigation, metadata, or surrounding page copy conflicts with the Terms body.`
- （新增唯一允许承载合同正文的模块；没有 Legal 文件时整页保持发布阻塞。）

### 模块 4：Related Policies and Contact

**处理方式：** 新增

- 布局：正文后的三张链接卡，与合同正文清楚分隔。
- 页面内容：

  - H2: `Related Policies and Contact`
  - H3: `Privacy Policy`
  - Copy: `Review the Legal-approved policy describing AgentGuard privacy practices.`
  - CTA: `Read Privacy Policy` → `/privacy-policy`
  - H3: `Security`
  - Copy: `Review documented product controls and security boundaries.`
  - CTA: `Review Security` → `/security`
  - H3: `Legal questions`
  - Copy: `Use the approved contact path for questions about the Terms.`
  - CTA: `Contact Legal` → `/contact`
- （新增法律正文之外的下一步；不暗示 Contact 页面本身构成法律通知地址。）
- 内部去向：`/privacy-policy`、`/security`、`/contact`
- 事实来源：无可发布法律正文；仅使用关键词与规划路由作为结构输入。
- 发布前待确认：状态 `blocked`。Legal 必须提供并批准完整正文、法律实体、effective/updated dates、接受流程、适用范围、联系渠道、title/meta 和 canonical；确认是否存在独立 AUP、DPA 或其他相关政策及其真实 URL。上述内容未齐全前不得发布 `/terms` 为可索引正式页面。

## 17. Docs `/docs`

- 页面状态：已有页面
- 页面目标：把当前只有 Hero、Quickstart 卡和 API Reference 卡的入口页升级为任务导向的文档枢纽，让用户从安装、环境选择、验证、能力文档和 API 集成进入明确下一步。
- 主关键词：`agentguard install`
- 辅助关键词：`agentguard docs`、`install agentguard`、`agentguard quickstart`
- 真实结构参考页面：AgentGuard 当前 `/docs` 原始与渲染 HTML；General Analysis Docs Home（[https://docs.generalanalysis.com/](https://docs.generalanalysis.com/)）用于“能力导航 → Quickstart → Help”；Promptfoo Getting Started（[https://www.promptfoo.dev/docs/getting-started/](https://www.promptfoo.dev/docs/getting-started/)）和 Installation（[https://www.promptfoo.dev/docs/installation/](https://www.promptfoo.dev/docs/installation/)）用于“最小开始 → 验证 → 后续路径”。未复制竞品产品能力、客户、代码或支持承诺。

### 模块 1：Hero

**处理方式：** 修改

- 布局：保留当前窄 Hero，但改成任务型 H1；双 CTA 直接指向已存在的 Quickstart 和 API Reference。
- 页面内容：

  - Eyebrow: `Documentation`
  - H1: `Install AgentGuard and Choose Your Integration Path`
  - Supporting copy: `Start with the current Quickstart, then use the integration path and reference material that match your agent environment.`
  - Primary CTA: `Open Quickstart` → `/docs/quickstart`
  - Secondary CTA: `View API Reference` → `/docs/api`
- （当前 H1 仅为 `Documentation`，supporting copy 只说“两条入口”，搜索与实施任务不够明确；改为安装优先，同时保留两条真实入口。）

### 模块 2：Start Here: Quickstart and API Reference

**处理方式：** 保留

- 布局：保留当前两张主卡，补充清晰的读者类型、完成结果和下游内容。
- 页面内容：

  - H2: `Start Here`
  - H3: `Quickstart for Users`
  - Copy: `Install the local AgentGuard, follow the current connection path for your environment, choose a documented policy mode, trigger a test action, and confirm the result in the available workflow.`
  - Best for: `Developers validating a first installation and runtime path.`
  - CTA: `Open Quickstart` → `/docs/quickstart`
  - H3: `API Reference for Developers`
  - Copy: `Review the published authentication, base URL, runtime, scan, report, status, limit, and error sections before integrating against the current API contract.`
  - Best for: `Developers building tools or services on the AgentGuard API.`
  - CTA: `View API Reference` → `/docs/api`

### 模块 3：Choose Your Environment

**处理方式：** 新增

- 布局：按 integration depth 分组的选择器；选择 host 后展示真实文档链接和限制，不用统一“supported”勾选。
- 页面内容：

  - H2: `Choose Your Environment`
  - Intro: `AgentGuard documents different integration modes across environments. Follow the environment-specific instructions and do not assume identical runtime coverage.`
  - H3: `Hook-based paths`
  - Items: `Claude Code` / `OpenClaw` / `Hermes`
  - H3: `Skill- or command-based paths`
  - Items: `Codex CLI` / `Gemini CLI` / `Cursor` / `GitHub Copilot`
  - H3: `MCP hosts`
  - Copy: `Use the documented MCP path together with the published limitation that complete monitoring or blocking of every third-party MCP server runtime call is not currently claimed.`
  - Card CTA pattern: `Open [environment] instructions` → `[confirmed current docs URL]`
- （当前 Docs 首页没有环境分流；新增选择器，但每个链接必须绑定当前真实文档，不能从支持名单推断完整 hook 覆盖。）

### 模块 4：Install and Verify

**处理方式：** 新增

- 布局：三种安装方式 tabs；每个 tab 下方固定显示“verify”和“next step”。
- 页面内容：

  - H2: `Install and Verify`
  - Intro: `Use the current first-party instructions for your operating system or package workflow.`
  - H3: `macOS and Linux`
  - Code: `curl -fsSL https://agentguard.gopluslabs.io/install.sh | bash`
  - H3: `Windows PowerShell`
  - Code: `irm https://agentguard.gopluslabs.io/install.ps1 | iex`
  - H3: `npm`
  - Code: `npm install -g @goplus/agentguard`
  - H3: `Verify the installation`
  - Copy: `Use the verification steps maintained in the current Quickstart. Do not publish copied commands without a version or source check.`
  - CTA: `Open the Current Quickstart` → `/docs/quickstart`
- （当前 Docs 首页没有安装/验证摘要；新增可复制入口，但把验证细节指向 current Quickstart，避免快照命令过期。）

### 模块 5：Browse Documentation by Task

**处理方式：** 新增

- 布局：六张任务卡，优先展示任务而不是产品营销口号。
- 页面内容：

  - H2: `Browse Documentation by Task`
  - H3: `Protect runtime actions`
  - Copy: `Understand the documented action categories, integration path, policy decisions, and current limits.`
  - CTA: `Explore Runtime Guard` → `/features/runtime-guard`
  - H3: `Scan agent components`
  - Copy: `Review the documented scope for skills, plugins, MCP servers, agents, and related components.`
  - CTA: `Explore Deep Scan` → `/features/deep-scan`
  - H3: `Monitor an OpenClaw workspace`
  - Copy: `Review the OpenClaw-specific patrol scope and workflow.`
  - CTA: `Explore OpenClaw Patrol` → `/features/openclaw-patrol`
  - H3: `Configure the current policy path`
  - Copy: `Use only the current first-party configuration reference for available modes and overrides.`
  - CTA: `Open Policy Documentation` → `[confirmed current public docs URL]`
  - H3: `Integrate the API`
  - Copy: `Review authentication, endpoint groups, request and response contracts, and errors.`
  - CTA: `View API Reference` → `/docs/api`
  - H3: `Review security boundaries`
  - Copy: `Understand local and connected data handling, integration depth, and residual MCP limitations.`
  - CTA: `Review Security` → `/security`
- （当前首页只有两张卡，无法按任务找内容；新增任务导航，但未确认的 policy 文档 URL 保留 PRD 绑定项。）

### 模块 6：Troubleshooting and Help

**处理方式：** 新增

- 布局：三步排查清单 + 已确认资源卡；不写响应时长。
- 页面内容：

  - H2: `Troubleshooting and Help`
  - Step 1: `Confirm that you are following the current instructions for your operating system and agent environment.`
  - Step 2: `Verify the installed version, configuration source, and connection mode using the current Quickstart.`
  - Step 3: `Remove secrets, source code, prompts, and production data before sharing a reproducible issue.`
  - H3: `Documentation`
  - CTA: `Return to Quickstart` → `/docs/quickstart`
  - H3: `Public repository`
  - CTA: `View GitHub` → `[confirmed public GitHub URL]`
  - H3: `Contact`
  - CTA: `Contact AgentGuard` → `/contact`
- （新增自助排查路径；当前快照提到 GitHub/Discord 和回复时长，但本结构不保留未确认的渠道与响应承诺。）

### 模块 7：Documentation Questions

**处理方式：** 新增

- 布局：FAQ accordion。
- 页面内容：

  - H2: `Documentation Questions`
  - H3: `Where should I start?`
  - Copy: `Use the Quickstart for a first installation. Use the API Reference when you are integrating a published endpoint contract.`
  - H3: `Do all environments use the same integration mode?`
  - Copy: `No. Public documentation describes different hook-, plugin-, skill-, and command-based paths. Follow the instructions for your environment.`
  - H3: `Is an API key always required?`
  - Copy: `Requirements differ by feature and environment. The public repository describes an optional key for documented cloud features, while the current Quickstart identifies connection requirements for specific environments. Follow the current environment-specific instructions.`
  - H3: `Where are authentication and endpoint details documented?`
  - Copy: `Open the AgentGuard API Reference at /docs/api.`
- （新增 FAQ 并显式处理 README 与 current Quickstart 的 API key 口径差异，不给统一错误答案。）

### 模块 8：Start the Verified Implementation Path

**处理方式：** 新增

- 布局：全宽页尾 band，Quickstart 为主，API Reference 为次。
- 页面内容：

  - H2: `Start the Verified Implementation Path`
  - Copy: `Install AgentGuard with the current Quickstart, or move directly to the API Reference if your task is an integration.`
  - Primary CTA: `Open Quickstart` → `/docs/quickstart`
  - Secondary CTA: `View API Reference` → `/docs/api`
- （当前 Docs 首页在两张卡后结束；新增页尾收口，保持开发者实施动作优先于销售 CTA。）
- 内部去向：`/docs/quickstart`、`/docs/api`、`/features/runtime-guard`、`/features/deep-scan`、`/features/openclaw-patrol`、`/security`、`/contact`
- 事实来源：`official_docs`、`official_docs_quickstart`、`github_agentguard_repo`、`github_agentguard_readme_raw`；`site-audit/full-technical-seo-2026-07-08/raw-artifacts/html-cache/agentguard-gopluslabs-io-docs.html`；`site-audit/full-technical-seo-2026-07-08/raw-artifacts/rendered-dom-html/agentguard-gopluslabs-io-docs.html`；`site-audit/full-technical-seo-2026-07-08/raw-artifacts/internal-route-rendered-dom-html/www-agentguard-one-docs-quickstart.html`
- 发布前待确认：最终 canonical 主域与 install host；英文页面在浏览器渲染后不得自动变成中文 H1/正文；逐一确认环境支持、集成深度、安装命令、验证/卸载步骤、policy 文档 URL、GitHub/支持入口；解决 README 与 current Quickstart 对各环境 API key 要求的口径差异。

## 18. API Reference `/docs/api`

- 页面状态：已有页面
- 页面目标：把当前已存在但语言、canonical、导航语义和合同可信度混杂的 API 页整理为可扫描的英文参考入口；保留当前 endpoint groups，统一 endpoint template，并明确“文档快照不等于 live API 验证”。
- 主关键词：`agentguard api`
- 辅助关键词：`agentguard api reference`、`agentguard runtime api`、`agentguard scan api`
- 真实结构参考页面：AgentGuard 当前 `/docs/api` 渲染 HTML；Lakera API Overview（[https://docs.lakera.ai/api-reference](https://docs.lakera.ai/api-reference)）用于“overview → authentication → requests → environment → responses/errors → developer next step”。未采用竞品 API host、SDK、客户、性能、区域或商业条款。

### 模块 1：Hero and Reference Status

**处理方式：** 修改

- 布局：左侧 H1、范围说明和双 CTA；右侧显示 version/source/status 三行 reference metadata。
- 页面内容：

  - Eyebrow: `API Reference`
  - H1: `AgentGuard API Reference`
  - Supporting copy: `Review the published authentication, base URL, runtime, scan, report, status, limit, and error sections before integrating. Endpoint behavior must match the current owner-approved API contract.`
  - Status note: `Documentation reference only. The audit reviewed the rendered page and did not run live API requests.`
  - Reference metadata:
  
    - `Version: [API owner-approved version]`
    - `Schema: [Validated OpenAPI URL or Not published]`
    - `Last verified: [API owner verification date]`
  - Primary CTA: `Manage API Keys` → `/api-keys`
  - Secondary CTA: `Open Quickstart` → `/docs/quickstart`
- （当前 H1 渲染为中文“集成文档”，sidebar 显示 `v1.0`，但页面 contract 未经 live 验证；改为英文 API 意图并增加明确证据状态。）

### 模块 2：On-Page Reference Navigation

**处理方式：** 修改

- 布局：桌面 sticky sidebar，移动端折叠菜单；所有项目使用带 `href` 的锚点链接。
- 页面内容：

  - Navigation items:
  
    - `Overview`
    - `Authentication`
    - `Base URL and environments`
    - `Runtime protection`
    - `Supply-chain scanning`
    - `Reports and status`
    - `Rate limits`
    - `Errors`
    - `OpenAPI and support`
- （当前 sidebar 使用 buttons，页面语义和可链接性弱；改为可抓取、可复制、支持 deep link 的锚点目录。）

### 模块 3：API Overview

**处理方式：** 新增

- 布局：端点组目录表，先帮助开发者选任务，再进入具体 reference。
- 页面内容：

  - H2: `API Overview`
  - Intro: `Choose the endpoint group that matches your task. Methods and paths below were observed in the current rendered documentation snapshot and must be reconciled with the owner-approved contract before publication.`

  | Group | Documented task | Current snapshot examples | Link |
  |-|-|-|-|
  | `Runtime protection` | `Evaluate actions, retrieve effective policy, ingest redacted events, and review approvals.` | `/api/v1/actions/evaluate`, `/api/v1/policies/effective`, `/api/v1/events/ingest`, `/api/v1/approvals` | `View runtime endpoints` |
  | `Supply-chain scanning` | `Scan submitted content, public URLs, or registries.` | `/api/v1/scan`, `/api/v1/scan-url`, `/api/v1/scan-registry` | `View scan endpoints` |
  | `Reports and status` | `Retrieve a scan report or review the documented service-status response.` | `/api/v1/report/:scanId`, `/api/v1/status` | `View report and status endpoints` |
- （当前页面从 Authentication 直接进入长篇端点正文；新增 endpoint directory，减少开发者扫描成本。表内只报告 HTML 快照，不声明 live 可用。）

### 模块 4：Authentication, Base URL, and Environments

**处理方式：** 调序

- 布局：先 Base URL/env，再 Authentication；代码示例由 API owner 的 contract 生成。
- 页面内容：

  - H2: `Authentication, Base URL, and Environments`
  - H3: `Published base URL`
  - Copy: `The current documentation snapshot lists https://agentguard.gopluslabs.io as the API base URL. Confirm the production host and version path before integrating.`
  - H3: `Authentication`
  - Copy: `The current documentation describes the X-API-Key header and bearer-token authentication. Each endpoint must state its own authentication requirement; do not apply a blanket rule to public status endpoints.`
  - Header examples:
  
    - `X-API-Key: YOUR_API_KEY`
    - `Authorization: Bearer YOUR_API_KEY`
  - Security note: `Store credentials outside source code and never place a real key in documentation examples, URLs, logs, or screenshots.`
  - CTA: `Manage API Keys` → `/api-keys`
- （当前顺序为 Authentication → Base URL，且写“所有 API 请求需要认证”；现改为 host/env 先行，并要求 endpoint-level auth，避免与 status 等例外冲突。）

### 模块 5：Runtime Protection Endpoints

**处理方式：** 修改

- 布局：先 endpoint index，再按统一 template 展开每个 endpoint；不保留营销式性能或阻断保证。
- 页面内容：

  - H2: `Runtime Protection`
  - Scope copy: `Use the published runtime group to evaluate actions, retrieve the effective policy, send redacted audit events, and review approvals within the current contract.`
  - Current snapshot index:
  
    - `POST /api/v1/actions/evaluate` — `Evaluate an action`
    - `GET /api/v1/policies/effective` — `Retrieve the effective policy`
    - `POST /api/v1/events/ingest` — `Ingest a redacted audit event`
    - `GET /api/v1/approvals` — `Review approvals and the available timeline response`
  - Required endpoint template:
  
    - `Purpose and scope`
    - `Authentication`
    - `Method and path`
    - `Headers`
    - `Path, query, and body parameters`
    - `Minimal request example`
    - `Success response schema and example`
    - `Endpoint-specific errors`
    - `Related endpoints`
  - Evidence label: `Observed in the 2026-07-08 rendered documentation snapshot; live behavior not tested.`
- （保留 current runtime group，但用统一 reference template 重组；不声称缓存、阻断、审批或事件行为已通过 live API 验证。）

### 模块 6：Supply-Chain Scan Endpoints

**处理方式：** 修改

- 布局：三个 scan endpoint cards + 一个 report card；每个展开后使用与 runtime 相同的 endpoint template。
- 页面内容：

  - H2: `Supply-Chain Scanning`
  - Current snapshot index:
  
    - `POST /api/v1/scan` — `Submit content for a documented scan workflow`
    - `POST /api/v1/scan-url` — `Submit a supported public URL source`
    - `POST /api/v1/scan-registry` — `Submit a supported registry workflow`
    - `GET /api/v1/report/:scanId` — `Retrieve a documented scan report`
  - Boundary copy: `Supported source types, required fields, response schemas, asynchronous behavior, commercial gating, and result semantics must come from the current owner-approved API contract.`
  - Example rule: `Use sanitized, non-production examples. Do not publish real credentials, private repository URLs, customer code, fixed processing durations, or invented risk results.`
  - Evidence label: `Observed in the 2026-07-08 rendered documentation snapshot; live behavior not tested.`
- （当前页面包含具体套餐门槛、处理时长和拟真扫描结果；现保留 endpoint 结构，删除未验证商业权益、API 性能和可能被当成真实检测结果的 claim。）

### 模块 7：Requests, Responses, Limits, and Errors

**处理方式：** 修改

- 布局：四个可 deep-link 的 reference sections；字段表和示例由单一 schema/contract 生成。
- 页面内容：

  - H2: `Requests, Responses, Limits, and Errors`
  - H3: `Request conventions`
  - Copy: `[API owner: define content types, idempotency behavior where applicable, pagination, timestamps, identifiers, and validation rules.]`
  - H3: `Response conventions`
  - Copy: `[API owner: define success envelopes, asynchronous job states, nullable fields, and schema versioning.]`
  - H3: `Rate limits`
  - Copy: `[API owner: publish current limits, scope, headers, reset behavior, and retry guidance only after contract verification. Do not infer limits from pricing or a UI snapshot.]`
  - H3: `Errors`
  - Copy: `[API owner: publish the canonical error envelope, HTTP status mapping, machine-readable codes, retryability, and remediation guidance.]`
  - Example-state label: `Contract-verified example`
- （保留 current Rate Limits 与 Errors 主题，但不保留快照中的具体数值和统一格式 claim；这些字段必须由 authoritative contract 生成。）

### 模块 8：OpenAPI, Versioning, and Change Policy

**处理方式：** 修改

- 布局：schema 下载卡、version policy 卡、change log/status 卡。
- 页面内容：

  - H2: `OpenAPI, Versioning, and Change Policy`
  - H3: `OpenAPI schema`
  - Copy: `Download the schema only when the linked asset has been validated as current, complete, and aligned with the rendered reference.`
  - CTA: `Download OpenAPI Schema` → `[validated schema URL]`
  - H3: `Versioning`
  - Copy: `[API owner: define the version identifier, compatibility policy, deprecation notice, and migration path.]`
  - H3: `Service status and changes`
  - Copy: `[API owner: provide the monitored status URL and current change-log or release-note path.]`
- （current HTML 链接 `/openapi.yaml` 并显示 `v1.0`，旧审计又记录 OpenAPI JSON 404；现不沿用任何未经复核的 schema/version claim，先要求资产和 contract 对齐。）

### 模块 9：Integrate with the Current Contract

**处理方式：** 修改

- 布局：页尾双 CTA，API key 为主，Quickstart 为次；登录要求写在按钮 helper text。
- 页面内容：

  - H2: `Integrate with the Current Contract`
  - Copy: `Confirm the current host, authentication method, endpoint contract, limits, and errors before connecting production workflows.`
  - Primary CTA: `Manage API Keys` → `/api-keys`
  - Primary helper: `Sign-in required.`
  - Secondary CTA: `Open Quickstart` → `/docs/quickstart`
- （保留 current page 的 API key 收口，移除“几分钟内开始保护”等性能/完成时长承诺，并把 dashboard 从主要 CTA 降为文档内相关入口。）
- 内部去向：`/docs`、`/docs/quickstart`、`/api-keys`、`/features/runtime-guard`、`/features/deep-scan`、`/security`、`/contact`
- 事实来源：`official_docs_api`；`site-audit/full-technical-seo-2026-07-08/raw-artifacts/internal-route-page-signals.json`；`site-audit/full-technical-seo-2026-07-08/raw-artifacts/internal-route-rendered-dom-html/www-agentguard-one-docs-api.html`
- 发布前待确认：API owner 对照 authoritative contract 验证生产 host、版本、每个 method/path、认证例外、参数、request/response schema、异步状态、错误、rate limits、OpenAPI asset、status URL、change policy 和 API key 工作流；解决当前 `/docs/api` canonical 指向 `/docs`、英文 metadata 与中文渲染正文不一致的问题；本轮未发起 live API 调用，因此不得声称 endpoint 可用性、响应时间、吞吐、处理时长或 SLA 已验证。

---

## 19. Guides `/guides`

- **模板：** Educational Content / Guide Hub
- **页面状态：** 新增页面（2026-07-28 线上路由返回 `404`；没有旧页可审）
- **目标词 + 辅助词：**`ai agent security guides`；`ai agent security best practices`、`agent security implementation guides`、`ai agent security tutorials`、`MCP security guides`
- **搜索任务：** 帮读者按风险、实施任务或角色找到可执行的 AI agent security 内容，而不是在 Hub 内解释完整主题。
- **真实结构参考页面：** Zenity Academy（[https://zenity.io/academy](https://zenity.io/academy)，借任务筛选与推荐内容）；General Analysis Claude Code Security Best Practices（[https://generalanalysis.com/guides/anthropic-claude-code-security-best-practices](https://generalanalysis.com/guides/anthropic-claude-code-security-best-practices)，借“威胁模型—控制—检查清单—例外”骨架）；Zenity Glossary（[https://www.zenity.io/glossary/](https://www.zenity.io/glossary/)，只借稳定索引形式，不混用定义页任务）
- **页面目标：** 先把读者分流到真实 Guide，再连接 Docs、角色页或窄产品控制；Hub 不伪造内容库存。

### 模块 1：Hero

**处理方式：** 新增（借鉴 Zenity Academy 的任务分流首屏，不复制其营销导航墙）

- **布局：** 面包屑 + 左侧 H1/说明 + 右侧 1 张置顶 Guide 卡；双 CTA。
- **最终页面内容：**

  - **Breadcrumb:**`Resources / Guides`
  - **H1:**`Practical AI Agent Security Guides`
  - **Supporting Copy:**`Choose a risk, control surface, or implementation task and move from explanation to a verifiable next step.`
  - **Primary CTA:**`Read the AI Agent Security Guide` → `/guides/ai-agent-security`
  - **Secondary CTA:**`Browse AgentGuard Docs` → `/docs`
  - **Featured Card Eyebrow:**`FOUNDATIONAL GUIDE`
  - **Featured Card Title:**`A Practical Guide to AI Agent Security`
  - **Featured Card Description:**`Map component, tool, runtime, data, and MCP risks to controls, verification steps, and explicit residual boundaries.`
  - **Featured Card Metadata:**`Audience: Developers and security teams`；`Format: Framework and checklist`；`Status: Publish with the route`
- **模块目的：** 首屏直接回答“从哪里开始”，不靠虚构的文章数量制造成熟内容库印象。

### 模块 2：Start with the Core Guide

**处理方式：** 新增（借鉴实操 Guide 的“先建立模型，再选控制”顺序）

- **布局：** 左侧导读，右侧 4 步路径。
- **最终页面内容：**

  - **H2:**`Start with the Core Guide`
  - **Body:**`Begin with the AI Agent Security Guide to scope the deployed system before choosing a control. It covers the attack surface, threat-model decisions, component review, high-risk runtime actions, MCP boundaries, verification, and residual risk.`
  - **Steps:**
  
    1. `Map the attack surface`
    2. `Identify unacceptable outcomes`
    3. `Choose component and runtime controls`
    4. `Verify evidence and residual gaps`
  - **CTA:**`Open the Core Guide` → `/guides/ai-agent-security`
- **模块目的：** 给 Hub 一个清晰主入口，并把综合指南与后续专项内容的职责分开。

### 模块 3：Browse by Security Task

**处理方式：** 新增（借鉴 Academy 的主题筛选；只列有真实落点的任务）

- **布局：** 2 × 3 任务卡网格；每张卡固定显示任务、适合谁、下一步和落点类型。
- **最终页面内容：**

  - **H2:**`Browse by Security Task`
  - **Intro:**`Choose the task you need to complete. Product links appear only when the documented control matches that task.`
  - **Card 1 — Runtime Actions**
  
    - `Define which commands, file operations, tool calls, network requests, secret access, and sensitive writes require a decision before execution.`
    - `Next step: Review Runtime Guard` → `/features/runtime-guard`
  - **Card 2 — Components and Supply Chain**
  
    - `Review skills, plugins, packages, agents, and MCP servers before trust and after material changes.`
    - `Next step: Review Deep Scan` → `/features/deep-scan`
  - **Card 3 — MCP Security**
  
    - `Assess servers, tools, permissions, returned content, data paths, and runtime coverage boundaries.`
    - `Next step: Open MCP & Agent Security` → `/solutions/mcp-security`
  - **Card 4 — OpenClaw Workspaces**
  
    - `Review suspicious skills, modified plugins, new MCP servers, and drift in trusted files within the documented OpenClaw scope.`
    - `Next step: Review OpenClaw Patrol` → `/features/openclaw-patrol`
  - **Card 5 — Data Boundaries**
  
    - `Separate local processing, connected metadata, audit evidence, and unresolved privacy commitments.`
    - `Next step: Review Security` → `/security`
  - **Card 6 — Evaluation and Rollout**
  
    - `Turn requirements into test cases, acceptance criteria, evidence, exceptions, and a repeatable review trigger.`
    - `Next step: Review Security-Team Controls` → `/solutions/security-teams`
- **模块目的：** 让用户按真实工作任务分流；不把尚未发布的专项 Guide 伪装成可点击库存。

### 模块 4：Browse by Role

**处理方式：** 新增（借鉴实操内容按角色给行动建议）

- **布局：** 两列角色面板；每列包含“你需要完成什么”和 3 个入口。
- **最终页面内容：**

  - **H2:**`Browse by Role`
  - **Developers**
  
    - `Scope the integration, review components, test high-risk actions, and verify the behavior in the target environment.`
    - `Start: AI Agent Security Guide` → `/guides/ai-agent-security`
    - `Implement: AgentGuard Docs` → `/docs`
    - `Role page: For Developers` → `/solutions/developers`
  - **Security Teams**
  
    - `Define unacceptable outcomes, evidence requirements, data boundaries, exceptions, and operational ownership.`
    - `Start: AI Agent Security Guide` → `/guides/ai-agent-security`
    - `Evaluate: AgentGuard Security` → `/security`
    - `Role page: For Security Teams` → `/solutions/security-teams`
- **模块目的：** 把同一主题转换成不同角色的可执行入口，不重复制造近义页面。

### 模块 5：Published and Maintained Guides

**处理方式：** 新增（修正“Latest”会暗示已有稳定库存的问题）

- **布局：** 单列内容卡列表；卡片字段固定，未上线内容不显示。
- **最终页面内容：**

  - **H2:**`Published and Maintained Guides`
  - **Intro:**`This library lists only reviewed pages with a working route. Every card must show its scope, owner, publication date, and last evidence review.`
  - **Published Card:**
  
    - **Title:**`A Practical Guide to AI Agent Security`
    - **Scope:**`Attack surface, threat model, component review, runtime actions, MCP boundaries, implementation, and residual risk.`
    - **Audience:**`Developers, security engineers, and technical owners`
    - **Publication Date:**`Set at launch`
    - **Evidence Reviewed:**`Set at launch`
    - **CTA:**`Read Guide` → `/guides/ai-agent-security`
  - **Empty-State Copy:**`No additional reviewed guides are published yet. Use AgentGuard Docs for current product implementation details.`
  - **Empty-State CTA:**`Browse Docs` → `/docs`
- **模块目的：** 即使只有一篇 Guide，页面也能诚实运行；不会展示假日期、假更新频率或占位文章。

### 模块 6：Editorial and Evidence Standard

**处理方式：** 新增（借鉴保留样本中的目录、更新信息与相关内容机制）

- **布局：** 4 项标准列表 + 一条产品声明边界提示。
- **最终页面内容：**

  - **H2:**`How AgentGuard Guides Are Built`
  - **Standards:**
  
    - `Scope first: state the system, workflow, and decision in scope.`
    - `Actions next: provide prerequisites, steps, verification, and residual boundaries.`
    - `Sources visible: date external frameworks and first-party product evidence.`
    - `Product claims narrow: link only to a documented AgentGuard surface that matches the control discussed.`
  - **Boundary Note:**`A guide may explain a security control that AgentGuard does not implement. Product support must be established separately with current first-party evidence.`
- **模块目的：** 建立内容可信度契约，防止教育页滑成产品功能罗列。

### 模块 7：FAQ

**处理方式：** 新增（按 Hub 导航任务收口）

- **布局：** 4 个折叠项；FAQ 后接页尾 CTA。
- **最终页面内容：**

  - **H2:**`Frequently Asked Questions`
  - **Q:**`How should I choose a guide?`
  
    - **A:**`Start with the risk or implementation task you need to complete, then choose a page that includes explicit verification and residual boundaries.`
  - **Q:**`Which guides include practical steps?`
  
    - **A:**`Only pages with prerequisites, actions, verification, and a defined scope should be labeled practical.`
  - **Q:**`Where can I find MCP security guidance?`
  
    - **A:**`Use the AI Agent Security Guide and the MCP & Agent Security solution page until a reviewed MCP-specific guide is published.`
  - **Q:**`How are Guides different from Docs?`
  
    - **A:**`Guides explain security tasks and decisions. Docs describe current AgentGuard setup, configuration, and interfaces.`
  - **Closing CTA:**`Start with the AI Agent Security Guide` → `/guides/ai-agent-security`
- **模块目的：** 回答格式选择与库存问题，并把读者送往唯一综合 Guide。
- **内部去向：**`/guides/ai-agent-security`；`/glossary`；`/solutions/developers`；`/solutions/security-teams`；`/solutions/mcp-security`；`/docs`
- **事实来源：** 页面方法不含产品 claim；任务卡中的 AgentGuard 能力边界来自 `official_homepage`，实施入口来自 `official_docs`
- **发布前要补：**

  1. `/guides` 与 `/guides/ai-agent-security` 同时上线并返回成功状态，避免 Hub 首发即断链。
  2. 为 Guide 卡补真实发布日期、证据复核日期和内容负责人。
  3. 若上线时仍只有 1 篇 Guide，保留本页的单卡与空状态，不开启假分类数量或“Latest”承诺。

## 20. AI Agent Security Guide `/guides/ai-agent-security`

- **模板：** Educational Content / Comprehensive Guide
- **页面状态：** 新增页面（2026-07-28 线上路由返回 `404`；没有旧页可审）
- **目标词 + 辅助词：**`ai agent security`；`ai agent security framework`、`secure AI agents`、`AI agent attack surface`、`AI agent runtime security`、`AI agent component security`
- **搜索任务：** 系统理解 AI agent attack surface，并把风险转换成组件审查、运行时控制、数据边界、MCP 边界和验证任务。
- **真实结构参考页面：** General Analysis Claude Code Security Best Practices（[https://generalanalysis.com/guides/anthropic-claude-code-security-best-practices](https://generalanalysis.com/guides/anthropic-claude-code-security-best-practices)，借“威胁模型—控制—角色行动—检查清单—例外”）；General Analysis OWASP Top 10 for Agentic AI（[https://generalanalysis.com/guides/owasp-top-10-agentic-ai](https://generalanalysis.com/guides/owasp-top-10-agentic-ai)，借风险后给团队行动）；HiddenLayer Securing AI Agents Questions（[https://www.hiddenlayer.com/insight/securing-ai-agents-the-questions-that-actually-matter](https://www.hiddenlayer.com/insight/securing-ai-agents-the-questions-that-actually-matter)，借不可接受后果与验证问题）
- **页面目标：** 产出一篇方法先于产品的基础 Guide；产品链接只在相应控制层后窄接入，并保留公开限制。

### 模块 1：Hero

**处理方式：** 新增（借鉴实操 Guide 先说明范围与读者结果）

- **布局：** 面包屑 + H1 + 说明 + 双 CTA + 右侧“本页覆盖”目录。
- **最终页面内容：**

  - **Breadcrumb:**`Resources / Guides / AI Agent Security`
  - **Eyebrow:**`FOUNDATIONAL GUIDE`
  - **H1:**`A Practical Guide to AI Agent Security`
  - **Supporting Copy:**`Map component, tool, runtime, data, and MCP risks to controls, verification steps, and explicit residual boundaries.`
  - **Primary CTA:**`Use the Implementation Checklist` → `#implementation-checklist`
  - **Secondary CTA:**`Open AgentGuard Docs` → `/docs`
  - **In This Guide:**`Attack surface`；`Threat model`；`Component review`；`Runtime actions`；`MCP boundaries`；`Data and evidence`；`Implementation checklist`
- **模块目的：** 先承诺学习结果与文章范围，不在首屏把教育查询强行变成 Demo。

### 模块 2：Define the AI Agent Attack Surface

**处理方式：** 新增（借鉴框架型 Guide 的范围定义）

- **布局：** 定义段 + 6 张攻击面卡。
- **最终页面内容：**

  - **H2:**`Define the AI Agent Attack Surface`
  - **Definition:**`AI agent security covers the deployed system around the model: instructions, tools, files, credentials, network access, external components, permissions, and the actions the agent can take.`
  - **Card — Instructions:**`System instructions, user input, retrieved context, and tool-provided content that can influence decisions.`
  - **Card — Components:**`Skills, plugins, packages, agents, MCP servers, and dependencies that enter the trusted workflow.`
  - **Card — Actions:**`Commands, file operations, tool calls, network requests, secret access, and sensitive writes.`
  - **Card — Data:**`Inputs, files, credentials, generated outputs, metadata, logs, and connected-service data paths.`
  - **Card — Identity and Permission:**`The user, agent, host, tool, and service permissions that determine what an action can reach.`
  - **Card — Evidence:**`Decisions, policy versions, audit events, scan results, exceptions, and follow-up actions.`
- **模块目的：** 直接回答主关键词的范围，避免把“AI agent security”缩成单一模型防护或单个 AgentGuard 功能。

### 模块 3：Build a Threat Model

**处理方式：** 新增（借鉴不可接受后果优先的结构）

- **布局：** 5 列工作表 + 1 个具体示例。
- **最终页面内容：**

  - **H2:**`Build a Threat Model`
  - **Intro:**`Start with the outcome your team cannot accept, then trace the assets, trust boundaries, actions, and evidence connected to it.`
  - **Worksheet Columns:**`Unacceptable outcome`；`Asset and permission`；`Entry path`；`Control point`；`Evidence and residual gap`
  - **Example Row:**
  
    - `Unacceptable outcome: A coding agent sends a secret to an unapproved endpoint.`
    - `Asset and permission: Repository credential available to the agent process.`
    - `Entry path: Tool instruction followed by a network request.`
    - `Control point: Component review, least privilege, and a runtime decision before the request.`
    - `Evidence and residual gap: Decision record, destination, policy version, and any path outside the integration.`
  - **Prompt List:**`What can the agent change?`；`Which components can influence it?`；`Which actions cross a trust boundary?`；`What evidence would prove the control worked?`
- **模块目的：** 把抽象风险转换成工程团队可以填写和验证的决策表。

### 模块 4：Review Components Before Trust

**处理方式：** 新增（借鉴供应链检查清单；产品链接后置）

- **布局：** 左侧 8 项检查，右侧“before / after change”流程。
- **最终页面内容：**

  - **H2:**`Review Components Before Trust`
  - **Body:**`Treat every skill, plugin, package, agent, and MCP server as a component with a source, permissions, dependencies, configuration, update path, and expected behavior.`
  - **Checklist:**`Publisher and source`；`Package or repository integrity`；`Requested permissions`；`Dependencies`；`Tool descriptions and instructions`；`Configuration and endpoints`；`Update history`；`Expected runtime behavior`
  - **Review Triggers:**`Before first trust`；`After a version or configuration change`；`After permission changes`；`After unexpected behavior`
  - **Product Note:**`AgentGuard publicly documents Deep Scan for skills, plugins, MCP servers, and agents, including named risk categories. A scan result does not prove universal safety.`
  - **CTA:**`Review Deep Scan` → `/features/deep-scan`
- **模块目的：** 先给通用审查方法，再用事实库允许的窄能力连接 Deep Scan。

### 模块 5：Evaluate High-Risk Runtime Actions

**处理方式：** 新增（借鉴“按攻击面给建议”，并用动作矩阵落地）

- **布局：** 4 列动作矩阵：动作类别、决策问题、证据、失败边界。
- **最终页面内容：**

  - **H2:**`Evaluate High-Risk Runtime Actions`
  - **Intro:**`Prioritize actions that can change systems, expose data, or extend trust. Decide where a policy check must occur before execution.`
  - **Rows:**
  
    - `Shell commands | Is the command and target allowed in this context? | Command, target, decision, policy version | Commands outside the integration remain a residual path.`
    - `File access and sensitive writes | Is the path, operation, and content class allowed? | Path class, operation, decision | Host and permission coverage must be verified.`
    - `Tool actions | Is the tool trusted and is this invocation expected? | Tool identity, arguments, decision | Similar tool names do not establish equivalent behavior.`
    - `Network requests | Is the destination and payload class approved? | Destination, request class, decision | Unknown or indirect network paths require separate controls.`
    - `Secret access | Does the workflow require this credential? | Credential class, requester, decision | Do not place raw secrets in audit content.`
  - **Product Note:**`AgentGuard publicly documents Runtime Guard for named action categories. Protection depth depends on the integration path.`
  - **CTA:**`Review Runtime Guard` → `/features/runtime-guard`
- **模块目的：** 让读者得到可执行的 runtime control 设计，而不是只看到功能名。

### 模块 6：Plan for MCP Boundaries

**处理方式：** 新增（保留 AgentGuard 已公开的第三方 MCP runtime 限制）

- **布局：** MCP 路径图的文字版步骤 + “Documented / Not established”双栏。
- **最终页面内容：**

  - **H2:**`Plan for MCP Boundaries`
  - **Path:**`Host → MCP server → tool description → permission → request → returned content → downstream action`
  - **Review Questions:**`Who operates the server?`；`Which tools are exposed?`；`What permissions and data can they reach?`；`How can returned content influence the agent?`；`Which calls are observable or blockable?`
  - **Documented AgentGuard Surface:**`MCP server scanning, reputation and trust-related controls, and hook-layer protection are publicly described.`
  - **Boundary:**`AgentGuard's public FAQ says it cannot fully monitor or block all third-party MCP server runtime calls.`
  - **CTA:**`Open MCP & Agent Security` → `/solutions/mcp-security`
- **模块目的：** 把 MCP 拆成具体系统路径，并明确“不完整 runtime 覆盖”而不是暗示全覆盖。

### 模块 7：Define Data and Evidence Boundaries

**处理方式：** 新增（将数据处理与审计证据分开）

- **布局：** 两列：Data Boundary / Evidence Boundary；底部产品事实提示。
- **最终页面内容：**

  - **H2:**`Define Data and Evidence Boundaries`
  - **Data Boundary:**`Document which code, prompts, files, secrets, action previews, metadata, and events remain local or may reach a connected service.`
  - **Evidence Boundary:**`Decide which action, decision, policy version, component result, exception, and review trigger must be retained without recording raw sensitive content.`
  - **Questions:**`What leaves the environment?`；`What is redacted?`；`What is cached offline?`；`Who can inspect the evidence?`；`How long is it retained?`
  - **Product Note:**`AgentGuard public materials distinguish local protection from cloud-connected use and describe redacted or sanitized metadata and audit events. Formal privacy commitments still require the authoritative policy.`
  - **CTA:**`Review AgentGuard Security` → `/security`
- **模块目的：** 防止团队把“有日志”误当成“数据边界已清楚”，同时避免超出事实库承诺隐私条款。

### 模块 8：Implementation Checklist

**处理方式：** 新增（借鉴实操 Guide 的完成清单）

- **布局：** 10 项可勾选清单；每项带产出字段。
- **最终页面内容：**

  - **H2:**`AI Agent Security Implementation Checklist`
  - `[ ] Name the workflow, owner, environment, and users in scope.`
  - `[ ] List instructions, components, tools, data, permissions, and external services.`
  - `[ ] Define unacceptable outcomes and the assets they affect.`
  - `[ ] Review components before trust and after material changes.`
  - `[ ] Apply least privilege to the agent, host, tools, and connected services.`
  - `[ ] Place runtime decisions before the highest-impact actions where the integration supports them.`
  - `[ ] Test expected allow and high-risk paths with known inputs.`
  - `[ ] Inspect the evidence produced and remove sensitive content from logs.`
  - `[ ] Record exceptions, unsupported paths, and residual MCP gaps.`
  - `[ ] Set the next review trigger for component, policy, integration, or environment changes.`
  - **Checklist CTA:**`Use the Security-Team Evaluation Path` → `/solutions/security-teams`
- **模块目的：** 给读者一个可复制的完成标准，形成从信息查询到实施的核心价值。

### 模块 9：Residual Risk and Next Steps

**处理方式：** 新增（借鉴 Guide 的例外与治理收尾）

- **布局：** 警示框 + 3 条下一步路径。
- **最终页面内容：**

  - **H2:**`Make Residual Risk Explicit`
  - **Body:**`No single scan, policy, or runtime control proves complete AI agent security. Record the paths the control cannot observe, the actions it cannot block, the evidence it does not retain, and the owner of the remaining decision.`
  - **Next Step 1:**`Need implementation details?` → `Open AgentGuard Docs` → `/docs`
  - **Next Step 2:**`Need component review?` → `Review Deep Scan` → `/features/deep-scan`
  - **Next Step 3:**`Need runtime decisions?` → `Review Runtime Guard` → `/features/runtime-guard`
- **模块目的：** 用残余风险结束教育内容，避免“装一个工具即安全”的错误结论。

### 模块 10：FAQ

**处理方式：** 新增（覆盖主词与辅助查询，不扩写无证据能力）

- **布局：** 5 个折叠项。
- **最终页面内容：**

  - **H2:**`Frequently Asked Questions`
  - **Q:**`What belongs in an AI agent attack surface?`
  
    - **A:**`Instructions, components, tools, files, credentials, networks, permissions, external services, executable actions, and the evidence produced by the workflow.`
  - **Q:**`When should agent components be reviewed?`
  
    - **A:**`Before first trust, after material updates or configuration changes, after permission changes, and after unexpected behavior.`
  - **Q:**`Which actions need runtime checks?`
  
    - **A:**`Prioritize actions that can change systems, expose data, access secrets, call external tools, write sensitive files, or reach unapproved networks.`
  - **Q:**`Can a component scan prove an agent tool is safe?`
  
    - **A:**`No. A scan can provide evidence for named checks, but permissions, configuration, updates, runtime behavior, and unsupported paths still require review.`
  - **Q:**`What residual MCP risk remains?`
  
    - **A:**`Third-party MCP runtime calls may remain outside complete monitoring or blocking coverage, depending on the host and integration path.`
- **模块目的：** 回答常见实施疑问，并保留产品事实中的限制。
- **内部去向：**`/features/deep-scan`；`/features/runtime-guard`；`/solutions/mcp-security`；`/solutions/security-teams`；`/glossary/agent-tool-poisoning`；`/security`；`/docs`
- **事实来源：**`official_homepage`（Runtime Guard、Deep Scan、MCP runtime 限制、数据边界）；`official_docs_quickstart`（接入与本地/云连接说明）；`official_docs_api`（runtime / scan API 范围）
- **发布前要补：**

  1. 为“AI agent security”通用定义、威胁建模和检查方法补主题权威来源及访问日期；竞品页只能作为结构参考，不能代替事实引用。
  2. 客户确认正式隐私措辞；当前只能使用事实库里的 qualified local / cloud-connected 表述。
  3. 核对所有产品内链已上线，并确认不同 host 的实际接入深度。

## 21. Best `/best`

- **模板：** Commercial Content / Best Hub
- **页面状态：** 新增页面（2026-07-28 线上路由返回 `404`；没有旧页可审）
- **目标词 + 辅助词：**`best ai agent security tools`；`best AI security tools`、`AI agent security software`、`AI agent security tool shortlist`、`top AI agent security platforms`
- **搜索任务：** 找到多产品 shortlist 内容，并先理解每份清单的纳入标准、证据质量和使用场景。
- **真实结构参考页面：** General Analysis Best AI Security Platforms（[https://generalanalysis.com/guides/best-ai-security-platforms](https://generalanalysis.com/guides/best-ai-security-platforms)，借类别界定、比较、候选档案与购买清单）；Palo Alto Networks Best Agentic AI Security Solutions（[https://www.paloaltonetworks.com/cyberpedia/agentic-ai-security-solutions](https://www.paloaltonetworks.com/cyberpedia/agentic-ai-security-solutions)，借评价维度与 POC）；WitnessAI 5 Best AI Security Platforms（[https://witness.ai/blog/ai-security-platform/](https://witness.ai/blog/ai-security-platform/)，借来源和更新时间披露）
- **页面目标：** 作为 Best 内容索引和方法入口；Best 只做多产品清单，不能替代单产品 Review 或具名 Compare。

### 模块 1：Hero

**处理方式：** 新增（借鉴 Best 页先展示选型任务，不在首屏宣布赢家）

- **布局：** H1 + 说明 + 双 CTA + “Best / Review / Compare”三段式任务提示。
- **最终页面内容：**

  - **Breadcrumb:**`Resources / Best`
  - **H1:**`AI Agent Security Shortlists Built on Visible Criteria`
  - **Supporting Copy:**`Start with the evaluation method, inspect dated evidence, and verify fit before treating any shortlist as a buying decision.`
  - **Primary CTA:**`Explore AI CISO Platforms` → `/best/ai-ciso-platforms`
  - **Secondary CTA:**`Browse Named Comparisons` → `/compare`
  - **Decision Note:**`Best builds a multi-product shortlist. Review examines one product. Compare evaluates one named pair.`
- **模块目的：** 在入口处锁定多产品清单意图，避免 Best、Review、Compare 三个 Hub 自相残杀。

### 模块 2：Choose the Buying Decision

**处理方式：** 新增（借鉴多产品 Best 页按用途组织候选）

- **布局：** 4 张决策卡；未有对应 child page 的卡不带假链接。
- **最终页面内容：**

  - **H2:**`Choose the Buying Decision`
  - **Card — Security Oversight:**`Evaluate products that may help identify, control, or investigate risk across deployed AI systems.` → `Best AI CISO Platforms` → `/best/ai-ciso-platforms`
  - **Card — Runtime Action Control:**`Compare tools only after confirming which agent actions, hosts, and integrations they can observe or control.` → `Shortlist not yet published`
  - **Card — Component and MCP Review:**`Compare scanners and trust controls by component scope, evidence, update checks, and runtime boundaries.` → `Shortlist not yet published`
  - **Card — Testing and Validation:**`Compare testing products by target surface, test method, evidence, repeatability, and operating fit.` → `Shortlist not yet published`
- **模块目的：** 先按买方任务分流；无 child page 时显示真实空状态，不创建假库存。

### 模块 3：How We Build Shortlists

**处理方式：** 新增（借鉴 Best 样本的评价方法和披露）

- **布局：** 6 步方法流程。
- **最终页面内容：**

  - **H2:**`How AgentGuard Builds a Best Shortlist`
  - **Step 1:**`Define one buying task and the protected surface in scope.`
  - **Step 2:**`Publish inclusion and exclusion rules before naming candidates.`
  - **Step 3:**`Collect dated first-party evidence for every candidate.`
  - **Step 4:**`Use only dimensions supported across the candidate set.`
  - **Step 5:**`Mark missing facts as unknown and disclose AgentGuard's vendor relationship.`
  - **Step 6:**`Convert the shortlist into a common proof-of-concept plan.`
  - **Method Boundary:**`A product is not ranked because it appears in an adjacent category, uses broader positioning, or lacks evidence that another candidate publishes.`
- **模块目的：** 让评价方法先于候选和结论，压住厂商自列自评的偏差。

### 模块 4：Published Best Pages

**处理方式：** 新增（修正现有结构可能暗示多篇清单已上线的问题）

- **布局：** 可发布 child page 卡片 + 空状态。
- **最终页面内容：**

  - **H2:**`Published Best Pages`
  - **Card Title:**`Best AI CISO Platforms`
  - **Card Description:**`A working category definition, multi-product candidate evidence table, common evaluation dimensions, and a POC plan. No numbered ranking is published until every candidate is qualified with equivalent current evidence.`
  - **Card Fields:**`Buying task: AI security oversight`；`Candidate format: Multi-product`；`Evidence: Dated first-party sources`；`Ranking status: Not published`
  - **CTA:**`Open the Buyer Guide` → `/best/ai-ciso-platforms`
  - **Empty-State Copy:**`No other reviewed Best pages are published yet.`
- **模块目的：** Hub 只列真正准备上线的清单页，不用占位清单凑规模。

### 模块 5：Evaluation Dimensions

**处理方式：** 新增（借鉴 Best 样本的比较表）

- **布局：** 7 列字段说明表。
- **最终页面内容：**

  - **H2:**`Evaluation Dimensions Used Across Shortlists`
  - **Fields:**
  
    - `Protected surface — The systems, components, actions, or data explicitly in scope.`
    - `Decision point — Where the product observes, evaluates, blocks, or records activity.`
    - `Deployment evidence — The documented integration and operating environment.`
    - `Data boundary — The documented local, connected, retained, and unknown data paths.`
    - `Evidence output — The decisions, findings, logs, or records available to the team.`
    - `Operational fit — The people, workflow, maintenance, and response work required.`
    - `Limitations — Explicit vendor limits, missing facts, and residual paths.`
- **模块目的：** 统一 Best 页面下的字段，但不强迫所有类别使用不适用的评分。

### 模块 6：Verification and Disclosure Standard

**处理方式：** 新增（借鉴 Best 样本的来源日期与厂商关系披露）

- **布局：** 披露框 + 4 条验证规则。
- **最终页面内容：**

  - **H2:**`Verification and Disclosure Standard`
  - **Disclosure:**`AgentGuard publishes this library and may include its own product. Every page must keep that relationship visible.`
  - **Rules:**`Use current first-party sources`；`Show the source-access date`；`Apply the same evidence threshold to AgentGuard`；`Label unknowns instead of inferring capability`
  - **No-Ranking Rule:**`Do not publish a numerical or ordinal ranking when candidates lack equivalent current evidence.`
- **模块目的：** 把偏差和事实缺口做成固定模块，不藏在页尾小字。

### 模块 7：Continue with the Right Decision Format

**处理方式：** 新增（明确三种商业模板分工）

- **布局：** 三列路径卡。
- **最终页面内容：**

  - **H2:**`Continue with the Right Decision Format`
  - **Best:**`Use a Best page to build a multi-product shortlist for one buying task.` → `/best/ai-ciso-platforms`
  - **Review:**`Use a Review to inspect one product's evidence, setup, data boundaries, fit, and limitations.` → `/review`
  - **Compare:**`Use a Compare page to evaluate one named pair with the same evidence dimensions and POC tasks.` → `/compare`
- **模块目的：** 解决搜索任务重叠，避免三个 Hub 互相复制。

### 模块 8：FAQ

**处理方式：** 新增（回答 shortlist 方法与披露问题）

- **布局：** 4 个折叠项。
- **最终页面内容：**

  - **H2:**`Frequently Asked Questions`
  - **Q:**`How is a product included in a shortlist?`
  
    - **A:**`It must match the stated buying task and provide enough current first-party evidence for the dimensions used on the page.`
  - **Q:**`Does AgentGuard evaluate itself?`
  
    - **A:**`AgentGuard may be included, but the vendor relationship, source dates, limitations, and unknowns must remain visible.`
  - **Q:**`How often are Best pages updated?`
  
    - **A:**`An update cadence should be published only after the editorial review process and owner are operational.`
  - **Q:**`How is Best different from Review or Compare?`
  
    - **A:**`Best builds a multi-product shortlist, Review examines one product, and Compare evaluates one named pair.`
- **模块目的：** 直接处理厂商偏差、更新时间和模板分工。
- **内部去向：**`/best/ai-ciso-platforms`；`/review`；`/compare`；`/ai-ciso`
- **事实来源：** 本页不含具体产品 claim；方法来自已筛选 Best 结构证据
- **发布前要补：**

  1. `/best/ai-ciso-platforms` 与 Hub 同时上线；其候选表未满足等价证据门槛时，不发布“ranked”或“top”序号。
  2. 给 Best 系列指定内容负责人、来源复核字段和真实更新机制。
  3. 只有形成第二个完成核验的多产品 child page 后，才扩展 Hub 的“Published Best Pages”库存。

## 22. Best AI CISO Platforms `/best/ai-ciso-platforms`

- **模板：** Commercial Content / Multi-Product Best List
- **页面状态：** 新增页面（2026-07-28 线上路由返回 `404`；没有旧页可审）
- **目标词 + 辅助词：**`best ai ciso platforms`；`AI CISO tools`、`AI CISO software`、`AI security governance platforms`、`AI security oversight platform`
- **搜索任务：** 建立多产品候选清单，判断哪些产品有证据承担团队需要的 AI security oversight 职责，并形成统一 POC。
- **真实结构参考页面：** General Analysis Best AI Security Platforms（[https://generalanalysis.com/guides/best-ai-security-platforms](https://generalanalysis.com/guides/best-ai-security-platforms)，借类别界定、快速比较、候选档案与购买清单）；Palo Alto Networks Best Agentic AI Security Solutions（[https://www.paloaltonetworks.com/cyberpedia/agentic-ai-security-solutions](https://www.paloaltonetworks.com/cyberpedia/agentic-ai-security-solutions)，借评估维度与 POC）；General Analysis Best AI Red Teaming Tools（[https://generalanalysis.com/guides/best-ai-red-teaming-tools](https://generalanalysis.com/guides/best-ai-red-teaming-tools)，借候选逐项档案）
- **页面目标：** 提供严格的多产品清单结构；由于 corpus 没有高质量 AI CISO 同类页，必须把品类定义、候选资格和无排名状态放在候选结论之前。

### 模块 1：Hero

**处理方式：** 新增（借鉴 Best 页的多候选购买任务，取消未证实的“赢家”语气）

- **布局：** 面包屑 + H1 + 说明 + 方法 CTA + 披露条。
- **最终页面内容：**

  - **Breadcrumb:**`Resources / Best / AI CISO Platforms`
  - **Eyebrow:**`MULTI-PRODUCT BUYER GUIDE`
  - **H1:**`Best AI CISO Platforms: An Evidence-Led Buyer Guide`
  - **Supporting Copy:**`Define the category, inspect equivalent first-party evidence, and test the responsibilities your team needs before choosing a platform.`
  - **Primary CTA:**`Review the Candidate Table` → `#candidate-table`
  - **Secondary CTA:**`Use the POC Checklist` → `#poc-checklist`
  - **Disclosure:**`AgentGuard publishes this guide and may evaluate its own product. This page does not publish a winner or numbered ranking while candidate qualification remains incomplete.`
- **模块目的：** 保留目标词，同时第一屏就说明厂商关系、候选未完成资格确认和无排名状态。

### 模块 2：Define the AI CISO Buying Task

**处理方式：** 新增（修正“AI CISO”可能被当成已稳定市场类别的问题）

- **布局：** 工作定义 + “Included / Not established”双栏。
- **最终页面内容：**

  - **H2:**`What Counts as an AI CISO Platform in This Guide?`
  - **Working Definition:**`For this buyer guide, an AI CISO platform is a product that can provide documented evidence for one or more responsibilities used to identify, control, or investigate security risk in deployed AI systems.`
  - **Included Responsibilities:**`Asset or component visibility`；`Risk identification`；`Policy or runtime control`；`Investigation evidence`；`Operational oversight`
  - **Not Established:**`This is not a settled market category, a certification, an executive replacement, or proof that one product covers the complete security lifecycle.`
  - **Category CTA:**`Review AgentGuard's AI CISO Positioning` → `/ai-ciso`
- **模块目的：** 把“AI CISO”降到可验证的购买职责，不把营销命名写成事实。

### 模块 3：Inclusion, Exclusion, and Evidence Rules

**处理方式：** 新增（借鉴 Best 样本的纳入标准）

- **布局：** 三列规则表。
- **最终页面内容：**

  - **H2:**`How Candidates Qualify`
  - **Inclusion Rules:**
  
    - `The product has a documented AI-specific security surface.`
    - `First-party sources identify the protected object or workflow.`
    - `At least one control, evidence, or investigation responsibility can be assessed.`
    - `Deployment and limitation questions can be stated without inference.`
  - **Exclusion Rules:**
  
    - `Consulting-only offerings without a documented product surface.`
    - `General cybersecurity products included only because they mention AI.`
    - `Candidates that cannot be evaluated beyond a search snippet or third-party claim.`
  - **Evidence Rules:**`Date every source`；`Use the same dimensions`；`Mark unknowns`；`Disclose vendor ownership`；`Do not score missing evidence as zero`
- **模块目的：** 先定义谁能进入清单，避免为了“Best”标题随意塞产品。

### 模块 4：Candidate Table

**处理方式：** 新增（借鉴 Best 快速比较表；当前只展示有一手材料的两个候选记录）

- **布局：** 横向比较表；移动端转为候选卡。表头固定，所有未知项保留原词 `unknown`。
- **最终页面内容：**

  - **H2:**`Candidate Evidence Table`
  - **Intro:**`These records are candidates for category qualification, not ranked winners. A candidate remains provisional until its current first-party evidence supports the responsibilities used in this guide.`

| Candidate | Documented public surface | Category qualification | Deployment | Data boundary | Pricing | Material limits | Source date |
|-|-|-|-|-|-|-|-|
| `AgentGuard` | `Runtime Guard; Deep Scan; OpenClaw Environment Patrol; runtime and scan API groups; public advisories` | `Provisional: documented risk-control surfaces, but no public evidence of a complete AI CISO workflow` | `Local guard with cloud-backed policy and multiple integration modes; exact depth varies` | `Qualified local and cloud-connected statements are public` | `unknown` | `Cannot fully monitor or block all third-party MCP runtime calls; complete integration depth unknown` | `AgentGuard public sources checked 2026-07-03 in the current evidence set` |
| `Prompt Security` | `Reviewed first-party pages describe an MCP Gateway and security for homegrown AI applications` | `Provisional: AI security and governance surfaces are described; complete AI CISO responsibility coverage is unknown` | `unknown from the two reviewed pages` | `unknown from the two reviewed pages` | `unknown` | `Equivalent explicit coverage limits are unknown from the reviewed pages` | `Prompt Security official solution pages accessed 2026-07-26` |

- **模块目的：** Best 必须是多产品清单；这里用双方一手材料形成候选集，但不把候选资格、完整能力或排名编出来。

### 模块 5：Candidate Evidence Profiles

**处理方式：** 新增（借鉴 Best 页逐候选档案；字段完全同口径）

- **布局：** 每个候选一张完整档案卡；字段顺序固定。
- **最终页面内容：**

  - **H2:**`Candidate Evidence Profiles`
  - **Profile — AgentGuard**
  
    - **Documented Focus:**`Security for AI developers, including named high-risk actions, component scanning, and OpenClaw workspace checks.`
    - **Evidence Available:**`Homepage, Quickstart, API Reference, public repository, and advisory surface.`
    - **Buyer Fit to Test:**`Coding-agent actions, component review, selected integrations, and evidence produced by runtime or scan workflows.`
    - **Known Boundary:**`Public materials state that AgentGuard cannot fully monitor or block all third-party MCP server runtime calls.`
    - **Unknown:**`Current pricing, plan allocation, complete host-by-host integration depth, and complete AI CISO lifecycle coverage.`
    - **Related Review:**`Read the AgentGuard Review` → `/review/agentguard`
  - **Profile — Prompt Security**
  
    - **Documented Focus:**`The two reviewed first-party pages describe an MCP Gateway and protection for homegrown AI applications.`
    - **Evidence Available:**`Official solution pages for agentic AI security and governance and homegrown GenAI applications, accessed July 26, 2026.`
    - **Buyer Fit to Test:**`MCP gateway controls and homegrown AI application security in the buyer's target environment.`
    - **Known Boundary:**`No equivalent explicit product limitation was established from the two reviewed pages.`
    - **Unknown:**`Current pricing, hosting, data flow, deployment details, complete documentation set, and full AI CISO responsibility coverage.`
- **模块目的：** 同样字段逐候选呈现，既避免复制竞品文案，也避免只给 AgentGuard 写完整档案。

### 模块 6：Compare Responsibilities, Not Labels

**处理方式：** 新增（修正按营销命名直接比较的问题）

- **布局：** 6 行职责矩阵；单元格只允许 `Documented`、`Partial evidence`、`Unknown`、`Not applicable`。
- **最终页面内容：**

  - **H2:**`Compare the Responsibilities Your Team Needs`

| Responsibility | Evidence question | AgentGuard | Prompt Security |
|-|-|-|-|
| `Discover assets or components` | `Which deployed AI assets, components, or connections are visible?` | `Partial evidence: named component scans and OpenClaw workspace checks` | `Partial evidence: reviewed page describes visibility and shadow MCP detection` |
| `Identify risk` | `Which risks are evaluated and what evidence is produced?` | `Documented for named runtime actions and scan risk categories` | `Partial evidence: reviewed page describes risk scoring; exact scope requires docs verification` |
| `Apply control` | `Where can a policy or decision affect behavior?` | `Documented for named Runtime Guard action categories; integration depth varies` | `Partial evidence: reviewed page describes gateway policy enforcement and real-time protection` |
| `Protect application data` | `Which data-loss or content controls are documented?` | `Qualified data-handling statements exist; complete application DLP is not established` | `Partial evidence: reviewed homegrown-app page describes DLP and content moderation` |
| `Investigate and audit` | `Which decisions, findings, or audit records are available?` | `Audit events and API surfaces are described; complete operating workflow unknown` | `Partial evidence: reviewed gateway page describes audit logs; complete workflow unknown` |
| `Govern the lifecycle` | `Are ownership, approval, exception, and ongoing review workflows documented?` | `unknown as a complete public workflow` | `unknown from the two reviewed pages` |

- **模块目的：** 按购买职责比较，而不是把 “AI CISO”“governance”等宽词直接当成能力等价。

### 模块 7：POC Checklist

**处理方式：** 新增（借鉴 Best 样本的购买/POC 清单）

- **布局：** 8 项 POC 表单；每项包含输入、预期证据和验收结果。
- **最终页面内容：**

  - **H2:**`Proof-of-Concept Checklist`
  - **POC 1 — Scope:**`Name one AI workflow, environment, users, components, actions, and data boundaries.`
  - **POC 2 — Responsibilities:**`Select the discovery, risk, control, investigation, or governance responsibilities the team actually needs.`
  - **POC 3 — Common Inputs:**`Use the same known-safe and high-risk cases for every candidate.`
  - **POC 4 — Decisions:**`Record expected allow, block, flag, or review outcomes before testing.`
  - **POC 5 — Evidence:**`Capture the finding, decision, reason, policy or rule context, source, and residual gap.`
  - **POC 6 — Data:**`Trace what remains local, what is transmitted, what is redacted, and what is retained.`
  - **POC 7 — Operations:**`Measure setup effort, maintenance, exception handling, investigation work, and ownership.`
  - **POC 8 — Acceptance:**`Choose only after every must-have responsibility has a verified result or an accepted residual risk.`
- **模块目的：** 用相同输入和验收标准把 shortlist 变成可验证决策，而不是主观分数。

### 模块 8：How to Choose

**处理方式：** 新增（借鉴 Best 页的购买建议，但不下万能结论）

- **布局：** 3 种买方情境 + 结论边界。
- **最终页面内容：**

  - **H2:**`Choose by Responsibility and Environment`
  - **Scenario — Coding-Agent Actions and Components:**`Prioritize documented host integration, action coverage, component scope, data boundaries, and residual MCP paths.`
  - **Scenario — MCP Gateway and Application Controls:**`Prioritize gateway placement, application integration, data path, policy enforcement, audit evidence, and coverage limits.`
  - **Scenario — Cross-Team Oversight:**`Prioritize inventory, evidence, ownership, exception handling, review cadence, and integration with the team's operating process.`
  - **Decision Boundary:**`Do not choose from category labels alone. Select the candidate that verifies the required responsibilities in the target environment.`
- **模块目的：** 给购买建议，但不把证据不足写成 AgentGuard 或 Prompt Security 的胜负结论。

### 模块 9：FAQ

**处理方式：** 新增（覆盖类别、排名、证据与 POC）

- **布局：** 5 个折叠项。
- **最终页面内容：**

  - **H2:**`Frequently Asked Questions`
  - **Q:**`How is an AI CISO platform defined here?`
  
    - **A:**`It is a working buyer category for products that provide documented evidence for responsibilities used to identify, control, or investigate risk in deployed AI systems.`
  - **Q:**`Is this an independent ranking?`
  
    - **A:**`No. AgentGuard publishes the guide, evaluates its own product, and does not publish a winner while candidate qualification is incomplete.`
  - **Q:**`Why are there no numerical scores?`
  
    - **A:**`The current candidates do not have equivalent evidence across every dimension. Missing evidence is shown as unknown rather than converted into a score.`
  - **Q:**`Which evidence is required for each candidate?`
  
    - **A:**`Current first-party evidence for the protected surface, deployment, data boundary, control or evidence output, limitations, and source date.`
  - **Q:**`What should teams test in a POC?`
  
    - **A:**`The required responsibilities, deployment, common inputs, expected decisions, evidence quality, data path, operations, and residual gaps.`
- **模块目的：** 直接解释为什么“Best”页没有排名，并把证据缺口公开化。
- **内部去向：**`/ai-ciso`；`/review/agentguard`；`/compare`；`/compare/agentguard-vs-prompt-security`；`/security`；`/contact`
- **事实来源：** AgentGuard：`official_homepage`、`official_docs_quickstart`、`official_docs_api`、`github_agentguard_repo`；Prompt Security：[https://prompt.security/solutions/agentic-ai-security-and-governance](https://prompt.security/solutions/agentic-ai-security-and-governance) 与 [https://prompt.security/solutions/homegrown-genai-apps](https://prompt.security/solutions/homegrown-genai-apps)（均访问于 2026-07-26）
- **发布前要补：**

  1. 客户确认 `AI CISO` 是否为正式外部品类定位；若否，应调整主词与 URL，而不是继续扩大该清单。
  2. 逐候选重新打开当前一手页面，补准确引用、访问日期、部署、数据和限制字段；当前 Prompt Security 信息只来自两页。
  3. 至少确认两个候选都满足公开纳入规则后才能发布为 Best 清单；否则保留为内部结构稿。
  4. 不发布 numbered ranking、winner、leader、top pick 或数值评分，直到候选证据真正等价。

## 23. Review `/review`

- **模板：** Commercial Content / Single-Product Review Hub
- **页面状态：** 新增页面（2026-07-28 线上路由返回 `404`；没有旧页可审）
- **目标词 + 辅助词：**`ai agent security reviews`；`AI agent security software reviews`、`AI security platform reviews`、`agent security product reviews`、`AI security tool evaluations`
- **搜索任务：** 找到单个产品的证据档案，核查定位、设置、数据、适用场景、限制和未知项。
- **真实结构参考页面：** 合格单产品 Review 样本为 `0`。只从 General Analysis Best AI Security Platforms 与 WitnessAI 5 Best AI Security Platforms 借“来源日期、事实维度、厂商披露”形式；这不是经验证的 Review 模板。
- **页面目标：** 定义并承载单产品 Review；不排名多产品，不做具名双方对比，不伪装独立测评。

### 模块 1：Hero

**处理方式：** 新增（无直接 Review 模板；按单产品搜索任务自行构建）

- **布局：** H1 + 说明 + 双 CTA + vendor-owned disclosure。
- **最终页面内容：**

  - **Breadcrumb:**`Resources / Reviews`
  - **H1:**`Evidence Profiles for AI Agent Security Products`
  - **Supporting Copy:**`Each review examines one product, dates its sources, separates verified facts from vendor claims, and makes setup, data boundaries, fit, limitations, and unknowns visible.`
  - **Primary CTA:**`Read the AgentGuard Review` → `/review/agentguard`
  - **Secondary CTA:**`Browse Named Comparisons` → `/compare`
  - **Disclosure:**`AgentGuard publishes this review library. A vendor-authored review is not an independent review.`
- **模块目的：** 首屏锁定单产品证据审查，并把 publisher bias 直接写出来。

### 模块 2：Review Standard

**处理方式：** 新增（因无合格模板，建立本项目自己的证据契约）

- **布局：** 7 步 review 方法。
- **最终页面内容：**

  - **H2:**`How a Product Review Is Built`
  - **Step 1:**`Name the publisher, product owner, source set, and source dates.`
  - **Step 2:**`State the public product positioning without expanding it.`
  - **Step 3:**`Document the product surfaces and intended workflow.`
  - **Step 4:**`Inspect setup, integration, deployment, and data evidence.`
  - **Step 5:**`Identify the clearest evidence-backed fit.`
  - **Step 6:**`List explicit limits, conflicts, commercial unknowns, and unsupported paths.`
  - **Step 7:**`Provide verification tasks instead of an unsupported score or verdict.`
  - **Evidence Note:**`The approved template corpus contained no complete qualifying product-review page. This standard is a transparent project contract, not a claim of independent testing.`
- **模块目的：** 坦白模板证据缺口，同时给每篇 Review 一套可复用、可审计的完成标准。

### 模块 3：Browse Product Reviews

**处理方式：** 新增（只显示完成证据档案的 child page）

- **布局：** Review 卡片列表；当前 1 张卡 + 空状态。
- **最终页面内容：**

  - **H2:**`Browse Product Reviews`
  - **Card Title:**`AgentGuard Review`
  - **Card Description:**`A vendor-authored evidence profile covering Runtime Guard, Deep Scan, OpenClaw Environment Patrol, setup, integration modes, data handling, fit, limitations, and verification tasks.`
  - **Card Fields:**`Publisher: AgentGuard`；`Review type: Vendor-authored`；`Evidence: First-party public sources`；`Verdict: Not published`
  - **CTA:**`Read the AgentGuard Review` → `/review/agentguard`
  - **Empty-State Copy:**`No additional product reviews have completed the evidence standard.`
- **模块目的：** 不用假评测填充 Hub；一篇合格 Review 也能诚实承载。

### 模块 4：What Every Review Must Cover

**处理方式：** 新增（按通用购买决策逻辑补齐单产品字段）

- **布局：** 8 张字段卡。
- **最终页面内容：**

  - **H2:**`What Every Review Must Cover`
  - `Positioning — What the product publicly says it is.`
  - `Protected surface — Which systems, components, actions, or data are documented.`
  - `Setup and integration — How the product enters the target workflow.`
  - `Deployment evidence — What is documented and what remains unknown.`
  - `Data boundary — What may remain local, leave the environment, or be retained.`
  - `Fit — The use case supported by the strongest evidence.`
  - `Limitations — Explicit boundaries, conflicts, and unsupported paths.`
  - `Verification — The tasks a buyer should complete before adoption.`
- **模块目的：** 让单产品 Review 有完整购买决策字段，而不是功能页换标题。

### 模块 5：Ownership, Sources, and Updates

**处理方式：** 新增（借相邻 Best 页的披露形式）

- **布局：** 固定披露卡模板。
- **最终页面内容：**

  - **H2:**`Ownership, Sources, and Updates`
  - **Required Fields:**`Published by`；`Product relationship`；`Sources checked`；`Last evidence review`；`Unknown facts`；`Next review trigger`
  - **Policy:**`A review must be refreshed after a material product, pricing, deployment, data, or limitation change. Do not promise a calendar cadence until an accountable process exists.`
- **模块目的：** 让厂商关系和内容时效成为可见字段，不藏在 footer。

### 模块 6：Choose the Next Decision Format

**处理方式：** 新增（明确 Review 与 Best/Compare 的边界）

- **布局：** 三列路径。
- **最终页面内容：**

  - **H2:**`Choose the Next Decision Format`
  - **Review:**`Stay with one product when you need its setup, data, fit, limitations, and verification tasks.` → `/review/agentguard`
  - **Compare:**`Move to a named pair only when both products have enough evidence for the same dimensions.` → `/compare`
  - **Best:**`Use a Best page when the task is to build a multi-product shortlist.` → `/best`
- **模块目的：** 维持商业内容的意图边界和内部链接逻辑。

### 模块 7：FAQ

**处理方式：** 新增（回答 Review 的独立性和方法）

- **布局：** 4 个折叠项。
- **最终页面内容：**

  - **H2:**`Frequently Asked Questions`
  - **Q:**`Who writes and publishes these reviews?`
  
    - **A:**`AgentGuard publishes this library. Every review must disclose the product relationship near the top of the page.`
  - **Q:**`Are these independent reviews?`
  
    - **A:**`No. A vendor-authored review can organize evidence and limitations, but it must not present itself as independent testing.`
  - **Q:**`How are product facts verified?`
  
    - **A:**`Use dated first-party sources, identify conflicts, and mark unsupported facts as unknown.`
  - **Q:**`How is Review different from Compare?`
  
    - **A:**`Review examines one product. Compare evaluates one named pair on equivalent dimensions.`
- **模块目的：** 直接处理 Review 最大的信任问题。
- **内部去向：**`/review/agentguard`；`/compare`；`/best`
- **事实来源：** 本 Hub 不含具体产品 claim；Review 结构没有直接合格竞品模板，使用通用购买决策字段与相邻 Best 的披露形式
- **发布前要补：**

  1. `/review/agentguard` 达到本页定义的证据契约后与 Hub 同时上线。
  2. 为每篇 Review 设真实的来源复核日期、负责人和触发式更新规则。
  3. 不使用 `independent`、`objective rating`、`hands-on tested` 或分数，除非未来有可验证的方法和测试记录。

## 24. AgentGuard Review `/review/agentguard`

- **模板：** Commercial Content / Single-Product Evidence Review
- **页面状态：** 新增页面（2026-07-28 线上路由返回 `404`；没有旧页可审）
- **目标词 + 辅助词：**`agentguard review`；`agentguard security review`、`agentguard ai review`、`is agentguard safe`、`AgentGuard features`、`AgentGuard limitations`
- **搜索任务：** 用 AgentGuard 一手证据核查公开能力、设置、接入、数据边界、适用场景和当前限制。
- **真实结构参考页面：** 合格单产品 Review 样本为 `0`。只从相邻 Best 页面借厂商披露、来源日期和限制字段；完整 Review 结构按单产品购买决策逻辑与 AgentGuard 一手事实构建。
- **页面目标：** 提供 vendor-authored 事实档案，不伪装独立评测，不写无证据安全 verdict。

### 模块 1：Hero

**处理方式：** 新增（无直接 Review 模板；按单产品证据任务构建）

- **布局：** 面包屑 + disclosure + H1 + 说明 + 双 CTA + 事实摘要。
- **最终页面内容：**

  - **Breadcrumb:**`Resources / Reviews / AgentGuard`
  - **Disclosure:**`Vendor-authored review: AgentGuard publishes this review of its own product.`
  - **H1:**`AgentGuard Review: Documented Features and Current Limits`
  - **Supporting Copy:**`Review AgentGuard's public product surfaces, setup evidence, integration modes, data boundaries, fit, limitations, and the questions that remain unresolved.`
  - **Primary CTA:**`Read AgentGuard Docs` → `/docs`
  - **Secondary CTA:**`Use the Verification Checklist` → `#verification-checklist`
  - **Evidence Summary:**`Sources: AgentGuard public homepage, Quickstart, API Reference, public repository, and package metadata.`
- **模块目的：** 首屏明确 vendor ownership 和证据范围，不用 “safe”“best” 或 rating 代替核验。

### 模块 2：Disclosure and Review Method

**处理方式：** 新增（因无合格 Review 模板，方法与限制先于功能）

- **布局：** 方法说明 + Source / Not tested / Unknown 三栏。
- **最终页面内容：**

  - **H2:**`Disclosure and Review Method`
  - **Method:**`This page summarizes current first-party public evidence, identifies conflicts and unknowns, and converts the evidence into buyer verification tasks.`
  - **Sources Reviewed:**`Public homepage`；`Quickstart`；`API Reference`；`GitHub repository and README`；`Package metadata`
  - **Not Tested:**`No live API behavior, performance, bypass resistance, false-positive rate, or production-scale operation is established by this review.`
  - **Unknown:**`Current pricing, plan allocation, complete integration depth, enterprise commitments, and final Legal-approved privacy wording.`
- **模块目的：** 清楚说明这是一手资料审查，不是假装做过 hands-on benchmark。

### 模块 3：Product Snapshot

**处理方式：** 新增（把公开定位与产品面压缩成单产品档案）

- **布局：** 2 列快照表。
- **最终页面内容：**

  - **H2:**`AgentGuard Product Snapshot`

| Field | Documented evidence |
|-|-|
| `Public positioning` | `AI Agent Security for AI Developers; the public repository describes an open-source runtime security layer for AI coding agents.` |
| `Primary public surfaces` | `Runtime Guard, Deep Scan, and OpenClaw Environment Patrol.` |
| `Developer entry points` | `Docs, Quickstart, API Reference, CLI, and public GitHub repository.` |
| `API groups` | `Runtime analysis and decision endpoints; repository, package, MCP server, and URL scan endpoints.` |
| `License` | `MIT in the public repository and package metadata.` |
| `Review status` | `Evidence profile only; no independent safety verdict.` |

- **模块目的：** 先回答“AgentGuard 是什么和公开有哪些面”，再进入逐能力证据。

### 模块 4：Runtime Guard Evidence

**处理方式：** 新增（按事实库列动作范围，不写绝对阻断）

- **布局：** 能力说明 + 动作类别标签 + 验证问题。
- **最终页面内容：**

  - **H2:**`Runtime Guard`
  - **Documented Surface:**`AgentGuard publicly describes Runtime Guard as evaluating named high-risk actions before execution.`
  - **Named Action Categories:**`Shell commands`；`File access`；`Tool actions`；`Network requests`；`Secret access`；`Sensitive writes`；`Webhook exfiltration`
  - **Buyer Questions:**`Which host integration places the decision before execution?`；`Which actions are observable in that mode?`；`What evidence is returned?`；`Which paths remain outside the integration?`
  - **CTA:**`Review Runtime Guard` → `/features/runtime-guard`
- **模块目的：** 展示已公开动作范围，并把 host 覆盖和接入深度留给验证。

### 模块 5：Deep Scan Evidence

**处理方式：** 新增（按事实库列组件与风险类别，不承诺通用检测）

- **布局：** Components / Named risk categories / Buyer questions 三栏。
- **最终页面内容：**

  - **H2:**`Deep Scan`
  - **Components:**`Skills`；`Plugins`；`MCP servers`；`Agents`
  - **Named Risk Categories:**`Prompt injection`；`Malicious tools`；`Credential leaks`；`Backdoors`
  - **Buyer Questions:**`Which inputs and package types are accepted?`；`What evidence accompanies a finding?`；`How are updates re-scanned?`；`Which risks are outside the named checks?`
  - **Boundary:**`The public evidence supports named component targets and risk categories, not universal detection or a guarantee of safety.`
  - **CTA:**`Review Deep Scan` → `/features/deep-scan`
- **模块目的：** 让读者看到扫描对象和边界，避免把风险类别写成 100% 检测承诺。

### 模块 6：OpenClaw Environment Patrol Evidence

**处理方式：** 新增（保留 OpenClaw 专属范围）

- **布局：** 4 项 workspace change 卡 + 集成边界。
- **最终页面内容：**

  - **H2:**`OpenClaw Environment Patrol`
  - **Documented Checks:**`Suspicious skills`；`Modified plugins`；`New MCP servers`；`Drift in trusted files`
  - **Integration Evidence:**`The Quickstart describes plugin hooks, auto-scanning, and daily patrol for OpenClaw.`
  - **Boundary:**`This evidence is specific to the documented OpenClaw workflow and must not be generalized to every agent or host.`
  - **CTA:**`Review OpenClaw Patrol` → `/features/openclaw-patrol`
- **模块目的：** 单独讲 OpenClaw，防止专属能力被包装成全平台巡检。

### 模块 7：Setup and Integration Evidence

**处理方式：** 新增（把不同接入深度做成表格）

- **布局：** Host / documented mode / verification required 三列表。
- **最终页面内容：**

  - **H2:**`Setup and Integration Evidence`

| Host or entry point | Publicly documented mode | What the buyer must verify |
|-|-|-|
| `Claude Code` | `Pre- and post-tool hooks` | `Exact action coverage and enforcement behavior in the current version` |
| `OpenClaw` | `Plugin hooks, auto-scanning, and daily patrol` | `Workspace scope, schedule, and response behavior` |
| `Hermes` | `Native tool hooks` | `Current supported actions and configuration` |
| `Codex CLI, Gemini CLI, Cursor, GitHub Copilot` | `Skill or command paths are described` | `Whether the path provides guidance, scanning, or enforceable runtime coverage` |
| `MCP hosts` | `MCP-related entry points are described` | `Host-specific runtime visibility and the documented third-party MCP limitation` |
| `CLI and API` | `CLI commands and runtime/scan endpoint groups are public` | `Authentication, current schema, errors, limits, and live production behavior` |

- **Setup CTA:**`Open the Quickstart` → `/docs`
- **模块目的：** 将“支持很多 Agent/IDE”拆成实际模式，避免把 skill/command 都写成完整 hook。

### 模块 8：Data Handling

**处理方式：** 新增（使用 qualified 本地/云连接事实，不写 Legal 结论）

- **布局：** Local / Connected / Still unknown 三栏。
- **最终页面内容：**

  - **H2:**`Data Handling`
  - **Local Mode:**`AgentGuard public materials say local mode does not upload full code, prompts, secrets, or file contents.`
  - **Cloud-Connected Use:**`Public materials say connected use may send sanitized action previews, risk metadata, decisions, policy versions, and audit events. The Quickstart also describes redacted metadata and audit events when needed.`
  - **Offline Behavior:**`The Quickstart says cached policy can be used offline.`
  - **Still Unknown:**`The final authoritative privacy policy, retention, regional processing, subprocessors, and enterprise contractual terms are not established by this evidence profile.`
  - **CTA:**`Review AgentGuard Security` → `/security`
- **模块目的：** 完整呈现允许公开的数据事实，同时明确不能替代正式隐私政策。

### 模块 9：Fit, Limitations, and Unknowns

**处理方式：** 新增（单产品 Review 的核心判断模块）

- **布局：** Best fit / Material limits / Unknowns 三栏。
- **最终页面内容：**

  - **H2:**`Fit, Limitations, and Unknowns`
  - **Clearest Evidence-Backed Fit:**`Developers and security teams evaluating coding-agent actions, components, OpenClaw workspaces, and selected integration paths.`
  - **Material Limit:**`AgentGuard's public FAQ says it cannot fully monitor or block all third-party MCP server runtime calls.`
  - **Integration Limit:**`Protection depth varies across hook, plugin, skill, and command modes.`
  - **Evidence Conflict:**`Public materials conflict on whether the product has 20 or 24 security rules. This review does not publish an exact count.`
  - **Commercial Unknowns:**`Current pricing, plans, usage limits, enterprise support, and contractual commitments.`
  - **Product Unknowns:**`Complete host-by-host depth, complete deployment model, and complete governance lifecycle.`
- **模块目的：** 给出单产品适配判断，但把限制、冲突和未知项放在同一视觉层级。

### 模块 10：Verification Checklist

**处理方式：** 新增（用买方任务代替无证据 verdict）

- **布局：** 8 项 POC 清单。
- **最终页面内容：**

  - **H2:**`AgentGuard Verification Checklist`
  - `[ ] Select the exact host, integration mode, workflow, and users in scope.`
  - `[ ] Confirm which actions are evaluated before execution in that mode.`
  - `[ ] Scan representative components and inspect the evidence returned.`
  - `[ ] Test known-safe and high-risk paths with expected outcomes recorded in advance.`
  - `[ ] Trace local, connected, redacted, and retained data for the test.`
  - `[ ] Review the third-party MCP runtime gap in the target architecture.`
  - `[ ] Resolve pricing, plan, usage, support, and enterprise unknowns.`
  - `[ ] Record residual paths, exceptions, operating owners, and the next review trigger.`
  - **CTA:**`Contact AgentGuard with the Test Scope` → `/contact`
- **模块目的：** 让用户自己验证最重要的事实，避免厂商站替用户宣布“safe”。

### 模块 11：Evidence Summary

**处理方式：** 新增（不写评分，给条件化结论）

- **布局：** 结论段 + Suitable to evaluate / Not established 双栏。
- **最终页面内容：**

  - **H2:**`Evidence Summary`
  - **Summary:**`AgentGuard has public evidence for named runtime action checks, component scanning, OpenClaw workspace checks, developer entry points, and qualified local and cloud-connected data statements. It is reasonable to evaluate when those documented surfaces match the target workflow.`
  - **Not Established:**`This review does not establish independent safety, complete third-party MCP runtime coverage, identical protection across every host, current commercial terms, or a complete AI CISO lifecycle.`
  - **Primary CTA:**`Read AgentGuard Docs` → `/docs`
  - **Secondary CTA:**`Compare AgentGuard and Prompt Security` → `/compare/agentguard-vs-prompt-security`
- **模块目的：** 给可用的单产品结论，但结论只覆盖一手证据能支持的范围。

### 模块 12：FAQ

**处理方式：** 新增（覆盖品牌 Review 查询）

- **布局：** 5 个折叠项。
- **最终页面内容：**

  - **H2:**`Frequently Asked Questions`
  - **Q:**`Is this an independent AgentGuard review?`
  
    - **A:**`No. AgentGuard publishes this vendor-authored evidence profile of its own product.`
  - **Q:**`What does AgentGuard publicly include?`
  
    - **A:**`The public surface includes Runtime Guard, Deep Scan, OpenClaw Environment Patrol, Docs, API groups, a public repository, and advisories.`
  - **Q:**`Is AgentGuard open source?`
  
    - **A:**`The public repository and package metadata identify the available project under the MIT license. Review the current repository before relying on a specific release or package state.`
  - **Q:**`What data may cloud-connected use send?`
  
    - **A:**`Public materials describe sanitized or redacted action and risk metadata, decisions, policy versions, and audit events.`
  - **Q:**`What are AgentGuard's current material limitations?`
  
    - **A:**`Third-party MCP runtime coverage is incomplete, integration depth varies, the public rule count conflicts, and current commercial and enterprise terms remain unresolved.`
- **模块目的：** 回答品牌、开源、数据和限制查询，不做未证实的安全判断。
- **内部去向：**`/features/runtime-guard`；`/features/deep-scan`；`/features/openclaw-patrol`；`/docs`；`/docs/api`；`/security`；`/pricing`；`/compare/agentguard-vs-prompt-security`；`/contact`
- **事实来源：**`official_homepage`；`official_docs_quickstart`；`official_docs_api`；`github_agentguard_repo`；`github_agentguard_readme_raw`；`github_agentguard_package_json`
- **发布前要补：**

  1. 给所有一手来源补当前访问日期，并核对公开页面是否发生能力、限制或安装变化。
  2. 解决 20 / 24 security rules 冲突；未解决前继续不写精确数量。
  3. 补当前 pricing、plan、usage、support、enterprise 和 host-by-host integration depth。
  4. 由 Legal / product owner 确认正式隐私措辞；当前 Review 不能代替 Privacy Policy。
  5. 若没有实际 hands-on 测试记录，页面不得使用 `tested`、`benchmark`、`rating` 或独立 verdict。

## 25. Compare `/compare`

- **模板：** Commercial Content / Named-Pair Comparison Hub
- **页面状态：** 新增页面（2026-07-28 线上路由返回 `404`；没有旧页可审）
- **目标词 + 辅助词：**`ai agent security comparison`；`AI agent security platform comparison`、`compare AI agent security tools`、`AI security product comparison`、`agent security alternatives`
- **搜索任务：** 找到一个明确产品对，并用同一批有来源日期的维度和 POC 任务进行比较。
- **真实结构参考页面：** 合格产品对产品 Compare 样本为 `0`。只从 Palo Alto Networks Best Agentic AI Security Solutions 和 General Analysis Best AI Security Platforms 借“共同维度、披露、POC checklist”形式；这不是经验证的 Compare 模板。
- **页面目标：** 作为具名双方比较入口；不做多产品榜单，不重复单产品 Review，不用不等价事实制造 winner。

### 模块 1：Hero

**处理方式：** 新增（无直接 Compare 模板；按具名双方决策任务构建）

- **布局：** H1 + 说明 + 双 CTA + vendor-owned disclosure。
- **最终页面内容：**

  - **Breadcrumb:**`Resources / Comparisons`
  - **H1:**`Compare AI Agent Security Products with Dated Evidence`
  - **Supporting Copy:**`Choose a named pair, inspect equivalent first-party evidence, and use a common proof-of-concept plan instead of a synthetic score.`
  - **Primary CTA:**`Compare AgentGuard and Prompt Security` → `/compare/agentguard-vs-prompt-security`
  - **Secondary CTA:**`Browse Product Reviews` → `/review`
  - **Disclosure:**`AgentGuard publishes this comparison library. Each page must keep the vendor relationship, source dates, unknowns, and non-equivalent evidence visible.`
- **模块目的：** 首屏定义具名 pairwise comparison，不让宽泛“alternatives”意图滑成 Best 榜单。

### 模块 2：Comparison Standard

**处理方式：** 新增（因无合格模板，建立双方等价证据规则）

- **布局：** 7 步比较方法。
- **最终页面内容：**

  - **H2:**`How a Named Comparison Is Built`
  - **Step 1:**`Name the two products and one buying task.`
  - **Step 2:**`Disclose the publisher's relationship to either product.`
  - **Step 3:**`Date the first-party evidence for both sides.`
  - **Step 4:**`Define common dimensions before writing product descriptions.`
  - **Step 5:**`Use unknown when one side lacks equivalent evidence.`
  - **Step 6:**`Do not infer architectural or outcome equivalence from similar terms.`
  - **Step 7:**`End with the same POC inputs and acceptance criteria for both products.`
  - **Evidence Note:**`The approved template corpus contained no complete qualifying product-to-product comparison. This method is an explicit project contract, not a borrowed proof of neutrality.`
- **模块目的：** 给 Compare 一套独立结构，不用 Best 页或概念型 “A vs B” 冒充产品对比。

### 模块 3：Browse Named Comparisons

**处理方式：** 新增（当前只列有双方一手事实的 pair）

- **布局：** 比较卡列表；1 张卡 + 空状态。
- **最终页面内容：**

  - **H2:**`Browse Named Comparisons`
  - **Card Title:**`AgentGuard vs Prompt Security`
  - **Card Description:**`Compare public positioning, protected surfaces, documented controls, data and deployment evidence, limitations, unknowns, and a common POC plan.`
  - **Card Fields:**`Publisher: AgentGuard`；`Evidence type: Dated first-party sources`；`Winner: Not published`；`Open unknowns: Pricing, hosting, data flow, and coverage`
  - **CTA:**`Open the Comparison` → `/compare/agentguard-vs-prompt-security`
  - **Empty-State Copy:**`No additional named comparisons have enough current first-party evidence for both products.`
- **模块目的：** 只列真正有双方来源的 child page，避免生产无证据 alternatives 页面。

### 模块 4：Core Comparison Dimensions

**处理方式：** 新增（借相邻 Best 的评价维度，改成双方对齐）

- **布局：** 8 张字段卡。
- **最终页面内容：**

  - **H2:**`Core Comparison Dimensions`
  - `Buying task — The decision the pair must support.`
  - `Public positioning — The product's own current description.`
  - `Protected surface — The documented systems, components, actions, or data in scope.`
  - `Control point — Where the product observes, evaluates, blocks, or records behavior.`
  - `Deployment and integration — The documented path into the target environment.`
  - `Data boundary — Local, connected, transmitted, retained, and unknown paths.`
  - `Limitations — Explicit boundaries and facts that remain unknown.`
  - `POC — Common inputs, expected results, evidence, operating effort, and residual gaps.`
- **模块目的：** 统一 Compare child 的表头，但不把字段变成无依据评分。

### 模块 5：Common POC Standard

**处理方式：** 新增（用测试任务替代胜负表）

- **布局：** POC 输入/执行/证据/验收四步。
- **最终页面内容：**

  - **H2:**`Use the Same Proof of Concept for Both Products`
  - **Input:**`One workflow, one environment, the same components and actions, the same data constraints, and the same known-safe and high-risk cases.`
  - **Execution:**`Run the documented integration for each product without assuming similar terms provide the same control.`
  - **Evidence:**`Capture decisions, findings, reasons, logs, data paths, latency, setup work, exceptions, and unsupported paths.`
  - **Acceptance:**`Decide only after every must-have outcome is verified or the residual risk is explicitly accepted.`
- **模块目的：** 把产品对比转成 solo-op 或小团队能执行的验证流程。

### 模块 6：Ownership and Source Dates

**处理方式：** 新增（借相邻 Best 的披露形式）

- **布局：** 固定披露字段。
- **最终页面内容：**

  - **H2:**`Ownership and Source Dates`
  - **Required Fields:**`Published by`；`Vendor relationship`；`Product A sources and access date`；`Product B sources and access date`；`Unknown facts`；`Next review trigger`
  - **Policy:**`A comparison must be reviewed after a material change to product scope, deployment, pricing, data handling, or limitations on either side.`
- **模块目的：** 让竞品事实的时效与厂商立场一直可见。

### 模块 7：Continue to Single-Product Evidence

**处理方式：** 新增（Compare 不代替 Review）

- **布局：** 两列下一步。
- **最终页面内容：**

  - **H2:**`Need More Detail on One Product?`
  - **Review Path:**`Open a single-product Review for setup, data, fit, limitations, and verification tasks.` → `/review`
  - **Best Path:**`Open a Best page when the decision requires a multi-product shortlist rather than one named pair.` → `/best`
- **模块目的：** 控制意图边界，并建立自然商业内容内链。

### 模块 8：FAQ

**处理方式：** 新增（覆盖 Compare 的方法与独立性）

- **布局：** 4 个折叠项。
- **最终页面内容：**

  - **H2:**`Frequently Asked Questions`
  - **Q:**`How are comparison dimensions chosen?`
  
    - **A:**`Use dimensions relevant to the buying task and supported by current first-party evidence for both products.`
  - **Q:**`Are these comparisons independent?`
  
    - **A:**`No. AgentGuard publishes the library and must disclose its relationship on every page.`
  - **Q:**`How are missing competitor facts handled?`
  
    - **A:**`Show the source date and keep the field as unknown until current first-party evidence is available.`
  - **Q:**`How is Compare different from Best or Review?`
  
    - **A:**`Compare evaluates one named pair, Best builds a multi-product shortlist, and Review examines one product.`
- **模块目的：** 回答中立性、事实缺口和页面类型分工。
- **内部去向：**`/compare/agentguard-vs-prompt-security`；`/review`；`/best`
- **事实来源：** 本 Hub 不含具体产品 claim；Compare 结构没有直接合格竞品模板，使用通用 pairwise 决策逻辑与相邻 Best 的 POC 形式
- **发布前要补：**

  1. `/compare/agentguard-vs-prompt-security` 完成双方来源复核后与 Hub 同时上线。
  2. 每个新增 pair 必须有双方当前一手事实；只有单边资料时不发布。
  3. 不使用 `winner`、`better`、`beats`、分数或“independent”措辞，除非未来证据与方法真实支持。

## 26. AgentGuard vs Prompt Security `/compare/agentguard-vs-prompt-security`

- **模板：** Commercial Content / Named Product-to-Product Compare
- **页面状态：** 新增页面（2026-07-28 线上路由返回 `404`；没有旧页可审）
- **目标词 + 辅助词：**`agentguard vs prompt security`；`Prompt Security alternatives`、`AgentGuard alternative`、`Prompt Security comparison`、`AgentGuard and Prompt Security comparison`
- **搜索任务：** 对齐两边已公开产品面，识别不等价与 unknown 字段，并设计同一工作流的公平 POC。
- **真实结构参考页面：** 合格产品对产品 Compare 样本为 `0`。只从 Palo Alto Networks Best Agentic AI Security Solutions 与 General Analysis Best AI Security Platforms 借“共同维度、永久披露、POC checklist”形式；双方事实来自各自一手页面，不从模板样本迁移。
- **页面目标：** 给出 vendor-authored、来源有日期、unknown 可见的双方对比；不推导 Prompt Security 未核实能力，也不宣布赢家。

### 模块 1：Hero

**处理方式：** 新增（无直接 Compare 模板；按双方证据和 POC 任务构建）

- **布局：** 面包屑 + disclosure + H1 + 说明 + 双 CTA + 证据日期。
- **最终页面内容：**

  - **Breadcrumb:**`Resources / Comparisons / AgentGuard vs Prompt Security`
  - **Disclosure:**`Vendor-authored comparison: AgentGuard publishes this page. It is not an independent review.`
  - **H1:**`AgentGuard vs Prompt Security: Compare the Documented Surfaces`
  - **Supporting Copy:**`Use dated first-party evidence to compare public positioning, protected workflows, documented controls, unknowns, and a common proof-of-concept plan.`
  - **Primary CTA:**`Review the Comparison Table` → `#comparison-table`
  - **Secondary CTA:**`Use the POC Checklist` → `#poc-checklist`
  - **Evidence Date:**`Prompt Security solution pages accessed July 26, 2026. AgentGuard evidence uses the current registered public source set.`
- **模块目的：** 第一屏同时说明厂商关系、来源边界和比较任务。

### 模块 2：Scope, Method, and Source Dates

**处理方式：** 新增（因无合格 Compare 模板，先立证据边界）

- **布局：** Scope / Method / Sources / Not established 四栏。
- **最终页面内容：**

  - **H2:**`Scope, Method, and Source Dates`
  - **Scope:**`This page compares only the public surfaces supported by the reviewed first-party sources.`
  - **Method:**`Use common evidence fields, preserve unknowns, and test the same workflow and acceptance criteria for both products.`
  - **AgentGuard Sources:**`Public homepage, Docs, Quickstart, API Reference, and public repository.`
  - **Prompt Security Sources:**`Official agentic AI security and governance solution page and official homegrown GenAI application solution page, accessed July 26, 2026.`
  - **Not Established:**`The current evidence does not establish feature equivalence, complete product scope, performance, pricing parity, or a universal winner.`
- **模块目的：** 让读者先理解资料不对称，不把两页竞品营销页包装成完整产品审计。

### 模块 3：At-a-Glance Comparison

**处理方式：** 新增（双方同字段并列，所有缺口显示 unknown）

- **布局：** 横向对比表；移动端每个字段一张双列卡。
- **最终页面内容：**

  - **H2:**`At-a-Glance Comparison`

| Dimension | AgentGuard | Prompt Security |
|-|-|-|
| `Public focus in reviewed sources` | `AI agent security for developers; named high-risk actions, component scans, and OpenClaw workspace checks` | `MCP Gateway security and governance; security for homegrown AI applications` |
| `Documented product surfaces` | `Runtime Guard; Deep Scan; OpenClaw Environment Patrol; runtime and scan API groups` | `MCP Gateway; homegrown AI application security on the two reviewed solution pages` |
| `Documented control descriptions` | `Pre-execution evaluation for named action categories; scans for named components and risk categories` | `Reviewed pages describe visibility, real-time protection, shadow MCP detection, risk scoring, policy enforcement, audit logs, data-loss prevention, and content moderation` |
| `Deployment evidence` | `Multiple documented integration modes; exact protection depth varies by host and mode` | `unknown from the two reviewed solution pages` |
| `Data boundary` | `Qualified local and cloud-connected statements are public` | `unknown from the two reviewed solution pages` |
| `Pricing` | `unknown` | `unknown` |
| `Explicit public limitation in reviewed sources` | `Cannot fully monitor or block all third-party MCP server runtime calls` | `unknown from the two reviewed solution pages` |
| `Source date` | `Registered AgentGuard public source set; refresh before publication` | `Official solution pages accessed 2026-07-26` |

- **模块目的：** 提供可扫描的双方事实，不用空白或推断遮住证据不对称。

### 模块 4：Documented Product Surfaces

**处理方式：** 新增（把双方事实分开陈述，不做实现等价推断）

- **布局：** 两列产品档案；每列相同 4 个字段。
- **最终页面内容：**

  - **H2:**`Documented Product Surfaces`
  - **AgentGuard**
  
    - **Runtime:**`Runtime Guard is publicly described for named action categories before execution.`
    - **Components:**`Deep Scan is publicly described for skills, plugins, MCP servers, and agents across named risk categories.`
    - **Workspace:**`OpenClaw Environment Patrol is publicly described for suspicious skills, modified plugins, new MCP servers, and drift in trusted files.`
    - **Developer Surface:**`Docs, CLI, public repository, and runtime and scan API groups are available as first-party evidence.`
  - **Prompt Security**
  
    - **MCP Surface:**`The reviewed official page describes an MCP Gateway with visibility, real-time protection, shadow MCP detection, risk scoring, policy enforcement, and audit logs.`
    - **Application Surface:**`The reviewed homegrown-application page describes data-loss prevention, content moderation, visibility, and compliance-related capabilities.`
    - **Architecture:**`The exact architecture, hosting, integration path, and data flow are unknown from the two reviewed pages.`
    - **Boundary:**`These are Prompt Security first-party statements and do not prove equivalent AgentGuard capabilities or complete Prompt Security scope.`
- **模块目的：** 让两边各自站在一手资料上，不用一方术语解释另一方。

### 模块 5：Protected Workflow and Control Points

**处理方式：** 新增（按实际工作流比较，而不是按功能名）

- **布局：** 5 行 workflow matrix。
- **最终页面内容：**

  - **H2:**`Compare the Protected Workflow`

| Workflow question | AgentGuard evidence | Prompt Security evidence | POC requirement |
|-|-|-|-|
| `Where does the control enter the workflow?` | `Hooks, plugins, skills or commands, CLI, and APIs are described; depth varies` | `Gateway and application surfaces are described; exact integration path unknown` | `Draw the actual request and action path for each product` |
| `Which actions or components are in scope?` | `Named runtime actions and component types are public` | `MCP gateway and homegrown application controls are described at solution level` | `Use the same target workflow and list observed coverage` |
| `Can the product affect behavior before impact?` | `Pre-execution evaluation is described for named actions` | `Real-time protection and policy enforcement are described; exact decision path requires verification` | `Test expected allow and block cases` |
| `What evidence is produced?` | `Risk metadata, decisions, policy versions, audit events, and scan/API results are described at different surfaces` | `Risk scoring and audit logs are described; exact record fields unknown` | `Capture evidence fields and investigation usability` |
| `What remains outside coverage?` | `Third-party MCP runtime limitation is explicit; other host-depth gaps require verification` | `Equivalent explicit limitations are unknown from reviewed pages` | `Record unsupported and indirect paths for both products` |

- **模块目的：** 把双方产品面转换成真实 POC 路径，防止同名能力被当成同实现。

### 模块 6：Deployment, Data, Pricing, and Limits

**处理方式：** 新增（专门展示购买决策中的未知项）

- **布局：** 4 个字段面板，每个面板双方并列。
- **最终页面内容：**

  - **H2:**`Deployment, Data, Pricing, and Limits`
  - **Deployment**
  
    - `AgentGuard: Multiple public integration modes are documented; complete host-by-host depth remains unknown.`
    - `Prompt Security: unknown from the two reviewed solution pages.`
  - **Data**
  
    - `AgentGuard: Public materials provide qualified local and cloud-connected statements; final privacy and retention terms still require authoritative policy review.`
    - `Prompt Security: unknown from the two reviewed solution pages.`
  - **Pricing**
  
    - `AgentGuard: unknown.`
    - `Prompt Security: unknown.`
  - **Coverage Limits**
  
    - `AgentGuard: Third-party MCP server runtime calls are not fully monitorable or blockable according to the public FAQ.`
    - `Prompt Security: Equivalent explicit coverage limits are unknown from the reviewed pages.`
  - **Decision Rule:**`Do not interpret unknown as absent, unsupported, free, cloud-only, self-hosted, or unlimited. Verify it directly.`
- **模块目的：** 把最容易被编造的竞品字段集中暴露，并解释 `unknown` 不等于 `no`。

### 模块 7：POC Checklist

**处理方式：** 新增（用双方相同任务形成可执行比较）

- **布局：** 8 行 POC 表；每行有任务、共同输入、验收证据。
- **最终页面内容：**

  - **H2:**`Run the Same Proof of Concept`

| POC task | Common input | Evidence to retain |
|-|-|-|
| `1. Integration map` | `The same target host, application, MCP path, users, and environment constraints` | `Architecture path, setup steps, required privileges, and unsupported connections` |
| `2. Known-safe action` | `One expected command, tool call, or application request` | `Decision, reason, latency, record fields, and operator effort` |
| `3. High-risk action` | `One pre-defined risky action relevant to the workflow` | `Allow, block, flag, or review result against the expected outcome` |
| `4. Component or gateway change` | `One controlled component, tool, or MCP configuration change` | `Detection or policy response, evidence, and update workflow` |
| `5. Data path` | `One test input with a known data classification` | `What remains local, what is sent, what is redacted, and what is retained` |
| `6. Investigation` | `One recorded event or finding` | `Traceability, policy context, source, and follow-up workflow` |
| `7. Residual path` | `One route outside the primary integration` | `Whether it is visible or controllable and who owns the remaining risk` |
| `8. Operations and cost` | `The same pilot duration and team roles` | `Maintenance, exceptions, support dependency, pricing, and total operating effort` |

- **模块目的：** 让这页在证据不全时仍然能支持真实购买决策，而不是停留在文案比较。

### 模块 8：Questions to Resolve Before Selection

**处理方式：** 新增（不给 winner，给双方核验清单）

- **布局：** AgentGuard / Prompt Security / Both 三列。
- **最终页面内容：**

  - **H2:**`Questions to Resolve Before You Choose`
  - **AgentGuard:**`Which integration mode applies?`；`Which actions are enforceable?`；`How is MCP residual risk handled?`；`What are the current plans and enterprise terms?`
  - **Prompt Security:**`What is the deployment and hosting model?`；`What data crosses the gateway or application integration?`；`Which runtime and MCP paths are outside coverage?`；`What are the current plans and technical documentation?`
  - **Both:**`Which first-party source supports the answer?`；`When was it checked?`；`Can the answer be demonstrated in the target environment?`；`Which residual gap remains?`
- **模块目的：** 将 unknown 转成售前和 POC 必答问题，不通过推测补齐。

### 模块 9：Verify Before You Choose

**处理方式：** 新增（明确无胜负结论）

- **布局：** 结论框 + 双方外部一手来源 + AgentGuard 内部下一步。
- **最终页面内容：**

  - **H2:**`Verify Before You Choose`
  - **Conclusion:**`The reviewed evidence shows different documented entry points and control surfaces, but it does not establish complete scope or product equivalence. Resolve deployment, data, pricing, limitations, and the target POC outcomes before selecting either product.`
  - **AgentGuard CTA:**`Read AgentGuard Docs` → `/docs`
  - **Prompt Security Source 1:**`Review Prompt Security's Agentic AI Security and Governance page` → [https://prompt.security/solutions/agentic-ai-security-and-governance](https://prompt.security/solutions/agentic-ai-security-and-governance)
  - **Prompt Security Source 2:**`Review Prompt Security's Homegrown GenAI Apps page` → [https://prompt.security/solutions/homegrown-genai-apps](https://prompt.security/solutions/homegrown-genai-apps)
  - **Commercial CTA:**`Contact AgentGuard with the POC Scope` → `/contact`
- **模块目的：** 把读者送回双方一手资料，并明确当前证据不能推出 winner。

### 模块 10：FAQ

**处理方式：** 新增（覆盖品牌对比与 unknown）

- **布局：** 5 个折叠项。
- **最终页面内容：**

  - **H2:**`Frequently Asked Questions`
  - **Q:**`Is this comparison independent?`
  
    - **A:**`No. AgentGuard publishes this vendor-authored comparison.`
  - **Q:**`Are AgentGuard and Prompt Security equivalent in scope?`
  
    - **A:**`The reviewed evidence does not establish equivalent scope, architecture, or outcomes.`
  - **Q:**`Which Prompt Security facts remain unknown?`
  
    - **A:**`Current pricing, hosting, detailed deployment, data flow, complete documentation, and explicit coverage limitations remain unknown from the two reviewed solution pages.`
  - **Q:**`Does unknown mean Prompt Security lacks a capability?`
  
    - **A:**`No. Unknown means the reviewed evidence does not establish the fact.`
  - **Q:**`What makes a fair POC?`
  
    - **A:**`Use the same workflow, environment, inputs, expected outcomes, data constraints, evidence requirements, operating roles, and acceptance criteria for both products.`
- **模块目的：** 消除 unknown = absent 和相似词 = 等价这两个最危险的误读。
- **内部去向：**`/review/agentguard`；`/features/runtime-guard`；`/features/deep-scan`；`/docs`；`/security`；`/pricing`；`/contact`
- **事实来源：** AgentGuard：`official_homepage`、`official_docs_quickstart`、`official_docs_api`、`github_agentguard_repo`；Prompt Security：[https://prompt.security/solutions/agentic-ai-security-and-governance](https://prompt.security/solutions/agentic-ai-security-and-governance) 与 [https://prompt.security/solutions/homegrown-genai-apps](https://prompt.security/solutions/homegrown-genai-apps)（均访问于 2026-07-26）
- **发布前要补：**

  1. 重新检查双方当前一手页面并记录访问日期；当前 Prompt Security 证据只覆盖两页。
  2. 补 Prompt Security 的 pricing、hosting、deployment、data flow、explicit coverage limits 和完整技术文档；拿不到就继续显示 `unknown`。
  3. 补 AgentGuard 当前 pricing、完整 host integration depth 和权威隐私措辞。
  4. POC 未实际执行前，不得写性能、误报、延迟、阻断效果或 winner 结论。
  5. 页面显著保留 vendor-authored disclosure；不得包装为 independent comparison。

## 27. Glossary `/glossary`

- **模板：** Educational Content / Glossary Hub
- **页面状态：** 新增页面（2026-07-28 线上路由返回 `404`；没有旧页可审）
- **目标词 + 辅助词：**`ai agent security glossary`；`AI agent security terms`、`agentic AI security glossary`、`MCP security terms`、`AI agent attack definitions`
- **搜索任务：** 快速找到 AI agent security 术语定义，理解术语边界，再进入相关 Guide 或窄产品控制。
- **真实结构参考页面：** Zenity Glossary（[https://www.zenity.io/glossary/](https://www.zenity.io/glossary/)，借 A-Z 入口与独立词条 URL）；HiddenLayer Innovation Hub Glossary（[https://www.hiddenlayer.com/innovation-hub/glossary](https://www.hiddenlayer.com/innovation-hub/glossary)，借概念索引）；Zenity MCP Explained（[https://zenity.io/academy/model-context-protocol-explained](https://zenity.io/academy/model-context-protocol-explained)，只借深度术语页的“定义—系统位置—影响—行动”结构）
- **页面目标：** 建立概念优先的术语索引；当前只有一个完成结构的词条，必须用真实单条库存而不是假 A-Z。

### 模块 1：Hero

**处理方式：** 新增（借鉴 Glossary Hub 的直接检索入口）

- **布局：** H1 + 说明 + 搜索框 + 双 CTA。
- **最终页面内容：**

  - **Breadcrumb:**`Resources / Glossary`
  - **H1:**`AI Agent Security Glossary`
  - **Supporting Copy:**`Find concept-first definitions, scope boundaries, adjacent terms, and practical follow-up paths for AI agent security.`
  - **Search Label:**`Search published terms`
  - **Search Placeholder:**`Search terms, risks, components, or controls`
  - **Primary CTA:**`Learn About Agent Tool Poisoning` → `/glossary/agent-tool-poisoning`
  - **Secondary CTA:**`Browse Security Guides` → `/guides`
- **模块目的：** 直接服务定义查询；搜索只覆盖真实发布词条。

### 模块 2：Browse Published Terms A-Z

**处理方式：** 新增（借鉴 A-Z 索引；修正当前没有真实词条库存的问题）

- **布局：** A-Z 字母条 + 结果区；无词条字母禁用并显示数量 `0`。
- **最终页面内容：**

  - **H2:**`Browse Published Terms A-Z`
  - **Index Rule:**`Letters without a reviewed, working glossary route remain inactive.`
  - **Active Letter:**`A`
  - **Published Entry:**`Agent Tool Poisoning` → `/glossary/agent-tool-poisoning`
  - **Entry Description:**`The manipulation of a tool surface or behavior that can steer an agent toward an unsafe decision or action.`
  - **Empty-State Copy:**`No other reviewed glossary entries are published yet.`
- **模块目的：** 保留 A-Z 的可扩展结构，但不把关键词候选表当成已发布库存。

### 模块 3：Browse by Topic

**处理方式：** 新增（借鉴主题分类；只展示有真实词条的分类）

- **布局：** 主题卡；未有 published entry 的分类显示“Guide path”，不伪装词条。
- **最终页面内容：**

  - **H2:**`Browse by Topic`
  - **Topic — Tools and Supply Chain**
  
    - `Published definition: Agent Tool Poisoning` → `/glossary/agent-tool-poisoning`
  - **Topic — MCP**
  
    - `No reviewed glossary entry is published yet.`
    - `Related guidance: MCP & Agent Security` → `/solutions/mcp-security`
  - **Topic — Runtime Actions**
  
    - `No reviewed glossary entry is published yet.`
    - `Related control: Runtime Guard` → `/features/runtime-guard`
  - **Topic — Components**
  
    - `No additional reviewed glossary entry is published yet.`
    - `Related control: Deep Scan` → `/features/deep-scan`
- **模块目的：** 让 topic browse 有用，但严格区分 Glossary entry、Guide 和 Feature。

### 模块 4：Featured Definition

**处理方式：** 新增（借鉴 Glossary Hub 的置顶词条）

- **布局：** 大型 featured card。
- **最终页面内容：**

  - **H2:**`Featured Definition`
  - **Term:**`Agent Tool Poisoning`
  - **Definition:**`Agent tool poisoning is the manipulation of a tool's metadata, configuration, implementation, dependency, output, or behavior so an agent is steered toward an unsafe decision or action.`
  - **What the Entry Covers:**`Entry points`；`Attack path`；`Potential impact`；`Prompt injection boundary`；`Verification controls`
  - **CTA:**`Read the Definition` → `/glossary/agent-tool-poisoning`
- **模块目的：** 给唯一完成结构的词条最高可见度，不用多卡制造假规模。

### 模块 5：Editorial Standard

**处理方式：** 新增（借鉴 Glossary 的来源和更新时间字段）

- **布局：** 6 项编辑标准。
- **最终页面内容：**

  - **H2:**`How Glossary Definitions Are Built`
  - `Define the term in the first paragraph.`
  - `Show where it appears in the system or workflow.`
  - `State what the term does not mean.`
  - `Distinguish adjacent concepts.`
  - `Cite topic-specific sources and show the evidence review date.`
  - `Link to an AgentGuard control only when the connection is narrow and publicly supported.`
  - **Boundary:**`A glossary definition does not imply that AgentGuard implements every control or detects every attack discussed.`
- **模块目的：** 防止定义页偷渡产品能力，并建立未来扩词条的统一标准。

### 模块 6：From Definition to Practice

**处理方式：** 新增（借鉴 Educational 模板先教育、后行动）

- **布局：** 三步路径。
- **最终页面内容：**

  - **H2:**`Move from Definition to Practice`
  - **Step 1:**`Understand the term and its system boundary.` → `/glossary/agent-tool-poisoning`
  - **Step 2:**`Place the risk in a broader security method.` → `/guides/ai-agent-security`
  - **Step 3:**`Inspect a related documented control without treating it as a guarantee.` → `/features/deep-scan`
- **模块目的：** 让词条承担定义、Guide 承担实施、Feature 承担产品证据，三者职责清楚。

### 模块 7：FAQ

**处理方式：** 新增（覆盖词条选择、更新与产品边界）

- **布局：** 4 个折叠项。
- **最终页面内容：**

  - **H2:**`Frequently Asked Questions`
  - **Q:**`How are glossary terms selected?`
  
    - **A:**`A term must clarify an agent-security concept and support a real learning or implementation path.`
  - **Q:**`Why are some letters or topics empty?`
  
    - **A:**`The index lists only reviewed definitions with working routes. Candidate terms are not displayed as published content.`
  - **Q:**`Does a glossary definition describe an AgentGuard feature?`
  
    - **A:**`Not by default. A product connection requires separate current first-party evidence.`
  - **Q:**`Where can I find practical implementation steps?`
  
    - **A:**`Continue to a relevant Guide or current product documentation.`
- **模块目的：** 解释真实库存和 Glossary / Guide / Feature 的任务边界。
- **内部去向：**`/glossary/agent-tool-poisoning`；`/guides`；`/guides/ai-agent-security`；`/solutions/mcp-security`；`/features/deep-scan`；`/features/runtime-guard`
- **事实来源：** Hub 方法不含产品 claim；产品落点范围来自 `official_homepage`
- **发布前要补：**

  1. `/glossary/agent-tool-poisoning` 与 Hub 同时上线并返回成功状态。
  2. A-Z 只从已发布路由自动生成；不得把 P1/P2 候选关键词直接显示成词条。
  3. 为每个词条补 topic-specific 来源、证据复核日期和编辑负责人。

## 28. Agent Tool Poisoning `/glossary/agent-tool-poisoning`

- **模板：** Educational Content / Deep Glossary Entry
- **页面状态：** 新增页面（2026-07-28 线上路由返回 `404`；没有旧页可审）
- **目标词 + 辅助词：**`agent tool poisoning`；`tool poisoning attack`、`AI agent tool poisoning`、`MCP tool poisoning`、`malicious agent tools`、`tool poisoning vs prompt injection`
- **搜索任务：** 理解 agent tool poisoning 的定义、进入路径、影响、与 prompt injection 的边界，以及团队应该验证什么。
- **真实结构参考页面：** Zenity MCP Explained（[https://zenity.io/academy/model-context-protocol-explained](https://zenity.io/academy/model-context-protocol-explained)，借“定义—系统位置—影响—行动”）；General Analysis Claude Code Security Best Practices（[https://generalanalysis.com/guides/anthropic-claude-code-security-best-practices](https://generalanalysis.com/guides/anthropic-claude-code-security-best-practices)，借攻击面和检查清单）；HiddenLayer Securing AI Agents Questions（[https://www.hiddenlayer.com/insight/securing-ai-agents-the-questions-that-actually-matter](https://www.hiddenlayer.com/insight/securing-ai-agents-the-questions-that-actually-matter)，借验证问题）。这些页面只提供结构，不是 tool poisoning 的主题事实来源。
- **页面目标：** 先把概念讲清，再提供来源、权限、组件与 runtime 验证清单；AgentGuard 产品连接只限 Deep Scan 已公开对象和风险类别。

### 模块 1：Hero

**处理方式：** 新增（借鉴深度术语页直接定义的首屏）

- **布局：** 面包屑 + 词条类型 + H1 + 一句话定义 + 双 CTA + Evidence status。
- **最终页面内容：**

  - **Breadcrumb:**`Resources / Glossary / Agent Tool Poisoning`
  - **Eyebrow:**`GLOSSARY DEFINITION`
  - **H1:**`What Is Agent Tool Poisoning?`
  - **Supporting Copy:**`Agent tool poisoning is the manipulation of a tool's metadata, configuration, implementation, dependency, output, or behavior so an agent is steered toward an unsafe decision or action.`
  - **Primary CTA:**`Review What Teams Should Verify` → `#verification-checklist`
  - **Secondary CTA:**`Read the AI Agent Security Guide` → `/guides/ai-agent-security`
  - **Evidence Status:**`Working editorial definition. Topic-specific authoritative sources are required before publication.`
- **模块目的：** 首段直接满足定义查询，同时不掩盖主题事实来源尚未补齐。

### 模块 2：Definition and Scope

**处理方式：** 新增（借鉴 Glossary 词条先定义再画边界）

- **布局：** Definition / In scope / Not automatically in scope 三栏。
- **最终页面内容：**

  - **H2:**`Agent Tool Poisoning Definition`
  - **Definition:**`Agent tool poisoning describes a compromised or manipulated tool surface that changes what an agent is told, what the tool can do, what it returns, or how the agent chooses and executes a downstream action.`
  - **In Scope:**`Tool descriptions and metadata`；`Plugin or skill code`；`Dependencies`；`Configuration`；`Updates`；`Returned content`；`Runtime behavior`
  - **Not Automatically in Scope:**`Every unsafe tool call`；`Every prompt injection`；`Every compromised model`；`Proof that a specific product detects the behavior`
- **模块目的：** 给概念一个清楚的对象和排除项，防止它变成“所有 Agent 风险”的兜底词。

### 模块 3：Where the Risk Enters

**处理方式：** 新增（借鉴术语页的系统位置解释）

- **布局：** 6 张入口卡。
- **最终页面内容：**

  - **H2:**`Where the Risk Can Enter`
  - **Tool Description:**`Instructions or metadata may influence when and how the agent selects the tool.`
  - **Implementation:**`The code behind a tool, plugin, or skill may perform behavior beyond the expected function.`
  - **Dependency:**`A package or downstream service may change the behavior of an otherwise trusted component.`
  - **Configuration:**`Endpoints, permissions, environment variables, or defaults may redirect or expand the tool's reach.`
  - **Update:**`A previously reviewed component may change after trust is established.`
  - **Returned Content:**`Tool output may influence later reasoning, tool choice, data access, or actions.`
- **模块目的：** 让读者定位风险在系统中的进入点，而不是只记住一个抽象术语。

### 模块 4：Attack Path

**处理方式：** 新增（借鉴 Guide 的路径式解释）

- **布局：** 5 步横向流程。
- **最终页面内容：**

  - **H2:**`A Typical Tool-Poisoning Path`
  - **Step 1 — Discovery:**`The agent or user discovers a tool, skill, plugin, package, or MCP server.`
  - **Step 2 — Trust:**`The component is approved, installed, or made available with a set of permissions.`
  - **Step 3 — Influence:**`Manipulated metadata, code, configuration, dependency, update, or output changes the expected behavior.`
  - **Step 4 — Action:**`The agent selects a tool, sends data, executes a command, reaches a network destination, or triggers a downstream action.`
  - **Step 5 — Impact and Evidence:**`The result depends on available permissions, reachable systems, and whether the decision path was observed or recorded.`
- **模块目的：** 把定义转换成可审查的事件序列，帮助团队找控制点。

### 模块 5：Potential Impact

**处理方式：** 新增（按权限和可达系统限定后果）

- **布局：** 5 张影响卡 + 条件提示。
- **最终页面内容：**

  - **H2:**`Potential Impact`
  - **Tool Selection:**`The agent may choose an unsafe or unintended tool.`
  - **Data Access:**`The tool may request or receive data outside the expected task.`
  - **Command or File Action:**`The workflow may trigger commands, file access, or sensitive writes.`
  - **Network and Credential Use:**`The tool may influence network requests or credential handling.`
  - **Downstream Influence:**`Returned content may affect later tool calls or decisions.`
  - **Condition:**`Actual impact depends on the agent's permissions, host controls, available data, connected systems, and runtime checks.`
- **模块目的：** 解释后果，但不把“可能”写成必然，更不声称 AgentGuard 已覆盖全部后果。

### 模块 6：Tool Poisoning vs Prompt Injection

**处理方式：** 新增（覆盖辅助词并明确相邻术语）

- **布局：** 四列表：概念、主要对象、影响路径、重叠关系。
- **最终页面内容：**

  - **H2:**`Tool Poisoning vs Prompt Injection`

| Question | Tool poisoning | Prompt injection |
|-|-|-|
| `Primary object` | `A tool surface or behavior, including metadata, code, configuration, dependency, update, or output` | `Instructions or context that influence model or agent behavior` |
| `System path` | `Trust in a component and the actions or content it introduces` | `Manipulated instructions entering the model or agent context` |
| `Potential overlap` | `A poisoned tool may use injected instructions or return manipulated content` | `An injected instruction may direct the agent to misuse a tool` |
| `Review question` | `Has the tool surface or behavior changed what the agent can trust or do?` | `Has untrusted instruction content changed the agent's intended behavior?` |

- **Boundary Note:**`Prompt injection can be one mechanism within a tool-poisoning path, but the two terms are not interchangeable.`
- **模块目的：** 直接服务 `tool poisoning vs prompt injection` 查询，并防止概念混用。

### 模块 7：MCP Tool Poisoning Boundary

**处理方式：** 新增（覆盖辅助词，但不把 tool poisoning 限定为 MCP）

- **布局：** 概念说明 + MCP-specific checklist。
- **最终页面内容：**

  - **H2:**`How MCP Tool Poisoning Fits the Concept`
  - **Body:**`MCP tool poisoning can be an MCP-specific instance when manipulated tool descriptions, server behavior, configuration, updates, or returned content influence an agent through an MCP connection. Tool poisoning is not limited to MCP.`
  - **MCP Questions:**`Who operates the server?`；`Which tools and descriptions are exposed?`；`Which permissions and data paths are available?`；`How are updates reviewed?`；`Which runtime calls are observable or blockable?`
  - **Related Guidance:**`Review MCP & Agent Security` → `/solutions/mcp-security`
- **模块目的：** 覆盖 MCP 变体，同时保持上位概念边界。

### 模块 8：Verification Checklist

**处理方式：** 新增（借鉴实操 Guide 的组件与 runtime 检查清单）

- **布局：** Before trust / At runtime / After change 三组清单。
- **最终页面内容：**

  - **H2:**`What Teams Should Verify`
  - **Before Trust**
  
    - `[ ] Publisher, source, repository, and package identity`
    - `[ ] Requested permissions and reachable data`
    - `[ ] Dependencies, configuration, endpoints, and defaults`
    - `[ ] Tool descriptions, instructions, and expected behavior`
  - **At Runtime**
  
    - `[ ] Tool identity, arguments, destination, and requested action`
    - `[ ] Expected allow, block, flag, or review result`
    - `[ ] Evidence retained without exposing raw sensitive content`
    - `[ ] Indirect or unsupported action paths`
  - **After Change**
  
    - `[ ] Version, configuration, permission, dependency, and publisher changes`
    - `[ ] New or changed tool descriptions and returned content`
    - `[ ] Re-scan, re-test, exception review, and residual-risk owner`
- **模块目的：** 让词条不止给定义，还给最小可执行验证路径。

### 模块 9：Related AgentGuard Controls

**处理方式：** 新增（只连接事实库允许的窄产品面）

- **布局：** Deep Scan / Runtime Guard 两张卡 + 明确免责声明。
- **最终页面内容：**

  - **H2:**`Related AgentGuard Controls`
  - **Deep Scan:**`AgentGuard publicly documents Deep Scan for skills, plugins, MCP servers, and agents, including malicious tools and backdoors as named risk categories.` → `/features/deep-scan`
  - **Runtime Guard:**`AgentGuard publicly documents Runtime Guard for named high-risk action categories before execution. Whether a specific tool path is covered depends on the integration.` → `/features/runtime-guard`
  - **Boundary:**`These public facts do not support a claim that AgentGuard detects every poisoned tool, every prompt injection, or every third-party MCP runtime call.`
- **模块目的：** 从教育内容连接产品，但不把相关能力夸成全面检测或保证。

### 模块 10：FAQ

**处理方式：** 新增（覆盖定义、差异、MCP 与产品限制）

- **布局：** 5 个折叠项。
- **最终页面内容：**

  - **H2:**`Frequently Asked Questions`
  - **Q:**`What is agent tool poisoning?`
  
    - **A:**`It is the manipulation of a tool's metadata, configuration, implementation, dependency, output, or behavior so an agent is steered toward an unsafe decision or action.`
  - **Q:**`How is tool poisoning different from prompt injection?`
  
    - **A:**`Prompt injection targets instructions or context. Tool poisoning targets the trusted tool surface or behavior, although prompt injection can be one mechanism within that path.`
  - **Q:**`Is MCP tool poisoning the same concept?`
  
    - **A:**`It is an MCP-specific instance when the manipulated tool surface reaches the agent through an MCP server or connection. Tool poisoning is not limited to MCP.`
  - **Q:**`What determines the impact of a poisoned tool?`
  
    - **A:**`The agent's permissions, available data, reachable systems, host controls, runtime checks, and the actions the tool can influence.`
  - **Q:**`Can AgentGuard Deep Scan guarantee that a tool is safe?`
  
    - **A:**`No. Public evidence supports named component targets and risk categories, not universal detection or a guarantee of safety.`
- **模块目的：** 用最小事实边界覆盖核心长尾问题。
- **内部去向：**`/features/deep-scan`；`/features/runtime-guard`；`/guides/ai-agent-security`；`/glossary`；`/solutions/mcp-security`
- **事实来源：** AgentGuard 产品连接来自 `official_homepage`；页面结构来自筛选通过的 Educational 样本。通用 tool-poisoning 定义与路径目前缺 topic-specific 权威来源，不能把结构参考页当事实来源。
- **发布前要补：**

  1. 为 tool poisoning 的定义、进入路径、影响和与 prompt injection 的边界补主题权威来源、引用位置与访问日期。
  2. 用当前 SERP 核对 `agent tool poisoning`、`tool poisoning`、`MCP tool poisoning` 的主流术语口径；不因词形变化把定义页改成产品页。
  3. 客户确认 `Agent Tool Poisoning` 与未来可能的 `/glossary/tool-poisoning` 是否合并，避免同意图重复 URL。
  4. 不写 universal detection、guaranteed safe、complete MCP coverage 或其他无证据 claim。