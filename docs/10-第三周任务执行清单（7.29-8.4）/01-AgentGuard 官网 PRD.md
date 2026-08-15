<!--
Source: https://acntglrfp7bm.feishu.cn/wiki/VJNewgucRi9m9OkTWQecwk7wnxh
Feishu document id: QRAEdjwncoEbaexjoYdcmDDonUd
Revision: 110
Exported at: 2026-08-15T13:31:06Z
-->
# AgentGuard 官网 PRD

## 1. 需求背景

当前官网需要增加更多页面模块承载 SEO 内容，因此需要完成相关页面的需求与原型设计。

## 2.原型

[Attachment: index.html](<_assets/QRAEdjwncoEbaexjoYdcmDDonUd/001.html>)

## 3. 信息架构与导航

```text
AgentGuard Website
├── Homepage
├── Features
│   ├── Runtime Guard
│   ├── Deep Scan
│   ├── Red-Team
│   └── Govern
├── Solutions
│   ├── AI CISO
│   ├── Developers
│   ├── Security Teams
│   ├── Enterprise
│   └── MCP Security
├── Resources
│   ├── Docs
│   ├── API Reference
│   └── Blog
│       ├── All Blog Posts
│       ├── Guides
│       ├── Best
│       ├── Review
│       ├── Compare
│       └── Glossary
├── Pricing
├── Security
├── Contact
└── Company / Legal
```

| 模块 | 导航位置 | 原型路由 | 说明 | 优先级 |
|-|-|-|-|-|
| Homepage | Logo | `#home` | Logo 返回首页 | P0 |
| Features | 顶部下拉 | `#features/[slug]` | Feature 页面组 | P0 |
| Solutions | 顶部下拉 | `#ai-ciso`、`#solutions/[slug]` | 角色与场景页面组 | P0 |
| Resources | 顶部两列下拉 | `#docs*`、`#blog*`、`#[type]/*` | Docs 与 Blog 分列 | P1 |
| Pricing | 顶部直接入口 | `#pricing` | 无下拉 | P2 |
| Security | 顶部直接入口 | `#security` | 单页，无下拉 | P2 |
| Company / Legal | Footer | `#about`、`#contact`、`#privacy-policy`、`#terms` | 不进入顶部导航 | P2 |

原型统一使用小写 Hash 路由；未知路由显示 404。正式 Canonical、重定向和多语言规则上线前确认。

除 Homepage 外，所有页面按上方信息架构显示完整面包屑；存在真实页面的层级可点击，当前页使用 `aria-current="page"`。

## 4. 页面需求

各页面 Metadata 统一维护在路由配置中，页面渲染时读取 Title、Description 和 URL Slug，分别写入 `<title>`、`<meta name="description">` 和正式页面路径。

```json
{
  "title": "AI Agent Security Platform | AgentGuard",
  "description": "Discover, validate, test, and protect AI agent systems with AgentGuard.",
  "urlSlug": "/"
}
```

### 4.1 Homepage

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AI Agent Security Platform \| AgentGuard | Discover, validate, test, and protect AI agent systems with AgentGuard. | `/` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | Your AI CISO Secure ENterprise At Every Layer |
| - | Supporting copy | Empower development and security teams with agentic AI to find and fix risks across code, applications, and infrastructure, while securing AI systems and agents from development to deployment. |
| - | Trust line | Open source · Local first · Powered by GoPlus |
| - | CTA | Start Free · Book a Demo |
| Install AgentGuard | Methods | macOS / Linux · Windows · npm · Skill · MCP Server |
| - | Skill | `cp -r agentguard/skills/agentguard ~/.claude/skills/agentguard` |
| - | MCP Server | `claude mcp add agentguard -- npx -y @anthropic-ai/mcp-remote@latest https://github.com/GoPlusSecurity/agentguard` |
| Operational Metrics | Body | 10,000+ Actions Evaluated · 500+ Threats Blocked · 6 Policy Rules · `<50ms` Avg Decision Time |
| Why AI Agent Security Matters | H2 | Why AI Agent Security Matters |
| - | Body | AI agents do more than generate text. They call tools, access data, execute commands, and interact with external services. Each action creates a security decision that text-only controls may not cover. |
| - | Agents Can Take Real Actions | Commands, file changes, API calls and automated workflows can create immediate consequences. |
| - | Skills, Plugins and MCP Servers Add Supply-Chain Risk | Third-party components introduce code, permissions, dependencies and external services into the agent workflow. |
| - | Prompt Injection Can Influence Tool Behavior | Manipulated instructions can change which tools an agent chooses and how those tools are used. |
| - | Static Scanning Is Not Enough | Components can be reviewed before use, while high-impact actions still need a runtime decision. |
| Runtime Decisions + Workflow | H2 | Evaluate High-Risk Agent Actions Before They Execute |
| - | Body | AgentGuard evaluates documented shell, file, tool, network, secret, sensitive-write, and webhook-exfiltration action categories before execution. |
| - | Step 01 | Agent Requests an Action. |
| - | Step 02 | Runtime Guard Evaluates Context. |
| - | Step 03 | The Integration Handles the Decision. |
| Protection Coverage | H2 | Three Layers of Protection for AI Agents |
| - | Runtime Guard | Evaluate documented high-risk action categories before execution. |
| - | Deep Scan | Review agent-related components for documented security risks before you trust them. |
| - | OpenClaw Environment Patrol | Monitor documented security-relevant changes inside an OpenClaw workspace. |
| Security Detectors | H2 | Six Security Detectors. One Scan. |
| - | Body | Credential Exposure Detection · Prompt Injection Detection · Malicious Command Detection · Data Exfiltration Detection · Permission Abuse Analysis · URL Analysis |
| Product Tour + Real Agent Workflows | H2 | See AgentGuard in Real Agent Workflows |
| - | Protect High-Impact Coding-Agent Actions | Evaluate documented shell, file, network, secret, write, and tool-action categories before execution through a supported integration path. |
| - | Review Skills, Plugins and MCP Components | Scan documented component types before adding them to a trusted agent workflow. |
| - | Give AI CISOs and Security Teams Verifiable Evidence | Review documented findings, qualified audit events, integration boundaries, and public advisories. |
| Threat Intelligence | H2 | First-Party Advisories for AI Agent Threats |
| - | Body | Review public AgentGuard advisories covering documented threats across agent components, software supply chains, phishing URLs, and prompt-injection payloads. |
| Pricing | H2 | Start with the Protection Level You Need |
| - | Body | Free · Personal · Starter · Pro · Enterprise |
| FAQ | H2 | Frequently Asked Questions |
| Final CTA | H2 | Add a Security Decision to Your Agent Workflow |
| - | Body | Start with the official Quickstart, or talk to the AgentGuard team about integration depth, data handling and deployment requirements. |

### 4.2 Features

#### 4.2.1 Runtime Guard

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| Runtime Guard for AI Agents \| AgentGuard | Evaluate documented shell, file, tool, network, secret, sensitive-write, and webhook-exfiltration action categories through the integration path available in your environment. | `/features/runtime-guard` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | Runtime Guard for AI Agent Actions |
| - | Supporting copy | Evaluate documented shell, file, tool, network, secret, sensitive-write, and webhook-exfiltration action categories through the integration path available in your environment. |
| - | Primary CTA | Open Quickstart |
| - | Secondary CTA | Read Docs |
| Boundary Note | Body | Coverage and enforcement depth depend on the selected integration. |
| Runtime Action Surface | H2 | Runtime Action Surface |
| - | Body | AgentGuard publicly names seven high-risk action categories. Use them to define the actions your integration must observe. |
| - | Action categories | Shell Commands · File Access · Tool Actions · Network Requests · Secret Access · Sensitive Writes · Webhook Exfiltration |
| - | Section note | Named categories describe the documented surface; they do not establish universal interception or blocking. |
| Decide Before Execution | H2 | Decide Before Execution |
| - | Body | The selected hook, plugin, skill, command, or API path exposes an action for evaluation. |
| - | Detail | The documented API surface includes tool-call, file, text, and runtime-decision endpoints. |
| - | Detail | Test the configured allow, block, or other returned behavior in a controlled workflow before production use. |
| - | Evidence note | Public API documentation establishes endpoint groups, not latency, accuracy, or a universal enforcement outcome. |
| Verify Integration Depth | H2 | Verify Integration Depth |
| - | Body | First-party materials list different integration patterns across supported environments. Evaluate each workflow separately. |
| - | Tool Hooks | Claude Code is documented with pre- and post-tool hooks. Hermes is documented with native tool hooks. |
| - | Plugin Hooks and Patrol | OpenClaw is documented with plugin hooks, auto-scanning, and patrol capabilities. |
| - | Skills and Commands | Codex CLI, Gemini CLI, Cursor, and GitHub Copilot are listed with skill- or command-based paths. |
| - | MCP Hosts | MCP hosts are listed as an entry point, but third-party MCP runtime coverage remains limited and must be verified. |
| - | CTA | Review Integration Guidance |
| Trace Data Flow | H2 | Trace Data Flow |
| - | Body | Public materials say full code, prompts, secrets, and file contents are not uploaded in local mode. |
| - | Detail | Public materials say sanitized action previews, risk metadata, decisions, policy versions, and audit events may be sent. |
| - | Boundary note | Confirm the current data path, policy source, cached-policy behavior, retention, and audit output for the selected integration. |
| Scan Then Guard | H2 | Scan Then Guard |
| - | Body | Review skills, plugins, agents, and MCP servers for documented component risks. |
| - | Detail | Evaluate named high-risk actions through the integration path available in the workflow. |
| - | CTA | Review Deep Scan |
| Test Runtime Controls | H2 | Test Runtime Controls |
| - | Checklist | Name the actions in scope. |
| - | Checklist | Confirm the integration mode. |
| - | Checklist | Define expected allow and high-risk outcomes. |
| - | Checklist | Test online and offline behavior. |
| - | Checklist | Inspect the evidence produced. |
| - | Checklist | Document calls outside the control path. |
| - | Question | Do all integrations provide the same protection depth? |
| - | Answer | No. The documented hook, plugin, skill, and command paths are different and must be tested separately. |
| - | Question | What happens offline? |
| - | Answer | The Quickstart says offline use can rely on cached policy. Verify current behavior for the selected integration. |
| - | Question | Are latency or accuracy metrics available? |
| - | Answer | No approved public metric is available in the reviewed evidence. |
| Final CTA | H2 | Verify a Runtime Path |
| - | Primary CTA | Open Quickstart |
| - | Secondary CTA | Read API Reference |

#### 4.2.2 Deep Scan

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| Deep Scan for AI Agent Components \| AgentGuard | Review skills, plugins, agents, and MCP servers for documented component risks before they become trusted dependencies. | `/features/deep-scan` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | Deep Scan for AI Agent Components |
| - | Supporting copy | Review skills, plugins, agents, and MCP servers for documented component risks before they become trusted dependencies. |
| - | Primary CTA | Open Quickstart |
| - | Secondary CTA | Explore MCP Security |
| Boundary Note | Body | A scan result supports review; it does not guarantee that a component or its future behavior is safe. |
| Components and Risks | H2 | Components and Risks |
| - | Body | The public product surface names four component types and four risk categories for Deep Scan. |
| - | Component types | Skills · Plugins · Agents · MCP Servers |
| - | Risk categories | Prompt Injection · Malicious Tools · Credential Leaks · Backdoors |
| - | Section note | These documented categories are not a complete detection taxonomy or a coverage guarantee. |
| Choose a Scan Path | H2 | Choose a Scan Path |
| - | Body | Identify the repository, package, MCP server, URL, skill, plugin, or agent you need to review. |
| - | Detail | Follow the supported CLI, Quickstart, or API path available for that component. |
| - | Detail | Review the finding with component provenance, permissions, dependencies, and configuration in view. |
| - | API note | The public API Reference lists repository, package, MCP-server, and URL scan endpoints. Live request and response behavior has not been verified in this audit. |
| Review the Findings | H2 | Review the Findings |
| - | Use the result to investigate | Component provenance · Requested permissions · Dependencies and external resources · Configuration and material changes |
| - | Do not infer | Complete risk coverage · Permanent safety after an update · Safe runtime behavior · A guaranteed detection outcome |
| Lifecycle Scanning | H2 | Lifecycle Scanning |
| - | Body | Use Deep Scan to review a component before it becomes a dependency. |
| - | Detail | Review the component again when its source, package, permissions, or configuration changes. |
| - | Detail | Use Runtime Guard where the selected integration can evaluate documented high-risk actions. |
| - | CTA | Explore Runtime Guard |
| Frequently Asked Questions | H2 | Frequently Asked Questions |
| - | Question | Which components can Deep Scan review? |
| - | Answer | The public homepage names skills, plugins, agents, and MCP servers. |
| - | Question | Which risks are documented? |
| - | Answer | Prompt injection, malicious tools, credential leaks, and backdoors. |
| - | Question | Does a clean scan guarantee safety? |
| - | Answer | No. Public evidence does not establish complete coverage or a safety guarantee. |
| - | Question | Which package ecosystems are supported? |
| - | Answer | The reviewed evidence does not define a complete package-ecosystem list. |
| Final CTA | H2 | Review Before Trust |
| - | Primary CTA | Open Quickstart |
| - | Secondary CTA | Explore MCP Security |

#### 4.2.3 Red-Team

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AI Red Teaming for AI Agents \| AgentGuard | Run dry-run AI red teaming against agent systems to validate prompt injection, tool abuse, RAG leakage, MCP privilege escalation, secret exposure, and Web3 risks. | `/features/red-team` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | Red-Team Testing for AI Agent Systems |
| - | Supporting copy | Run controlled dry-run attacks against discovered AI assets to validate exploitable behavior across prompts, tools, RAG pipelines, MCP permissions, secrets, and Web3 interactions. |
| - | Primary CTA | Start a Red-Team Test |
| - | Secondary CTA | Book a Demo |
| In-Page Navigation | Labels | Overview · Benefits · Capabilities · Workflow · Findings · FAQ |
| Why AI Agent Red Teaming Matters | H2 | Validate Access and Actions |
| - | Body | AI agents can call tools, retrieve private data, inherit permissions, execute actions, and interact with external systems. AI red teaming tests these connected behaviors under adversarial conditions before they become production incidents. |
| - | Detail | Effective AI red teaming tools must test more than model output. They must cover the connected systems, permissions, data, and actions that determine what an agent can actually do. |
| Outpace Agent-Specific Attack Paths | H2 | Find Exploitable Behavior |
| - | Discover Exploitable Behavior | Test whether manipulated instructions can redirect agent reasoning, tool selection, data access, or downstream actions. |
| - | Validate Security Controls | Confirm whether existing policies, permissions, runtime controls, and approval paths contain the simulated attack. |
| - | Turn Findings into Fixes | Give each finding a severity, evidence trail, responsible owner, remediation action, and retest status. |
| - | Build Continuous Validation | Convert confirmed attack paths, threat intelligence, and new advisories into repeatable red-team scenarios. |
| Core AI Red Teaming Capabilities | H2 | Test Connected Attack Surfaces |
| - | Prompt and Instruction Attacks | Simulate prompt injection and multi-turn manipulation that may change agent decisions or actions. |
| - | Tool and MCP Abuse | Test unsafe tool calls, excessive permissions, MCP privilege escalation, and unintended access to connected systems. |
| - | RAG and Sensitive Data Exposure | Validate whether retrieved context, private data, credentials, or secrets can be exposed through the agent workflow. |
| - | Web3 Action Risk | Test agent-triggered Web3 interactions and contract-related actions in a controlled dry-run environment. |
| From Discovered Asset to Verified Finding | H2 | Run a Controlled Red-Team |
| - | Step 01 | Discover the agent asset, connected tools, permissions, data paths, MCP services, and external dependencies. |
| - | Step 02 | Build adversarial scenarios for the risks and controls that matter to the target system. |
| - | Step 03 | Run the scenarios in dry-run mode without allowing the simulated attack to create an uncontrolled production impact. |
| - | Step 04 | Capture the attack path, affected component, evidence, severity, and control response. |
| - | Step 05 | Assign an owner, remediate the issue, and retest the same scenario. |
| Findings That Drive Remediation | H2 | Verify Each Fix |
| - | Finding | A concise description of the exploitable behavior and affected agent asset. |
| - | Severity | A prioritized risk level based on impact, reachability, permissions, and evidence. |
| - | Evidence | The prompts, tool calls, data path, decision trace, and control outcome needed to reproduce the finding. |
| - | Owner and Status | The responsible owner, remediation state, exception status, and next retest date. |
| - | Retest | The original attack scenario is run again to verify that the remediation contains the risk. |
| Close the Continuous Validation Loop | H2 | Build the Next Test Cycle |
| - | Body | Feed red-team findings into runtime defense policies, use runtime logs and threat intelligence to create new scenarios, and trigger focused retests when a new advisory or relevant system change appears. |
| FAQ | H2 | Frequently Asked Questions |
| - | Question | What does AgentGuard test during AI red teaming? |
| - | Answer | AgentGuard tests the connected behavior described for the target system, including prompt injection, tool abuse, RAG leakage, MCP privilege escalation, secret exposure, and Web3 action risk. |
| - | Question | Does the red-team test execute destructive production actions? |
| - | Answer | The page describes a controlled dry-run workflow. The exact isolation, simulation boundary, and supported environments must be confirmed before publication. |
| - | Question | How are findings used after a test? |
| - | Answer | Each finding carries severity, evidence, an owner, remediation status, and a retest path so teams can verify closure. |
| Final CTA | H2 | Test Before Deployment |
| - | Body | Start with a discovered agent asset, validate the attack paths that matter, and turn every confirmed finding into a fix and retest. |
| - | Primary CTA | Start a Red-Team Test |
| - | Secondary CTA | Book a Demo |

#### 4.2.4 Govern

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AI Agent Observability and Monitoring \| AgentGuard | Monitor agent risks, decisions, policies, approvals, audit timelines, and threat intelligence from a unified control plane. | `/features/govern` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | Govern AI Agent Risk and Decisions |
| - | Supporting copy | Monitor agent activity, risk signals, policy decisions, approvals, and audit evidence from one control plane built for AI agent governance. |
| - | Primary CTA | Explore the Control Plane |
| - | Secondary CTA | Book a Demo |
| In-Page Navigation | Labels | Overview · Observe · Monitor · Policies · Approvals · Audit · FAQ |
| Why AI Agent Observability Matters | H2 | Turn Activity into Decisions |
| - | Body | AI agents operate across prompts, tools, data, permissions, and external systems. Security teams need a connected record of what the agent requested, which risks were detected, how policy responded, and who approved the outcome. |
| - | Detail | AI agent monitoring provides the activity record. AgentGuard connects that record to policy, approval, audit, and remediation workflows. |
| Unified Risk Overview | H2 | See the Agent Estate from One Control Plane |
| - | Agent Inventory | Review registered agents, owners, environments, connected tools, and current risk state. |
| - | Risk Overview | Prioritize blocked actions, pending approvals, unresolved findings, and policy exceptions. |
| - | Decision Status | Distinguish allowed, denied, escalated, approved, and unresolved activity at a glance. |
| Observe Agent Activity End to End | H2 | Trace Every Request |
| - | Step 01 | The agent requests a tool, data, file, network, or other high-impact action. |
| - | Step 02 | Runtime Guard evaluates the request against available context, policy, and threat signals. |
| - | Step 03 | The decision is allowed, denied, or routed for approval. |
| - | Step 04 | The final outcome, owner, reason, and evidence are recorded in the audit timeline. |
| What to Monitor | H2 | Monitor Decision Signals |
| - | Agent and Environment | Agent identity, owner, environment, integration path, and connected systems. |
| - | Requested Action | Tool, command, file, data, network destination, permission, and affected asset. |
| - | Risk and Decision | Detected signals, policy result, severity, reason, and enforcement outcome. |
| - | Governance State | Approval status, exception, remediation owner, policy version, and verification state. |
| Policy Distribution and Versions | H2 | Versioned Policies |
| - | Body | Create and distribute policy changes from the control plane, show which version each environment uses, and retain the change history needed to explain a decision. |
| - | Detail | Each policy update should expose its owner, scope, version, deployment state, and effective time. |
| Approval Workflow | H2 | Route Risky Requests |
| - | Request | A policy identifies an action that requires human review. |
| - | Context | The reviewer sees the agent, action, risk signals, affected resource, and policy reason. |
| - | Decision | Approve, deny, or grant a bounded exception with an owner and expiry. |
| - | Record | Store the reviewer, reason, timestamp, and resulting action in the audit timeline. |
| Audit Timeline and Threat Intelligence | H2 | Investigate Decision Trails |
| - | Audit Timeline | Review agent requests, risk signals, policy versions, approval events, final outcomes, and follow-up actions in chronological order. |
| - | Threat Intelligence | Add relevant threat context to the event and use confirmed threats to inform policy updates and focused investigations. |
| Deny-First Governance Loop | H2 | Review Risky Activity |
| - | Step 01 | Observe agent activity and capture the requested action. |
| - | Step 02 | Investigate risk signals, context, and affected systems. |
| - | Step 03 | Approve a bounded request or deny the action. |
| - | Step 04 | Update policy when the decision reveals a reusable rule. |
| - | Step 05 | Verify the new policy against later activity and audit evidence. |
| FAQ | H2 | Frequently Asked Questions |
| - | Question | What does AgentGuard monitor? |
| - | Answer | The Govern page covers agent inventory, action requests, risk signals, policy decisions, approvals, audit evidence, and relevant threat context available through the connected AgentGuard workflow. |
| - | Question | How does deny-first governance work? |
| - | Answer | High-risk activity is denied or held for an explicit decision when policy and context do not support automatic execution. The exact enforcement path depends on the connected integration. |
| - | Question | Can teams track policy versions? |
| - | Answer | The Govern concept includes policy ownership, scope, version, distribution state, effective time, and the policy version used for each recorded decision. |
| Final CTA | H2 | Govern Agent Decisions |
| - | Body | Connect agent activity, policy, approvals, audit evidence, and threat context in one control plane. |
| - | Primary CTA | Explore the Control Plane |
| - | Secondary CTA | Book a Demo |

### 4.3 Solutions

#### 4.3.1 AI CISO

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AI CISO Security Oversight \| AgentGuard | Map AgentGuard's documented runtime checks, component scanning, and public advisories to the responsibilities your team actually needs. AgentGuard is not presented here as a complete AI CISO governance platform. | `/ai-ciso` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | AI Agent Security Oversight for AI CISO |
| - | Supporting copy | Map AgentGuard's documented runtime checks, component scanning, and public advisories to the responsibilities your team actually needs. AgentGuard is not presented here as a complete AI CISO governance platform. |
| Boundary Note | Body | AI CISO is used on this page as an evaluation lens, not as a verified AgentGuard product category. |
| Define AI CISO Duties | H2 | Define AI CISO Duties |
| - | Body | Write down the decisions, owners, and evidence your operating model requires before mapping any vendor capability. |
| AgentGuard Controls | H2 | AgentGuard Controls |
| - | Body | Use first-party product evidence to assess specific control points without expanding them into a broader governance claim. |
| Map Duties to Evidence | H2 | Map Duties to Evidence |
| - | Body | Separate what first-party sources document from what your team still needs to verify. |
| Clear Boundaries | H2 | Clear Boundaries |
| - | Body | The reviewed public materials do not establish complete organization-wide discovery, red-team simulation, approval administration, reporting, retention, or autonomous governance workflows. |
| Run an AI CISO POC | H2 | Run an AI CISO POC |
| - | Body | Use a bounded workflow to test the controls that matter instead of evaluating a broad platform label. |
| Technical Controls | H2 | Technical Controls |
| - | Body | Review the Quickstart, API Reference, public repository, and Security information before making a platform decision. |
| Final CTA | H2 | Resolve Security Gaps |
| - | Body | Start with the documented technical path or book a scoped discussion for requirements that public evidence does not answer. |

#### 4.3.2 Developers

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AI Agent Security for Developers \| AgentGuard | Start with documented installation paths, review agent components before trust, and evaluate named high-risk actions through the integration available in your development environment. | `/solutions/developers` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | AI Agent Security for AI Developers |
| - | Supporting copy | Start with documented installation paths, review agent components before trust, and evaluate named high-risk actions through the integration available in your development environment. |
| Find the Control Point | H2 | Find the Control Point |
| - | Body | Coding-agent risk can enter through a trusted dependency or through an action the agent attempts during a session. |
| Secure Three Moments | H2 | Secure Three Moments |
| - | Body | Use the current Windows, Unix, or npm path described in first-party materials. |
| - | Detail | Use Deep Scan for documented component and risk categories. Treat the result as review evidence. |
| Match the Integration | H2 | Match the Integration |
| - | Body | First-party materials list Claude Code, OpenClaw, Hermes, Codex CLI, Gemini CLI, Cursor, GitHub Copilot, and MCP hosts, but they do not all use the same protection path. |
| Inspect the Implementation | H2 | Inspect the Implementation |
| - | Body | The public repository documents npm installation and commands including hook, scan, trust, status, and config. |
| - | Detail | The API Reference lists runtime analysis, runtime decision, repository scan, package scan, MCP-server scan, and URL scan endpoints. |
| Run Developer Tests | H2 | Run Developer Tests |
| - | Body | Test one expected allow path and one high-risk path. |
| FAQ | H2 | FAQ |
| - | Body | Do all listed integrations provide the same depth? |
| - | Detail | No. The documented modes differ across hooks, plugins, skills, commands, APIs, and MCP hosts. |
| Final CTA | H2 | Secure a Coding Workflow |

#### 4.3.3 Security Teams

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AI Agent Security for Security Teams \| AgentGuard | Review documented component checks, pre-execution action evaluation, data handling, and first-party advisories before deciding how AgentGuard fits your security program. | `/solutions/security-teams` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | AI Agent Security for Security Teams |
| - | Supporting copy | Review documented component checks, pre-execution action evaluation, data handling, and first-party advisories before deciding how AgentGuard fits your security program. |
| Boundary Note | Body | The reviewed evidence does not establish a complete security-operations platform. |
| Separate Failure Modes | H2 | Separate Failure Modes |
| - | Body | Skills, plugins, agents, and MCP servers can introduce documented component risks. |
| - | Detail | Shell, file, tool, network, secret, sensitive-write, and webhook actions require an observable decision point. |
| Map Risk to Controls | H2 | Map Risk to Controls |
| - | Body | Component provenance and malicious content |
| - | Detail | Named action categories and runtime API groups |
| Review Data and Integration Boundaries | H2 | Verify What the Integration Can See and What the Data Path Sends |
| - | Integration copy | Hooks, plugins, skills, commands, APIs, and MCP hosts represent different control paths. Confirm whether the chosen path can observe the actions in scope. |
| - | Local copy | Public materials say local mode does not upload full code, prompts, secrets, or file contents. |
| - | Cloud copy | Cloud-connected use may send sanitized action previews, risk metadata, decisions, policy versions, and audit events. |
| - | Checklist | Observation depth / Data sent / Policy source / Offline behavior / Retention / Access |
| Design the Evaluation | H2 | Design the Evaluation |
| - | Body | Homepage — documented product scope and qualified FAQ statements |
| - | Detail | Quickstart — installation and integration modes |
| Keep Gaps Visible | H2 | Keep Gaps Visible |
| - | Body | The reviewed public evidence does not establish a complete implementation for the following requirements. |
| Run a Bounded Evaluation | H2 | Run a Bounded Evaluation |
| - | Body | List the agents, components, tools, actions, and data in scope. |
| - | Detail | Define expected allow and high-risk outcomes. |
| Final CTA | H2 | Evaluate in Your Environment |

#### 4.3.4 Enterprise

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| Enterprise AI Agent Security \| AgentGuard | Start with documented controls, integration modes, and qualified data boundaries, then verify deployment, access, compliance, support, and service requirements. | `/solutions/enterprise` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | Enterprise AI Agent Security |
| - | Supporting copy | Start with documented controls, integration modes, and qualified data boundaries, then verify deployment, access, compliance, support, and service requirements. |
| Boundary Note | Body | This is an evidence-led evaluation path, not a complete enterprise capability claim. |
| Review Product Controls | H2 | Review Product Controls |
| - | Body | OpenClaw Patrol for named workspace changes |
| - | Detail | These surfaces form the current evidence base. They do not establish complete enterprise governance or lifecycle coverage. |
| Enterprise Workflows | H2 | Enterprise Workflows |
| - | Body | Which repositories, packages, skills, plugins, agents, and MCP servers are actually supported? |
| - | Detail | Which integrations can observe and enforce the actions in scope? |
| Deployment and Integration Questions | H2 | Verify the Deployment and Integration Path |
| - | Supporting copy | Identify the exact agents, IDEs, MCP hosts, repositories, and environments in scope before discussing scale. |
| - | Checklist | Supported topology / Integration mode / Protection depth / Identity and access model / Change and upgrade process / Production support |
| - | Section note | First-party materials list different hook, plugin, skill, and command paths. Evaluate each target workflow separately. |
| Data, Privacy, and Audit Questions | H2 | Separate Qualified Public Statements from Contractual Requirements |
| - | Documented title | Qualified public statements |
| - | Documented copy | Public materials distinguish local handling from cloud-connected use and describe limited categories of sanitized metadata, decisions, policy versions, and audit events. |
| - | Confirm title | Confirm before procurement |
| - | Confirm items | Retention / Access / Audit export / Data residency / Subprocessors / Privacy terms / Incident handling / Contractual commitments |
| Support and Service Readiness | H2 | Confirm Service Readiness Before Treating the Product as Enterprise-Ready |
| - | Supporting copy | The reviewed evidence does not establish the following service and assurance commitments. |
| - | Checklist | Support tiers / Escalation path / Response targets / Service-level commitments / Private deployment / Security certifications / Commercial terms / Contract ownership |
| - | CTA | Discuss Enterprise Requirements |
| Enterprise Evaluation Path, FAQ, and Final CTA | H2 | Run an Evidence-Led Enterprise Evaluation |
| - | Step 1 title | Review |
| - | Step 1 copy | Inspect Security, Docs, API Reference, GitHub, and public advisories. |
| - | Step 2 title | Test |
| - | Step 2 copy | Run a proof of concept around one real agent workflow and record the observed control depth and data path. |
| - | Step 3 title | Resolve |
| - | Step 3 copy | Use a scoped discussion to resolve deployment, privacy, compliance, support, and commercial requirements. |
| - | FAQ question | Which enterprise deployment topologies are supported? |
| - | FAQ answer | The reviewed public evidence does not define a complete deployment matrix. |
| - | FAQ question | Are IAM, retention, and audit export documented? |
| - | FAQ answer | These requirements need authoritative confirmation. |
| - | FAQ question | Are support and SLA terms public? |
| - | FAQ answer | No approved support or SLA commitment is available in the current evidence set. |
| - | FAQ question | Is AgentGuard a complete enterprise oversight platform? |
| - | FAQ answer | The reviewed public evidence does not support that claim. |
| Final CTA | H2 | Evaluate One Enterprise Workflow with Clear Boundaries |
| - | Primary CTA | Book a Demo |
| - | Secondary CTA | Review Security |

#### 4.3.5 MCP Security

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| MCP Security for AI Agents \| AgentGuard | Review MCP servers before trust, inspect documented trust and hook-layer controls, and keep third-party runtime calls outside complete coverage visible. | `/solutions/mcp-security` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | MCP Security for AI Agent Systems |
| - | Supporting copy | Review MCP servers before trust, inspect documented trust and hook-layer controls, and keep third-party runtime calls outside complete coverage visible. |
| Boundary Note | Body | AgentGuard's public FAQ says it cannot fully monitor or block all third-party MCP server runtime calls. |
| Map MCP Runtime Risk | H2 | Map MCP Runtime Risk |
| - | Body | A server, package, or tool implementation can introduce malicious or vulnerable behavior. |
| - | Detail | An agent may receive instructions or context that influences later decisions. |
| Review MCP Servers | H2 | Review MCP Servers |
| - | Body | Record its source, package, owner, requested permissions, and update path. |
| - | Detail | The public homepage includes MCP servers in Deep Scan coverage, and the API Reference lists an MCP-server scan endpoint. |
| Evaluate Security Layers | H2 | Evaluate Security Layers |
| - | Body | MCP servers are named as Deep Scan targets, and an MCP-server scan endpoint is listed. |
| - | Detail | Scan depth, supported inputs, and output behavior. |
| Keep Runtime Gaps Visible | H2 | Keep Runtime Gaps Visible |
| - | Body | AgentGuard's public FAQ says it cannot fully monitor or block all third-party MCP server runtime calls. Coverage depends on the host, integration mode, and whether the relevant action reaches an observable control point. |
| Test Server, Host, and Runtime | H2 | Test Server, Host, and Runtime |
| - | Body | Scan before use and after material changes. |
| Run an MCP POC | H2 | Run an MCP POC |
| - | Body | Use Deep Scan and the API documentation to review the component surface. |
| - | Detail | Use Runtime Guard only where the selected integration can evaluate the relevant action. |
| Final CTA | H2 | Verify MCP Coverage |

### 4.4 Docs

#### 4.4.1 Docs

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AgentGuard Docs and Quickstart \| AgentGuard | Start with the current Quickstart, then use the integration path and reference material that match your agent environment. | `/docs` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | Install AgentGuard and Choose Your Integration Path |
| - | Supporting copy | Start with the current Quickstart, then use the integration path and reference material that match your agent environment. |
| Start Here: Quickstart and API Reference | H2 | Start Here: Quickstart and API Reference |
| - | Body | Install the local AgentGuard, follow the current connection path for your environment, choose a documented policy mode, trigger a test action, and confirm the result in the available workflow. |
| - | Detail | Developers validating a first installation and runtime path. |
| Choose Your Environment | H2 | Choose Your Environment |
| - | Body | AgentGuard documents different integration modes across environments. Follow the environment-specific instructions and do not assume identical runtime coverage. |
| - | Detail | Use the documented MCP path together with the published limitation that complete monitoring or blocking of every third-party MCP server runtime call is not currently claimed. |
| Install and Verify | H2 | Install and Verify |
| - | Body | Use the current first-party instructions for your operating system or package workflow. |
| - | Detail | curl -fsSL [https://agentguard.gopluslabs.io/install.sh](https://agentguard.gopluslabs.io/install.sh) \\\| bash |
| Browse Documentation by Task | H2 | Browse Documentation by Task |
| - | Body | Understand the documented action categories, integration path, policy decisions, and current limits. |
| - | Detail | Review the documented scope for skills, plugins, MCP servers, agents, and related components. |
| Troubleshooting and Help | H2 | Troubleshooting and Help |
| - | Body | Confirm that you are following the current instructions for your operating system and agent environment. |
| - | Detail | Verify the installed version, configuration source, and connection mode using the current Quickstart. |
| Documentation Questions | H2 | Documentation Questions |
| - | Body | Use the Quickstart for a first installation. Use the API Reference when you are integrating a published endpoint contract. |
| - | Detail | Do all environments use the same integration mode? |
| Start the Verified Implementation Path | H2 | Start the Verified Implementation Path |
| - | Body | Install AgentGuard with the current Quickstart, or move directly to the API Reference if your task is an integration. |
| - | Detail | site-audit/full-technical-seo-2026-07-08/raw-artifacts/html-cache/agentguard-gopluslabs-io-docs.html |

#### 4.4.2 API Reference

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AgentGuard API Reference \| AgentGuard | Review the published authentication, base URL, runtime, scan, report, status, limit, and error sections before integrating. Endpoint behavior must match the current owner-approved API contract. | `/docs/api` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | AgentGuard API Reference |
| - | Supporting copy | Review the published authentication, base URL, runtime, scan, report, status, limit, and error sections before integrating. Endpoint behavior must match the current owner-approved API contract. |
| On-Page Reference Navigation | H2 | On-Page Reference Navigation |
| - | Body | href |
| - | Detail | Overview |
| - | Detail | Authentication |
| API Overview | H2 | API Overview |
| - | Body | Choose the endpoint group that matches your task. Methods and paths below were observed in the current rendered documentation snapshot and must be reconciled with the owner-approved contract before publication. |
| - | Detail | Evaluate actions, retrieve effective policy, ingest redacted events, and review approvals. |
| Authentication, Base URL, and Environments | H2 | Authentication, Base URL, and Environments |
| - | Body | Authentication, Base URL, and Environments |
| - | Detail | The current documentation snapshot lists [https://agentguard.gopluslabs.io](https://agentguard.gopluslabs.io) as the API base URL. Confirm the production host and version path before integrating. |
| Runtime Protection Endpoints | H2 | Runtime Protection Endpoints |
| - | Body | Use the published runtime group to evaluate actions, retrieve the effective policy, send redacted audit events, and review approvals within the current contract. |
| - | Detail | Review approvals and the available timeline response |
| Supply-Chain Scan Endpoints | H2 | Supply-Chain Scan Endpoints |
| - | Body | Submit content for a documented scan workflow |
| - | Detail | Supported source types, required fields, response schemas, asynchronous behavior, commercial gating, and result semantics must come from the current owner-approved API contract. |
| Requests, Responses, Limits, and Errors | H2 | Requests, Responses, Limits, and Errors |
| - | Body | [API owner: define content types, idempotency behavior where applicable, pagination, timestamps, identifiers, and validation rules.] |
| - | Detail | [API owner: define success envelopes, asynchronous job states, nullable fields, and schema versioning.] |
| OpenAPI, Versioning, and Change Policy | H2 | OpenAPI, Versioning, and Change Policy |
| - | Body | Download the schema only when the linked asset has been validated as current, complete, and aligned with the rendered reference. |
| - | Detail | [API owner: define the version identifier, compatibility policy, deprecation notice, and migration path.] |
| Integrate with the Current Contract | H2 | Integrate with the Current Contract |
| - | Body | Confirm the current host, authentication method, endpoint contract, limits, and errors before connecting production workflows. |
| - | Detail | site-audit/full-technical-seo-2026-07-08/raw-artifacts/internal-route-page-signals.json |

### 4.5 Blog

#### 4.5.1 Blog Index

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AI Agent Security Blog \| AgentGuard | Read guides, reviews, comparisons, and research about AI agent security and AgentGuard. | `/blog` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | AI Agent Security Blog |
| - | Body | Read guides, reviews, comparisons, and research about AI agent security and AgentGuard. |
| Search and Categories | Search placeholder | Search articles |
| - | Categories | All Blog Posts · Guides · Best · Review · Compare · Glossary |
| Article List | Card copy | [Article Title] · [Category] · [Publication Date] · [Article Summary] |
| Empty State | H2 | No articles found |
| - | Body | Try another search or clear the current category. |

#### 4.5.2 Blog Category

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| [Category] Articles \| AgentGuard | Explore AgentGuard articles, guides, and research about [category]. | `/blog/category/[category]` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | [Category] Articles |
| - | Body | Explore AgentGuard articles, guides, and research about [category]. |
| Category Navigation | Body | All Blog Posts · Guides · Best · Review · Compare · Glossary |
| Filtered Article List | Card copy | [Article Title] · [Publication Date] · [Article Summary] |
| Empty State | H2 | No articles found in [Category] |
| - | Body | Browse all posts or choose another category. |

#### 4.5.3 Blog Article

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| [Article Title] \| AgentGuard | [Article summary written in clear English and based on the published page content.] | `/blog/[slug]` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Article Header | H1 | [Article Title] |
| - | Body | [Article Summary] |
| - | Detail | [Category] · [Author] · [Publication Date] |
| Article Body | Body | [Approved article body with H2 and H3 sections.] |
| Related Content | H2 | Related Articles |
| - | Body | [Related Article Title] · [Related Article Summary] |
| Return Link | Body | Back to Blog |

### 4.6 Pricing

#### 4.6.1 Pricing

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AgentGuard Pricing and Evaluation Options \| AgentGuard | Start with the MIT-licensed local guard, or contact AgentGuard for current team and enterprise terms. Plan names, prices, usage limits, trials, deployment options, and support terms are published only after commercial approval. | `/pricing` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | Choose the Right AgentGuard Evaluation Path |
| - | Supporting copy | Start with the MIT-licensed local guard, or contact AgentGuard for current team and enterprise terms. Plan names, prices, usage limits, trials, deployment options, and support terms are published only after commercial approval. |
| Start with the Verified Local Path | H2 | Start with the Verified Local Path |
| - | Body | AgentGuard’s public repository describes an open-source runtime security layer for AI coding agents under the MIT license. Basic local protection can run without an API key; documented cloud features use an optional API key. |
| - | Detail | Use the current Windows or Unix instructions maintained in AgentGuard Docs. |
| Evaluation Paths | H2 | Evaluation Paths |
| - | Body | MIT-licensed local guard; basic local protection without an API key; optional API key for documented cloud features. |
| - | Detail | Developers validating installation and local workflow fit. |
| Capability Comparison | H2 | Capability Comparison |
| - | Body | Use the approved commercial offer to compare each path across the same decision criteria. Do not infer inclusion from product documentation alone. |
| - | Detail | Cloud-connected policy and threat intelligence |
| Deployment and Support Questions | H2 | Deployment and Support Questions |
| - | Body | Confirm Deployment and Support Before You Commit |
| - | Detail | Ask which hosted, connected, or customer-managed deployment options are currently offered and what prerequisites apply. |
| Pricing Questions | H2 | Pricing Questions |
| - | Body | Can I evaluate AgentGuard without an API key? |
| - | Detail | Yes. The public AgentGuard repository states that basic local protection can run without an API key. Documented cloud features use an optional API key. |
| Start or Request Current Terms | H2 | Start or Request Current Terms |
| - | Body | Start Locally or Review Current Commercial Terms |
| - | Detail | Run the verified Quickstart for a hands-on evaluation. If your decision depends on team access, deployment, support, governance, or procurement, send those requirements to AgentGuard. |

### 4.7 Security

#### 4.7.1 Security

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AgentGuard Security and Data Boundaries \| AgentGuard | Review the documented controls AgentGuard applies to agent actions and components, what public sources say about local and connected data handling, and where current integration limits remain. | `/security` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | AgentGuard Security and Data Boundaries |
| - | Supporting copy | Review the documented controls AgentGuard applies to agent actions and components, what public sources say about local and connected data handling, and where current integration limits remain. |
| Documented Product Controls | H2 | Documented Product Controls |
| - | Body | The following descriptions are limited to capabilities documented on AgentGuard’s public site. They do not establish certification, compliance, or complete coverage. |
| - | Detail | Runtime Guard evaluates security-relevant actions before execution, including shell commands, file access, tool actions, network requests, secret access, sensitive writes, and potential webhook exfiltration. |
| Local and Cloud-Connected Data Handling | H2 | Local and Cloud-Connected Data Handling |
| - | Body | AgentGuard’s public FAQ states that local mode does not upload full code, prompts, secrets, or file contents. |
| - | Detail | Public sources state that connected use may send sanitized action previews, risk metadata, decisions, policy versions, redacted metadata, and audit events when needed. |
| Integration Depth and MCP Limits | H2 | Integration Depth and MCP Limits |
| - | Body | AgentGuard documents different integration modes across supported agent and IDE environments. Some use pre- and post-tool hooks, some use plugin hooks, and others use skill- or command-based paths. Coverage should not be assumed to be identical. |
| - | Detail | AgentGuard’s public FAQ states that it cannot currently fully monitor or block every third-party MCP server runtime call. MCP server scans, reputation, trust-registry signals, and available hook layers can still support risk decisions within their documented scope. |
| Security Evidence and Assurance Materials | H2 | Security Evidence and Assurance Materials |
| - | Body | Use this section only for current, owner-approved evidence. Product documentation is available today; the remaining materials must not appear as badges or claims until verified. |
| Policies and Security Contact | H2 | Policies and Security Contact |
| - | Body | Review the Legal-approved policy that governs AgentGuard privacy disclosures. |
| - | Detail | Review the Legal-approved terms that govern use of AgentGuard services. |
| Security Questions | H2 | Security Questions |
| - | Body | Does local mode upload full code, prompts, secrets, or file contents? |
| - | Detail | AgentGuard’s public FAQ states that local mode does not upload those full contents. Configuration and connected features still require review against the approved Privacy Policy. |
| Review AgentGuard for Your Environment | H2 | Review AgentGuard for Your Environment |
| - | Body | Map your agent hosts, tool actions, components, data boundaries, and residual MCP risks before deciding which controls fit your workflow. |

### 4.8 Contact / Company / Legal

#### 4.8.1 Contact

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| Contact AgentGuard \| AgentGuard | Tell us what you are evaluating so your request can reach the right owner. For installation and API questions, start with the public Docs. | `/contact` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | Talk to the AgentGuard Team |
| - | Supporting copy | Tell us what you are evaluating so your request can reach the right owner. For installation and API questions, start with the public Docs. |
| Choose a Request Type | H2 | Choose a Request Type |
| - | Body | Discuss current commercial terms, team requirements, deployment constraints, or a product evaluation. |
| - | Detail | Describe the platform, agent host, MCP environment, or security workflow you want to connect. |
| What to Include | H2 | What to Include |
| - | Body | The agent, IDE, or host environment you are evaluating |
| - | Detail | The security or implementation decision you need to make |
| Request Form | H2 | Request Form |
| - | Body | Share only the minimum information needed to route your request. Do not include secrets or production data. |
| - | Detail | We could not submit your request. Your information has not been sent. Please try again after the form owner confirms the production workflow. |
| Technical Self-Service | H2 | Technical Self-Service |
| - | Body | Install AgentGuard and complete the documented first-run path. |
| - | Detail | Review the published authentication and endpoint reference before integrating. |
| What Happens Next | H2 | What Happens Next |
| - | Body | Your request is classified by the request type you select. |
| - | Detail | The minimum information needed for routing is sent to the approved owner. |
| Find the Right Next Step | H2 | Find the Right Next Step |
| - | Body | Submit a scoped business request, or continue immediately with the public implementation resources. |

#### 4.8.2 About

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| About AgentGuard \| AgentGuard | AgentGuard focuses on security decisions around agent actions, components, and developer workflows. GoPlus lists AgentGuard as an AI agent security solution, and the public repository describes an open-source runtime security layer for AI coding agents. | `/about` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | Security for AI Agents That Can Act |
| - | Supporting copy | AgentGuard focuses on security decisions around agent actions, components, and developer workflows. GoPlus lists AgentGuard as an AI agent security solution, and the public repository describes an open-source runtime security layer for AI coding agents. |
| Why AgentGuard Exists | H2 | Why AgentGuard Exists |
| - | Body | AI agents can call tools, access files, execute commands, connect to networks, and depend on skills, plugins, packages, and MCP servers. AgentGuard is focused on making security decisions around those actions and dependencies before they become trusted parts of a workflow. |
| What AgentGuard Publishes Today | H2 | What AgentGuard Publishes Today |
| - | Body | Evaluate documented high-risk actions before execution and apply the available policy decision path. |
| - | Detail | Review agent components for documented risks including prompt injection, malicious tools, credential leaks, and backdoors. |
| From Component Review to Runtime Decisions | H2 | From Component Review to Runtime Decisions |
| - | Body | From Component Review to Runtime Decisions |
| - | Detail | Scan relevant skills, plugins, MCP servers, agents, and related dependencies within the documented scope. |
| Open-Source Developer Entry Point | H2 | Open-Source Developer Entry Point |
| - | Body | Start from the Open-Source Developer Entry Point |
| - | Detail | The public AgentGuard repository describes an open-source runtime security layer for AI coding agents and lists the MIT license. Developers can review the source, install the published package, and follow the current Docs for supported integration paths. |
| AgentGuard and GoPlus | H2 | AgentGuard and GoPlus |
| - | Body | GoPlus lists AgentGuard in its portfolio as an AI agent security solution. AgentGuard’s public site and documentation also identify GoPlus Security as the related organization. |
| Company Facts | H2 | Company Facts |
| - | Body | Legal entity: [Company owner-approved value] |
| - | Detail | Headquarters: [Company owner-approved value] |
| Explore the Product or Start a Conversation | H2 | Explore the Product or Start a Conversation |
| - | Body | Explore the Product or Start a Conversation |
| - | Detail | Review the documented product and implementation paths, or contact AgentGuard with a scoped evaluation or partnership request. |

#### 4.8.3 Privacy Policy

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| Privacy Policy \| AgentGuard | [Legal: retain the exact approved Effective Date and Last Updated date from the authoritative policy source.] | `/privacy-policy` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | AgentGuard Privacy Policy |
| - | Supporting copy | [Legal: retain the exact approved Effective Date and Last Updated date from the authoritative policy source.] |
| Policy Table of Contents | H2 | Policy Table of Contents |
| - | Body | [Legal: generate the table of contents from the exact approved H2 and H3 titles in the authoritative policy body. Preserve numbering, wording, order, and anchor mapping.] |
| Authoritative Policy Body | H2 | Authoritative Policy Body |
| - | Body | [Legal: insert the complete approved Privacy Policy verbatim. Preserve every heading, paragraph, list, defined term, date, address, email address, and jurisdictional notice from the authoritative source. No generated legal language is permitted.] |
| - | Detail | The Legal-approved source controls if navigation or metadata conflicts with the policy body. |
| Privacy Requests and Contact | H2 | Privacy Requests and Contact |
| - | Body | [Legal: retain the exact approved privacy-request and Contact Us wording from the authoritative policy body.] |
| Related Policies and Security Information | H2 | Related Policies and Security Information |
| - | Body | Review documented product controls, data boundaries, and current integration limitations. |
| - | Detail | Read the Legal-approved terms that govern use of AgentGuard services. |

#### 4.8.4 Terms of Service

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| Terms of Service \| AgentGuard | [Legal: Effective Date] | `/terms` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | AgentGuard Terms of Service |
| - | Supporting copy | [Legal: Effective Date] |
| Terms Table of Contents | H2 | Terms Table of Contents |
| - | Body | [Legal: generate anchor links from the exact approved Terms headings. Preserve wording, numbering, order, and hierarchy.] |
| Authoritative Terms Body | H2 | Authoritative Terms Body |
| - | Body | [Legal: insert the complete approved Terms of Service verbatim. Do not generate, summarize, infer, omit, or reorder any contractual language.] |
| - | Detail | The Legal-approved source controls if navigation, metadata, or surrounding page copy conflicts with the Terms body. |
| Related Policies and Contact | H2 | Related Policies and Contact |
| - | Body | Review the Legal-approved policy describing AgentGuard privacy practices. |
| - | Detail | Review documented product controls and security boundaries. |

### 4.9 Learning / Evaluation

#### 4.9.1 Guides

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| Practical AI Agent Security Guides \| AgentGuard | Choose a risk, control surface, or implementation task and move from explanation to a verifiable next step. | `/guides` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | Practical AI Agent Security Guides |
| - | Supporting copy | Choose a risk, control surface, or implementation task and move from explanation to a verifiable next step. |
| Start with the Core Guide | H2 | Start with the Core Guide |
| - | Body | Begin with the AI Agent Security Guide to scope the deployed system before choosing a control. It covers the attack surface, threat-model decisions, component review, high-risk runtime actions, MCP boundaries, verification, and residual risk. |
| Browse by Security Task | H2 | Browse by Security Task |
| - | Body | Choose the task you need to complete. Product links appear only when the documented control matches that task. |
| Browse by Role | H2 | Browse by Role |
| - | Body | Scope the integration, review components, test high-risk actions, and verify the behavior in the target environment. |
| - | Detail | Define unacceptable outcomes, evidence requirements, data boundaries, exceptions, and operational ownership. |
| Published and Maintained Guides | H2 | Published and Maintained Guides |
| - | Body | This library lists only reviewed pages with a working route. Every card must show its scope, owner, publication date, and last evidence review. |
| How AgentGuard Guides Are Built | H2 | How AgentGuard Guides Are Built |
| - | Body | Scope first: state the system, workflow, and decision in scope. |
| - | Detail | Actions next: provide prerequisites, steps, verification, and residual boundaries. |
| Frequently Asked Questions | H2 | Frequently Asked Questions |
| - | Body | Start with the risk or implementation task you need to complete, then choose a page that includes explicit verification and residual boundaries. |
| - | Detail | Only pages with prerequisites, actions, verification, and a defined scope should be labeled practical. |

#### 4.9.2 AI Agent Security Guide

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AI Agent Security Guide \| AgentGuard | Map component, tool, runtime, data, and MCP risks to controls, verification steps, and explicit residual boundaries. | `/guides/ai-agent-security` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | A Practical Guide to AI Agent Security |
| - | Supporting copy | Map component, tool, runtime, data, and MCP risks to controls, verification steps, and explicit residual boundaries. |
| Define the AI Agent Attack Surface | H2 | Define the AI Agent Attack Surface |
| - | Body | AI agent security covers the deployed system around the model: instructions, tools, files, credentials, network access, external components, permissions, and the actions the agent can take. |
| Build a Threat Model | H2 | Build a Threat Model |
| - | Body | Start with the outcome your team cannot accept, then trace the assets, trust boundaries, actions, and evidence connected to it. |
| Review Components Before Trust | H2 | Review Components Before Trust |
| - | Body | Treat every skill, plugin, package, agent, and MCP server as a component with a source, permissions, dependencies, configuration, update path, and expected behavior. |
| Evaluate High-Risk Runtime Actions | H2 | Evaluate High-Risk Runtime Actions |
| - | Body | Prioritize actions that can change systems, expose data, or extend trust. Decide where a policy check must occur before execution. |
| Plan for MCP Boundaries | H2 | Plan for MCP Boundaries |
| - | Body | Host → MCP server → tool description → permission → request → returned content → downstream action |
| - | Detail | How can returned content influence the agent? |
| Define Data and Evidence Boundaries | H2 | Define Data and Evidence Boundaries |
| - | Body | Document which code, prompts, files, secrets, action previews, metadata, and events remain local or may reach a connected service. |
| - | Detail | Decide which action, decision, policy version, component result, exception, and review trigger must be retained without recording raw sensitive content. |
| AI Agent Security Implementation Checklist | H2 | AI Agent Security Implementation Checklist |
| - | Body | [ ] Name the workflow, owner, environment, and users in scope. |
| - | Detail | [ ] List instructions, components, tools, data, permissions, and external services. |
| Make Residual Risk Explicit | H2 | Make Residual Risk Explicit |
| - | Body | No single scan, policy, or runtime control proves complete AI agent security. Record the paths the control cannot observe, the actions it cannot block, the evidence it does not retain, and the owner of the remaining decision. |
| Frequently Asked Questions | H2 | Frequently Asked Questions |
| - | Body | What belongs in an AI agent attack surface? |
| - | Detail | Instructions, components, tools, files, credentials, networks, permissions, external services, executable actions, and the evidence produced by the workflow. |

#### 4.9.3 Best

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AI Agent Security Shortlists \| AgentGuard | Start with the evaluation method, inspect dated evidence, and verify fit before treating any shortlist as a buying decision. | `/best` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | AI Agent Security Shortlists Built on Visible Criteria |
| - | Supporting copy | Start with the evaluation method, inspect dated evidence, and verify fit before treating any shortlist as a buying decision. |
| Choose the Buying Decision | H2 | Choose the Buying Decision |
| How AgentGuard Builds a Best Shortlist | H2 | How AgentGuard Builds a Best Shortlist |
| - | Body | Define one buying task and the protected surface in scope. |
| - | Detail | Publish inclusion and exclusion rules before naming candidates. |
| Published Best Pages | H2 | Published Best Pages |
| - | Body | A working category definition, multi-product candidate evidence table, common evaluation dimensions, and a POC plan. No numbered ranking is published until every candidate is qualified with equivalent current evidence. |
| - | Detail | No other reviewed Best pages are published yet. |
| Evaluation Dimensions Used Across Shortlists | H2 | Evaluation Dimensions Used Across Shortlists |
| - | Body | Protected surface — The systems, components, actions, or data explicitly in scope. |
| - | Detail | Decision point — Where the product observes, evaluates, blocks, or records activity. |
| Verification and Disclosure Standard | H2 | Verification and Disclosure Standard |
| - | Body | AgentGuard publishes this library and may include its own product. Every page must keep that relationship visible. |
| - | Detail | Apply the same evidence threshold to AgentGuard |
| Continue with the Right Decision Format | H2 | Continue with the Right Decision Format |
| - | Body | Use a Best page to build a multi-product shortlist for one buying task. |
| - | Detail | Use a Review to inspect one product's evidence, setup, data boundaries, fit, and limitations. |
| Frequently Asked Questions | H2 | Frequently Asked Questions |
| - | Body | It must match the stated buying task and provide enough current first-party evidence for the dimensions used on the page. |
| - | Detail | AgentGuard may be included, but the vendor relationship, source dates, limitations, and unknowns must remain visible. |

#### 4.9.4 Best AI CISO Platforms

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| Best AI CISO Platforms \| AgentGuard | Define the category, inspect equivalent first-party evidence, and test the responsibilities your team needs before choosing a platform. | `/best/ai-ciso-platforms` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | Best AI CISO Platforms: An Evidence-Led Buyer Guide |
| - | Supporting copy | Define the category, inspect equivalent first-party evidence, and test the responsibilities your team needs before choosing a platform. |
| What Counts as an AI CISO Platform in This Guide? | H2 | What Counts as an AI CISO Platform in This Guide? |
| - | Body | For this buyer guide, an AI CISO platform is a product that can provide documented evidence for one or more responsibilities used to identify, control, or investigate security risk in deployed AI systems. |
| - | Detail | This is not a settled market category, a certification, an executive replacement, or proof that one product covers the complete security lifecycle. |
| How Candidates Qualify | H2 | How Candidates Qualify |
| - | Body | The product has a documented AI-specific security surface. |
| - | Detail | First-party sources identify the protected object or workflow. |
| Candidate Evidence Table | H2 | Candidate Evidence Table |
| - | Body | These records are candidates for category qualification, not ranked winners. A candidate remains provisional until its current first-party evidence supports the responsibilities used in this guide. |
| Candidate Evidence Profiles | H2 | Candidate Evidence Profiles |
| - | Body | Security for AI developers, including named high-risk actions, component scanning, and OpenClaw workspace checks. |
| - | Detail | Homepage, Quickstart, API Reference, public repository, and advisory surface. |
| Compare the Responsibilities Your Team Needs | H2 | Compare the Responsibilities Your Team Needs |
| - | Body | Which deployed AI assets, components, or connections are visible? |
| - | Detail | Partial evidence: named component scans and OpenClaw workspace checks |
| Proof-of-Concept Checklist | H2 | Proof-of-Concept Checklist |
| Choose by Responsibility and Environment | H2 | Choose by Responsibility and Environment |
| - | Body | Do not choose from category labels alone. Select the candidate that verifies the required responsibilities in the target environment. |
| Frequently Asked Questions | H2 | Frequently Asked Questions |
| - | Body | It is a working buyer category for products that provide documented evidence for responsibilities used to identify, control, or investigate risk in deployed AI systems. |
| - | Detail | No. AgentGuard publishes the guide, evaluates its own product, and does not publish a winner while candidate qualification is incomplete. |

#### 4.9.5 Review

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AI Agent Security Product Reviews \| AgentGuard | Each review examines one product, dates its sources, separates verified facts from vendor claims, and makes setup, data boundaries, fit, limitations, and unknowns visible. | `/review` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | Evidence Profiles for AI Agent Security Products |
| - | Supporting copy | Each review examines one product, dates its sources, separates verified facts from vendor claims, and makes setup, data boundaries, fit, limitations, and unknowns visible. |
| How a Product Review Is Built | H2 | How a Product Review Is Built |
| - | Body | Name the publisher, product owner, source set, and source dates. |
| - | Detail | State the public product positioning without expanding it. |
| Browse Product Reviews | H2 | Browse Product Reviews |
| - | Body | A vendor-authored evidence profile covering Runtime Guard, Deep Scan, OpenClaw Environment Patrol, setup, integration modes, data handling, fit, limitations, and verification tasks. |
| - | Detail | No additional product reviews have completed the evidence standard. |
| What Every Review Must Cover | H2 | What Every Review Must Cover |
| - | Body | Positioning — What the product publicly says it is. |
| - | Detail | Protected surface — Which systems, components, actions, or data are documented. |
| Ownership, Sources, and Updates | H2 | Ownership, Sources, and Updates |
| - | Body | A review must be refreshed after a material product, pricing, deployment, data, or limitation change. Do not promise a calendar cadence until an accountable process exists. |
| Choose the Next Decision Format | H2 | Choose the Next Decision Format |
| - | Body | Stay with one product when you need its setup, data, fit, limitations, and verification tasks. |
| - | Detail | Move to a named pair only when both products have enough evidence for the same dimensions. |
| Frequently Asked Questions | H2 | Frequently Asked Questions |
| - | Body | AgentGuard publishes this library. Every review must disclose the product relationship near the top of the page. |
| - | Detail | No. A vendor-authored review can organize evidence and limitations, but it must not present itself as independent testing. |

#### 4.9.6 AgentGuard Review

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AgentGuard Review: Features and Limits \| AgentGuard | Review AgentGuard's public product surfaces, setup evidence, integration modes, data boundaries, fit, limitations, and the questions that remain unresolved. | `/review/agentguard` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | AgentGuard Review: Documented Features and Current Limits |
| - | Supporting copy | Review AgentGuard's public product surfaces, setup evidence, integration modes, data boundaries, fit, limitations, and the questions that remain unresolved. |
| Disclosure and Review Method | H2 | Disclosure and Review Method |
| - | Body | This page summarizes current first-party public evidence, identifies conflicts and unknowns, and converts the evidence into buyer verification tasks. |
| - | Detail | No live API behavior, performance, bypass resistance, false-positive rate, or production-scale operation is established by this review. |
| AgentGuard Product Snapshot | H2 | AgentGuard Product Snapshot |
| - | Body | AI Agent Security for AI Developers; the public repository describes an open-source runtime security layer for AI coding agents. |
| - | Detail | Runtime Guard, Deep Scan, and OpenClaw Environment Patrol. |
| Runtime Guard | H2 | Runtime Guard |
| - | Body | AgentGuard publicly describes Runtime Guard as evaluating named high-risk actions before execution. |
| - | Detail | Which host integration places the decision before execution? |
| Deep Scan | H2 | Deep Scan |
| - | Body | Which inputs and package types are accepted? |
| - | Detail | The public evidence supports named component targets and risk categories, not universal detection or a guarantee of safety. |
| OpenClaw Environment Patrol | H2 | OpenClaw Environment Patrol |
| - | Body | The Quickstart describes plugin hooks, auto-scanning, and daily patrol for OpenClaw. |
| - | Detail | This evidence is specific to the documented OpenClaw workflow and must not be generalized to every agent or host. |
| Setup and Integration Evidence | H2 | Setup and Integration Evidence |
| - | Body | Exact action coverage and enforcement behavior in the current version |
| - | Detail | Plugin hooks, auto-scanning, and daily patrol |
| Data Handling | H2 | Data Handling |
| - | Body | AgentGuard public materials say local mode does not upload full code, prompts, secrets, or file contents. |
| - | Detail | Public materials say connected use may send sanitized action previews, risk metadata, decisions, policy versions, and audit events. The Quickstart also describes redacted metadata and audit events when needed. |
| Fit, Limitations, and Unknowns | H2 | Fit, Limitations, and Unknowns |
| - | Body | Developers and security teams evaluating coding-agent actions, components, OpenClaw workspaces, and selected integration paths. |
| - | Detail | AgentGuard's public FAQ says it cannot fully monitor or block all third-party MCP server runtime calls. |
| AgentGuard Verification Checklist | H2 | AgentGuard Verification Checklist |
| - | Body | [ ] Select the exact host, integration mode, workflow, and users in scope. |
| - | Detail | [ ] Confirm which actions are evaluated before execution in that mode. |
| Evidence Summary | H2 | Evidence Summary |
| - | Body | AgentGuard has public evidence for named runtime action checks, component scanning, OpenClaw workspace checks, developer entry points, and qualified local and cloud-connected data statements. It is reasonable to evaluate when those documented surfaces match the target workflow. |
| - | Detail | This review does not establish independent safety, complete third-party MCP runtime coverage, identical protection across every host, current commercial terms, or a complete AI CISO lifecycle. |
| Frequently Asked Questions | H2 | Frequently Asked Questions |
| - | Body | No. AgentGuard publishes this vendor-authored evidence profile of its own product. |
| - | Detail | The public surface includes Runtime Guard, Deep Scan, OpenClaw Environment Patrol, Docs, API groups, a public repository, and advisories. |

#### 4.9.7 Compare

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AI Agent Security Product Comparisons \| AgentGuard | Choose a named pair, inspect equivalent first-party evidence, and use a common proof-of-concept plan instead of a synthetic score. | `/compare` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | Compare AI Agent Security Products with Dated Evidence |
| - | Supporting copy | Choose a named pair, inspect equivalent first-party evidence, and use a common proof-of-concept plan instead of a synthetic score. |
| How a Named Comparison Is Built | H2 | How a Named Comparison Is Built |
| - | Body | Name the two products and one buying task. |
| - | Detail | Disclose the publisher's relationship to either product. |
| Browse Named Comparisons | H2 | Browse Named Comparisons |
| - | Body | Compare public positioning, protected surfaces, documented controls, data and deployment evidence, limitations, unknowns, and a common POC plan. |
| - | Detail | Open unknowns: Pricing, hosting, data flow, and coverage |
| Core Comparison Dimensions | H2 | Core Comparison Dimensions |
| - | Body | Buying task — The decision the pair must support. |
| - | Detail | Public positioning — The product's own current description. |
| Use the Same Proof of Concept for Both Products | H2 | Use the Same Proof of Concept for Both Products |
| - | Body | One workflow, one environment, the same components and actions, the same data constraints, and the same known-safe and high-risk cases. |
| - | Detail | Run the documented integration for each product without assuming similar terms provide the same control. |
| Ownership and Source Dates | H2 | Ownership and Source Dates |
| - | Body | A comparison must be reviewed after a material change to product scope, deployment, pricing, data handling, or limitations on either side. |
| Need More Detail on One Product? | H2 | Need More Detail on One Product? |
| - | Body | Open a single-product Review for setup, data, fit, limitations, and verification tasks. |
| - | Detail | Open a Best page when the decision requires a multi-product shortlist rather than one named pair. |
| Frequently Asked Questions | H2 | Frequently Asked Questions |
| - | Body | Use dimensions relevant to the buying task and supported by current first-party evidence for both products. |
| - | Detail | No. AgentGuard publishes the library and must disclose its relationship on every page. |

#### 4.9.8 AgentGuard vs Prompt Security

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AgentGuard vs Prompt Security \| AgentGuard | Use dated first-party evidence to compare public positioning, protected workflows, documented controls, unknowns, and a common proof-of-concept plan. | `/compare/agentguard-vs-prompt-security` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | AgentGuard vs Prompt Security: Compare the Documented Surfaces |
| - | Supporting copy | Use dated first-party evidence to compare public positioning, protected workflows, documented controls, unknowns, and a common proof-of-concept plan. |
| Scope, Method, and Source Dates | H2 | Scope, Method, and Source Dates |
| - | Body | This page compares only the public surfaces supported by the reviewed first-party sources. |
| - | Detail | Use common evidence fields, preserve unknowns, and test the same workflow and acceptance criteria for both products. |
| At-a-Glance Comparison | H2 | At-a-Glance Comparison |
| - | Body | AI agent security for developers; named high-risk actions, component scans, and OpenClaw workspace checks |
| - | Detail | MCP Gateway security and governance; security for homegrown AI applications |
| Documented Product Surfaces | H2 | Documented Product Surfaces |
| - | Body | Runtime Guard is publicly described for named action categories before execution. |
| - | Detail | Deep Scan is publicly described for skills, plugins, MCP servers, and agents across named risk categories. |
| Compare the Protected Workflow | H2 | Compare the Protected Workflow |
| - | Body | Where does the control enter the workflow? |
| - | Detail | Hooks, plugins, skills or commands, CLI, and APIs are described; depth varies |
| Deployment, Data, Pricing, and Limits | H2 | Deployment, Data, Pricing, and Limits |
| - | Body | AgentGuard: Multiple public integration modes are documented; complete host-by-host depth remains unknown. |
| - | Detail | Prompt Security: unknown from the two reviewed solution pages. |
| Run the Same Proof of Concept | H2 | Run the Same Proof of Concept |
| - | Body | The same target host, application, MCP path, users, and environment constraints |
| - | Detail | Architecture path, setup steps, required privileges, and unsupported connections |
| Questions to Resolve Before You Choose | H2 | Questions to Resolve Before You Choose |
| - | Body | What are the current plans and enterprise terms? |
| - | Detail | What data crosses the gateway or application integration? |
| Verify Before You Choose | H2 | Verify Before You Choose |
| - | Body | The reviewed evidence shows different documented entry points and control surfaces, but it does not establish complete scope or product equivalence. Resolve deployment, data, pricing, limitations, and the target POC outcomes before selecting either product. |
| - | Detail | Review Prompt Security's Agentic AI Security and Governance page |
| Frequently Asked Questions | H2 | Frequently Asked Questions |
| - | Body | No. AgentGuard publishes this vendor-authored comparison. |
| - | Detail | Are AgentGuard and Prompt Security equivalent in scope? |

#### 4.9.9 Glossary

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| AI Agent Security Glossary \| AgentGuard | Find concept-first definitions, scope boundaries, adjacent terms, and practical follow-up paths for AI agent security. | `/glossary` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | AI Agent Security Glossary |
| - | Supporting copy | Find concept-first definitions, scope boundaries, adjacent terms, and practical follow-up paths for AI agent security. |
| Browse Published Terms A-Z | H2 | Browse Published Terms A-Z |
| - | Body | Letters without a reviewed, working glossary route remain inactive. |
| - | Detail | The manipulation of a tool surface or behavior that can steer an agent toward an unsafe decision or action. |
| Browse by Topic | H2 | Browse by Topic |
| - | Body | Published definition: Agent Tool Poisoning |
| - | Detail | No reviewed glossary entry is published yet. |
| Featured Definition | H2 | Featured Definition |
| - | Body | Agent tool poisoning is the manipulation of a tool's metadata, configuration, implementation, dependency, output, or behavior so an agent is steered toward an unsafe decision or action. |
| How Glossary Definitions Are Built | H2 | How Glossary Definitions Are Built |
| - | Body | Show where it appears in the system or workflow. |
| - | Detail | Cite topic-specific sources and show the evidence review date. |
| Move from Definition to Practice | H2 | Move from Definition to Practice |
| - | Body | Understand the term and its system boundary. |
| - | Detail | Place the risk in a broader security method. |
| Frequently Asked Questions | H2 | Frequently Asked Questions |
| - | Body | A term must clarify an agent-security concept and support a real learning or implementation path. |
| - | Detail | The index lists only reviewed definitions with working routes. Candidate terms are not displayed as published content. |

#### 4.9.10 Agent Tool Poisoning

**Metadata**

| Title | Description | URL Slug |
|-|-|-|
| What Is Agent Tool Poisoning? \| AgentGuard | Agent tool poisoning is the manipulation of a tool's metadata, configuration, implementation, dependency, output, or behavior so an agent is steered toward an unsafe decision or action. | `/glossary/agent-tool-poisoning` |

**页面文案**

| 内容模块 | 文案类型 | 具体文案 |
|-|-|-|
| Hero | H1 | What Is Agent Tool Poisoning? |
| - | Supporting copy | Agent tool poisoning is the manipulation of a tool's metadata, configuration, implementation, dependency, output, or behavior so an agent is steered toward an unsafe decision or action. |
| Boundary Note | Body | Working editorial definition. Topic-specific authoritative sources are required before publication. |
| Agent Tool Poisoning Definition | H2 | Agent Tool Poisoning Definition |
| - | Body | Agent tool poisoning describes a compromised or manipulated tool surface that changes what an agent is told, what the tool can do, what it returns, or how the agent chooses and executes a downstream action. |
| - | Detail | Proof that a specific product detects the behavior |
| Where the Risk Can Enter | H2 | Where the Risk Can Enter |
| - | Body | Instructions or metadata may influence when and how the agent selects the tool. |
| - | Detail | The code behind a tool, plugin, or skill may perform behavior beyond the expected function. |
| A Typical Tool-Poisoning Path | H2 | A Typical Tool-Poisoning Path |
| Potential Impact | H2 | Potential Impact |
| - | Body | The agent may choose an unsafe or unintended tool. |
| - | Detail | The tool may request or receive data outside the expected task. |
| Tool Poisoning vs Prompt Injection | H2 | Tool Poisoning vs Prompt Injection |
| - | Body | A tool surface or behavior, including metadata, code, configuration, dependency, update, or output |
| - | Detail | Instructions or context that influence model or agent behavior |
| How MCP Tool Poisoning Fits the Concept | H2 | How MCP Tool Poisoning Fits the Concept |
| - | Body | MCP tool poisoning can be an MCP-specific instance when manipulated tool descriptions, server behavior, configuration, updates, or returned content influence an agent through an MCP connection. Tool poisoning is not limited to MCP. |
| What Teams Should Verify | H2 | What Teams Should Verify |
| - | Body | [ ] Publisher, source, repository, and package identity |
| - | Detail | [ ] Requested permissions and reachable data |
| Related AgentGuard Controls | H2 | Related AgentGuard Controls |
| - | Body | AgentGuard publicly documents Deep Scan for skills, plugins, MCP servers, and agents, including malicious tools and backdoors as named risk categories. |
| - | Detail | AgentGuard publicly documents Runtime Guard for named high-risk action categories before execution. Whether a specific tool path is covered depends on the integration. |
| Frequently Asked Questions | H2 | Frequently Asked Questions |
| - | Body | It is the manipulation of a tool's metadata, configuration, implementation, dependency, output, or behavior so an agent is steered toward an unsafe decision or action. |
| - | Detail | How is tool poisoning different from prompt injection? |