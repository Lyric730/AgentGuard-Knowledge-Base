<!--
Source: https://acntglrfp7bm.feishu.cn/wiki/PQEFwZlfuihOymk7PpYc2XAEnuf
Feishu document id: IHECdwD8xoFSd5xJDvwci91anRf
Revision: 34
Exported at: 2026-08-15T13:31:06Z
-->
# AgentGuard 03 英文 SEO 页面文案

> 状态：客户审核稿  
> 审核：以下英文为页面文案草稿；中文只标页面状态和待确认项。  
> 合并规则：Meta Title `<60`、Meta Description `<160`；正式域名未统一前只写 Canonical path。Alt draft 需按最终实图复核，装饰图使用 `alt=""`。

## 01. Home - `/`

**Hero**

**H1:** AI Agent Security for AI Developers

**Supporting copy:** Check high-risk actions before execution, scan agent components for documented threats, and monitor OpenClaw workspace changes.

- **Primary CTA:**`Open Quickstart` → `https://www.agentguard.one/docs/quickstart`
- **Secondary CTA:**`Book a Demo` → `/contact`
- **CTA 位置：** Hero 同时展示；能力和证据讲清后在页尾重复。

**On-Page SEO**

- **Meta Title (39/60):**`AI Agent Security Platform | AgentGuard`
- **Meta Description (126/160):** Protect AI coding agents before risky actions execute, scan agent components, and monitor OpenClaw workspaces with AgentGuard.
- **Canonical path:**`/`
- **Alt text draft:**`AgentGuard home page visual for Why AI Agents Need a New Security Boundary`
- **Internal links:**`Runtime Guard` → `/features/runtime-guard`; `Deep Scan` → `/features/deep-scan`; `OpenClaw Patrol` → `/features/openclaw-patrol`; `For Developers` → `/solutions/developers`; `Docs` → `/docs`; `Security` → `/security`

### Why AI Agents Need a New Security Boundary

AI agents can work across commands, files, tools, networks, and secrets. Each action can change a system or expose sensitive information, so security controls need to evaluate what an agent is about to do, not only what it says.

### Choose the Protection Surface

Use Runtime Guard to evaluate documented high-risk action categories before execution. Use Deep Scan to review skills, plugins, agents, and MCP servers for documented component risks. Use OpenClaw Environment Patrol to watch for security-relevant changes inside an OpenClaw workspace.

### How AgentGuard Fits the Workflow

Start with component review before adding a dependency. Apply runtime checks when the agent attempts a high-impact action. For OpenClaw environments, add workspace patrol to identify suspicious skills, modified plugins, new MCP servers, and drift in trusted files.

### Built for Developer Workflows

The current Quickstart lists Claude Code, OpenClaw, Hermes, Codex CLI, Gemini CLI, Cursor, GitHub Copilot, and MCP hosts. Integration modes vary across hooks, plugins, skills, and commands, so verify the protection depth for the environment you use.

### First-Party Security Resources

Use the AgentGuard Docs for installation and configuration, the public GitHub repository for the open-source runtime layer, and the Agent Security Advisor for first-party advisories. These resources provide evidence you can inspect before enabling a control.

### Start with the Quickstart

Follow the official Quickstart to install AgentGuard and choose a documented integration path. If you need to evaluate deployment, data handling, or commercial requirements with the team, book a demo after reviewing the technical surface.

### FAQ

**What actions can Runtime Guard evaluate?**  
The public homepage names shell commands, file access, tool actions, network requests, secret access, sensitive writes, and webhook exfiltration.

**What components can Deep Scan review?**  
The public homepage names skills, plugins, agents, and MCP servers.

**What does OpenClaw Environment Patrol monitor?**  
It checks for suspicious skills, modified plugins, new MCP servers, and drift in trusted files inside the OpenClaw workspace.

**What data may be sent in cloud-connected mode?**  
Public materials say cloud-connected use may send sanitized action previews, risk metadata, decisions, policy versions, and audit events. Review the current privacy documentation before deployment.

---

## 02. AI CISO - `/ai-ciso`

> 页面状态：🟡 这是职责核验页，不宣称 AgentGuard 已是完整 AI CISO 产品。

**Hero**

**H1:** Evaluate AI CISO Requirements for AI Agent Security

**Supporting copy:** Map AgentGuard's verified runtime checks, component scanning, and public advisories to the responsibilities your team actually needs.

- **Primary CTA:**`Open Quickstart` → `https://www.agentguard.one/docs/quickstart`
- **Secondary CTA:**`Book a Demo` → `/contact`
- **CTA 位置：** Hero 展示；能力范围、工作方式和限制讲清后在页尾重复。

**On-Page SEO**

- **Meta Title (53/60):**`AI CISO Evaluation for AI Agent Security | AgentGuard`
- **Meta Description (125/160):** Evaluate AgentGuard's documented runtime, component scanning, and threat-advisory surfaces against your AI CISO requirements.
- **Canonical path:**`/ai-ciso`
- **Alt text draft:**`AI CISO page visual for Define the AI CISO Responsibility`
- **Internal links:**`Runtime Guard` → `/features/runtime-guard`; `Deep Scan` → `/features/deep-scan`; `Threat Intelligence` → `/features/threat-intelligence`; `Security` → `/security`; `Docs` → `/docs`

### Define the AI CISO Responsibility

Start by defining the decisions this role or platform must support. Document who reviews agent risk, which actions need approval, what evidence must be retained, and how security findings move into an operational response.

### Documented AgentGuard Surfaces

AgentGuard publicly documents Runtime Guard for named high-risk actions, Deep Scan for agent-related components, and a public advisory surface. These capabilities can be evaluated against a responsibility list without treating them as proof of a complete AI CISO operating model.

### What the Public Evidence Does Not Establish

The reviewed public materials do not establish a complete set of broader lifecycle or organizational-control workflows. Keep inventory, simulation, approval, reporting, and policy-administration requirements visible as evaluation gaps until first-party evidence is available.

### Evaluation Questions for Your Team

Which agents and tools need oversight? Which actions require a decision before execution? Which roles need access to findings? What audit, retention, reporting, privacy, and response evidence must the system produce? Use the answers to define a proof of concept.

### Verify the Technical Surface

Review the Quickstart, API Reference, public repository, and security documentation. Test one documented integration path and record what AgentGuard can verify today, what depends on configuration, and what remains outside the public evidence.

### FAQ

**Is AI CISO a formally defined AgentGuard product category?**  
No. This page uses AI CISO as an evaluation task. The reviewed public sources position AgentGuard as AI agent security for developers.

**Can AgentGuard replace a security leader?**  
The public evidence does not support that claim. Evaluate the documented controls against the responsibilities your team needs.

**Which organizational control workflows are publicly documented?**  
The reviewed sources document product controls and API groups, but they do not establish a complete approval, reporting, or policy-administration workflow.

**What can a buyer verify now?**  
Runtime action categories, component scan targets, integration modes, API endpoint groups, public advisories, and qualified data-boundary statements.

---

## 03. Runtime Guard - `/features/runtime-guard`

**Hero**

**H1:** Check High-Risk Agent Actions Before Execution

**Supporting copy:** Runtime Guard evaluates documented shell, file, tool, network, secret, sensitive-write, and webhook-exfiltration action categories.

- **Primary CTA:**`Open Quickstart` → `https://www.agentguard.one/docs/quickstart`
- **Secondary CTA:**`Read Docs` → `/docs`
- **CTA 位置：** Hero 展示；能力范围、工作方式和限制讲清后在页尾重复。

**On-Page SEO**

- **Meta Title (51/60):**`AI Runtime Security with Runtime Guard | AgentGuard`
- **Meta Description (129/160):** Evaluate high-risk shell, file, tool, network, secret, write, and webhook actions before execution with AgentGuard Runtime Guard.
- **Canonical path:**`/features/runtime-guard`
- **Alt text draft:**`Runtime Guard page visual for The Runtime Action Surface`
- **Internal links:**`Deep Scan` → `/features/deep-scan`; `For Developers` → `/solutions/developers`; `For Security Teams` → `/solutions/security-teams`; `Docs` → `/docs`; `API Reference` → `/docs/api`; `Security` → `/security`

### The Runtime Action Surface

The public AgentGuard homepage names shell commands, file access, tool actions, network requests, secret access, sensitive writes, and webhook exfiltration as Runtime Guard action categories. Actual coverage depends on the integration path and configuration.

### How a Runtime Decision Works

Runtime Guard places a security decision before a documented high-risk action executes. The API Reference lists tool-call, file, text, and runtime-decision endpoints, but public evidence does not establish latency, accuracy, or a universal enforcement outcome.

### Integration Modes

The Quickstart documents pre- and post-tool hooks for Claude Code, plugin hooks for OpenClaw, native tool hooks for Hermes, and skill- or command-based paths for several other environments. Do not assume these modes provide identical interception depth.

### Data and Audit Boundaries

Public materials say local mode does not upload full code, prompts, secrets, or file contents. Cloud-connected use may send sanitized action previews, risk metadata, decisions, policy versions, and audit events. Confirm the current data path before deployment.

### Related Component Checks

Runtime Guard evaluates actions at execution time. Deep Scan addresses a different control point by reviewing skills, plugins, agents, and MCP servers before they become trusted dependencies.

### Implementation Questions

Confirm the integration mode, actions in scope, expected allow and block outcomes, offline behavior, policy source, audit evidence, and residual gaps. Test the exact workflow in a controlled environment before broader enablement.

### FAQ

**Which actions are documented?**  
Shell, file, tool, network, secret, sensitive-write, and webhook-exfiltration action categories are named publicly.

**Do all integrations provide the same protection depth?**  
No. The Quickstart documents different hook, plugin, skill, and command modes.

**What happens offline?**  
The Quickstart says offline use can rely on cached policy. Verify the current behavior for the chosen integration.

**Are latency or accuracy metrics available?**  
No approved public metric is available in the reviewed evidence.

---

## 04. Deep Scan - `/features/deep-scan`

**Hero**

**H1:** Scan AI Agent Components Before You Trust Them

**Supporting copy:** Deep Scan reviews skills, plugins, agents, and MCP servers for documented component risks.

- **Primary CTA:**`Open Quickstart` → `https://www.agentguard.one/docs/quickstart`
- **Secondary CTA:**`Explore MCP Security` → `/solutions/mcp-security`
- **CTA 位置：** Hero 展示；能力范围、工作方式和限制讲清后在页尾重复。

**On-Page SEO**

- **Meta Title (50/60):**`AI Agent Component Scanning | AgentGuard Deep Scan`
- **Meta Description (133/160):** Scan skills, plugins, agents, and MCP servers for documented risks including prompt injection, malicious tools, leaks, and backdoors.
- **Canonical path:**`/features/deep-scan`
- **Alt text draft:**`Deep Scan page visual for Components in Scope`
- **Internal links:**`Runtime Guard` → `/features/runtime-guard`; `MCP & Agent Security` → `/solutions/mcp-security`; `For Developers` → `/solutions/developers`; `Docs` → `/docs`; `API Reference` → `/docs/api`

### Components in Scope

The public homepage describes Deep Scan coverage for skills, plugins, agents, and MCP servers. The API Reference also lists scan endpoints for repositories, packages, MCP servers, and URLs.

### Documented Risk Categories

Public product materials name prompt injection, malicious tools, credential leaks, and backdoors as Deep Scan risk categories. No public evidence supports a claim that every possible component risk is detected.

### How to Start a Scan

Use the current AgentGuard documentation for the supported scan path. The public API surface lists repository, package, MCP-server, and URL endpoints; request and response behavior should be verified before production integration.

### Reading Results with the Right Boundary

Treat a scan result as evidence for review, not as a safety guarantee. Consider the component source, requested permissions, dependencies, configuration, updates, and the actions it can trigger after installation.

### From Component Review to Runtime Checks

Use Deep Scan before trusting a component and after material changes. Use Runtime Guard for documented high-risk actions during execution. The two controls address different points in the workflow.

### FAQ

**Which components can Deep Scan review?**  
The public homepage names skills, plugins, agents, and MCP servers.

**Which risk categories are documented?**  
Prompt injection, malicious tools, credential leaks, and backdoors.

**Does a clean scan guarantee safety?**  
No. Public evidence does not establish complete coverage or a safety guarantee.

**Which package ecosystems are supported?**  
The reviewed evidence does not define a complete package-ecosystem list.

---

## 05. OpenClaw Patrol - `/features/openclaw-patrol`

**Hero**

**H1:** Monitor Security-Relevant Changes in OpenClaw

**Supporting copy:** OpenClaw Environment Patrol checks suspicious skills, modified plugins, new MCP servers, and drift in trusted files.

- **Primary CTA:**`Open Quickstart` → `https://www.agentguard.one/docs/quickstart`
- **Secondary CTA:**`Review Deep Scan` → `/features/deep-scan`
- **CTA 位置：** Hero 展示；能力范围、工作方式和限制讲清后在页尾重复。

**On-Page SEO**

- **Meta Title (54/60):**`OpenClaw Security with Environment Patrol | AgentGuard`
- **Meta Description (111/160):** Check OpenClaw workspaces for suspicious skills, modified plugins, new MCP servers, and drift in trusted files.
- **Canonical path:**`/features/openclaw-patrol`
- **Alt text draft:**`OpenClaw Patrol page visual for OpenClaw Workspace Changes in Scope`
- **Internal links:**`Deep Scan` → `/features/deep-scan`; `Runtime Guard` → `/features/runtime-guard`; `Docs` → `/docs`; `For Developers` → `/solutions/developers`

### OpenClaw Workspace Changes in Scope

OpenClaw Environment Patrol is documented for suspicious skills, modified plugins, new MCP servers, and drift in trusted files. Keep the scope specific to the OpenClaw workspace.

### Plugin Hooks, Auto-Scanning, and Patrol

The Quickstart describes plugin hooks, auto-scanning, and daily patrol for OpenClaw. Confirm the current plugin version, configuration, and schedule before relying on a default behavior.

### Patrol, Deep Scan, and Runtime Guard

Patrol checks security-relevant workspace changes. Deep Scan reviews components, while Runtime Guard evaluates documented high-risk actions before execution. Use each control for its stated task.

### Configuration and Response Boundaries

Public evidence does not establish the complete alert-delivery, escalation, or response workflow. Define who reviews a finding, how changes are verified, and what action follows before production use.

### Start with the OpenClaw Quickstart

Follow the current OpenClaw integration instructions, verify that the plugin and patrol are active, and test a controlled workspace change. Record the observed finding and response path.

### FAQ

**What does Patrol check?**  
Suspicious skills, modified plugins, new MCP servers, and drift in trusted files.

**How often does Patrol run?**  
The Quickstart describes daily patrol, but the current schedule and configuration should be verified.

**How are findings delivered?**  
The reviewed public evidence does not establish the complete delivery and escalation workflow.

**Does Patrol cover every AI agent?**  
No. The documented capability is specific to OpenClaw.

---

## 06. Threat Intelligence - `/features/threat-intelligence`

> 页面状态：🟡 可发布公开 Advisory 导航；feed、更新频率和规则联动仍待确认。

**Hero**

**H1:** First-Party Advisories for AI Agent Threats

**Supporting copy:** Review public AgentGuard advisories across documented AI agent threat topics and follow the evidence to relevant controls.

- **Primary CTA:**`Browse Advisories` → `https://www.agentguard.one/advisor`
- **Secondary CTA:**`Read Security Docs` → `/docs`
- **CTA 位置：** Hero 展示；能力范围、工作方式和限制讲清后在页尾重复。

**On-Page SEO**

- **Meta Title (41/60):**`AI Agent Threat Intelligence | AgentGuard`
- **Meta Description (115/160):** Explore AgentGuard's public AI agent security advisories and the documented policy context behind local protection.
- **Canonical path:**`/features/threat-intelligence`
- **Alt text draft:**`Threat Intelligence page visual for Browse Public Advisories`
- **Internal links:**`Deep Scan` → `/features/deep-scan`; `Runtime Guard` → `/features/runtime-guard`; `AI Agent Security Guide` → `/guides/ai-agent-security`; `Security` → `/security`; `Docs` → `/docs`

### Browse Public Advisories

Use the public Agent Security Advisor to inspect first-party advisory titles, descriptions, and remediation context. Do not treat the visible library as a complete threat catalog.

### Threat Topics in the Current Library

Organize published advisories by the threat topic stated in each advisory. Keep the source date visible and avoid publishing a total count or update-frequency claim while first-party surfaces conflict.

### From Advisory to Product Context

The Quickstart says local protection can use cloud-backed policy and threat intelligence. This supports a bounded connection between threat context and local protection, not a claim that every advisory automatically becomes a policy or rule.

### What Is Not Yet Documented

The reviewed public sources do not establish feed composition, editorial responsibility, update cadence, external citation policy, or the mechanism that connects advisories to product decisions.

### Related Controls and Guides

Use Deep Scan for documented component risks, Runtime Guard for named high-risk actions, and the AI Agent Security Guide for a broader control plan. Follow each advisory to the narrowest relevant control.

### FAQ

**How often are advisories updated?**  
No reliable public cadence is established in the reviewed evidence.

**Does every advisory automatically update policy?**  
The reviewed evidence does not support that claim.

**Where does the threat feed come from?**  
Feed composition is not documented in the approved public evidence.

**Can external teams republish the advisories?**  
Confirm the current citation and reuse policy before republication.

---

## 07. For Developers - `/solutions/developers`

**Hero**

**H1:** Secure Coding Agents Without Hiding the Workflow

**Supporting copy:** Start with documented installation paths, scan agent components, and evaluate named high-risk actions before execution.

- **Primary CTA:**`Open Quickstart` → `https://www.agentguard.one/docs/quickstart`
- **Secondary CTA:**`Explore Runtime Guard` → `/features/runtime-guard`
- **CTA 位置：** Hero 展示；场景、控制方式和适用边界讲清后在页尾重复。

**On-Page SEO**

- **Meta Title (49/60):**`Coding Agent Security for Developers | AgentGuard`
- **Meta Description (113/160):** Add documented component checks and pre-execution action evaluation to AI coding-agent workflows with AgentGuard.
- **Canonical path:**`/solutions/developers`
- **Alt text draft:**`For Developers page visual for Where Coding-Agent Workflows Fail`
- **Internal links:**`Runtime Guard` → `/features/runtime-guard`; `Deep Scan` → `/features/deep-scan`; `Docs` → `/docs`; `API Reference` → `/docs/api`; `Security` → `/security`

### Where Coding-Agent Workflows Fail

Coding agents can use tools, access files, issue commands, connect to networks, and handle secrets. Risk can also enter through skills, plugins, agents, and MCP servers that become trusted dependencies.

### Check Components Before Use

Use Deep Scan to review documented component types for prompt injection, malicious tools, credential leaks, and backdoors. Treat findings as review evidence rather than a guarantee.

### Evaluate High-Risk Actions at Runtime

Use Runtime Guard for documented shell, file, tool, network, secret, sensitive-write, and webhook-exfiltration action categories before execution.

### Choose the Right Integration Mode

The Quickstart lists Claude Code, OpenClaw, Hermes, Codex CLI, Gemini CLI, Cursor, GitHub Copilot, and MCP hosts. Hooks, plugins, skills, and commands are different integration modes and should be tested separately.

### Installation, API, and Data Boundaries

The official Quickstart provides Windows and Unix installation paths. The API Reference lists runtime and scan endpoint groups. Public materials also distinguish local handling from cloud-connected metadata and audit events.

### Developer Implementation Checklist

Install from the current Quickstart. Confirm the integration mode. Scan the components in scope. Test one expected allow path and one high-risk path. Inspect the resulting evidence, document residual gaps, and keep the Docs and public repository available for verification.

### FAQ

**Which coding agents and IDEs are listed?**  
Claude Code, OpenClaw, Hermes, Codex CLI, Gemini CLI, Cursor, GitHub Copilot, and MCP hosts appear in first-party materials.

**Do all integrations provide the same depth?**  
No. The documented modes differ across hooks, plugins, skills, and commands.

**Is an API key required for basic local protection?**  
The public repository says the API key is optional for cloud features and basic local protection can run without one.

**Which API surfaces are documented?**  
Runtime analysis, runtime decision, repository scan, package scan, MCP-server scan, and URL scan endpoints are listed.

---

## 08. For Security Teams - `/solutions/security-teams`

> 页面状态：🟡 已证控制可审核；企业安全运营能力不能写成现成功能。

**Hero**

**H1:** Evaluate AI Agent Controls with Clear Boundaries

**Supporting copy:** Review documented component checks, runtime action evaluation, data handling, and first-party advisories before deployment.

- **Primary CTA:**`Book a Demo` → `/contact`
- **Secondary CTA:**`Review Security` → `/security`
- **CTA 位置：** Hero 展示；场景、控制方式和适用边界讲清后在页尾重复。

**On-Page SEO**

- **Meta Title (49/60):**`AI Agent Security for Security Teams | AgentGuard`
- **Meta Description (119/160):** Evaluate component scanning, pre-execution action checks, data boundaries, and public advisories for AI agent security.
- **Canonical path:**`/solutions/security-teams`
- **Alt text draft:**`For Security Teams page visual for Security-Team Failure Modes`
- **Internal links:**`Security` → `/security`; `Runtime Guard` → `/features/runtime-guard`; `Deep Scan` → `/features/deep-scan`; `Threat Intelligence` → `/features/threat-intelligence`; `API Reference` → `/docs/api`; `Contact` → `/contact`

### Security-Team Failure Modes

Security teams need to evaluate risk in agent components, high-impact runtime actions, MCP connections, and data handling. Each area has a different control point and may leave a different residual gap.

### Map Risks to Documented Controls

Use Deep Scan for documented component targets and risk categories. Use Runtime Guard for named high-risk action categories before execution. Use the public Advisor for first-party threat context. Do not present these surfaces as a complete security-operations platform.

### Review Data and Integration Boundaries

Public materials distinguish local mode from cloud-connected use and describe different integration modes across supported environments. Confirm what stays local, what metadata may be sent, and whether the chosen integration can observe the actions in scope.

### Evidence Available Today

The current evidence set includes the public homepage, Quickstart, API Reference, GitHub repository, and Agent Security Advisor. Use these first-party surfaces to verify claims and design a controlled evaluation.

### Enterprise Controls Still to Verify

Role-based access, approval workflows, reporting, retention, audit export, certifications, support commitments, and a complete security-operations workflow are not established by the reviewed public evidence.

### Security Evaluation Checklist

List the agents, components, tools, actions, and data in scope. Map each risk to a documented control. Define expected allow and block outcomes, required evidence, access needs, and residual gaps. Confirm unanswered enterprise requirements before deployment.

### FAQ

**Is role-based access or an approval workflow documented?**  
The reviewed public evidence does not establish a complete RBAC or approval workflow.

**Are policy and audit API groups documented?**  
Yes. The API Reference lists policy and audit endpoint groups, but live behavior was not tested in this evidence pass.

**Which certifications are available?**  
No certification claim is approved in the current product fact base.

**What data may cloud-connected use send?**  
Public materials describe sanitized action previews, risk metadata, decisions, policy versions, and audit events.

---

## 09. For Enterprise - `/solutions/enterprise`

> 页面状态：🟡 这是采购核验页；部署、合规、支持和 SLA 仍是待确认项。

**Hero**

**H1:** Evaluate AgentGuard for Enterprise AI Agent Security

**Supporting copy:** Start with documented controls and data boundaries, then verify deployment, access, compliance, support, and service requirements.

- **Primary CTA:**`Book a Demo` → `/contact`
- **Secondary CTA:**`Review Security` → `/security`
- **CTA 位置：** Hero 展示；场景、控制方式和适用边界讲清后在页尾重复。

**On-Page SEO**

- **Meta Title (41/60):**`Enterprise AI Agent Security | AgentGuard`
- **Meta Description (114/160):** Evaluate AgentGuard runtime, scanning, patrol, API, advisory, integration, and data boundaries for enterprise use.
- **Canonical path:**`/solutions/enterprise`
- **Alt text draft:**`For Enterprise page visual for Documented Product Surfaces`
- **Internal links:**`Security` → `/security`; `Pricing` → `/pricing`; `Docs` → `/docs`; `API Reference` → `/docs/api`; `Contact` → `/contact`

### Documented Product Surfaces

Public sources document Runtime Guard, Deep Scan, OpenClaw Environment Patrol, runtime and scan API groups, public advisories, and multiple integration modes. These are the current evidence-backed surfaces for enterprise evaluation.

### Enterprise Risk and Control Map

Map component risk to Deep Scan, named high-risk actions to Runtime Guard, OpenClaw workspace changes to Patrol, and threat context to public advisories. Record which enterprise requirements have no documented control.

### Deployment and Integration Questions

Identify the target agents, IDEs, MCP hosts, repositories, and environments. Confirm the required topology, integration mode, protection depth, identity model, change process, and production support before treating the solution as deployable at scale.

### Data, Privacy, and Audit Questions

Start from the qualified local and cloud-connected statements in public materials. Then confirm retention, access, export, privacy terms, data residency, subprocessors, and the evidence needed for internal or external review.

### Support and Service Readiness

The reviewed evidence does not establish service levels, support tiers, escalation paths, private deployment, certifications, or contractual commitments. Keep these items in the procurement checklist rather than presenting them as included capabilities.

### Enterprise Evaluation Path

Review Security and the Docs first. Define a proof of concept around one real agent workflow, then use the contact route to resolve deployment, privacy, compliance, support, and commercial questions.

### FAQ

**Which deployment topologies are supported?**  
The reviewed public evidence does not define a complete enterprise deployment matrix.

**Are IAM, retention, and audit export documented?**  
These requirements need authoritative confirmation.

**Are support and SLA terms public?**  
No approved support or SLA commitment is available in the current evidence set.

**Is AgentGuard a complete enterprise oversight platform?**  
The reviewed public evidence does not support that claim.

---

## 10. MCP & Agent Security - `/solutions/mcp-security`

**Hero**

**H1:** Secure MCP Components with Explicit Runtime Boundaries

**Supporting copy:** Use documented MCP server scanning and trust controls while keeping the current third-party runtime coverage limitation visible.

- **Primary CTA:**`Explore Deep Scan` → `/features/deep-scan`
- **Secondary CTA:**`Book a Demo` → `/contact`
- **CTA 位置：** Hero 展示；场景、控制方式和适用边界讲清后在页尾重复。

**On-Page SEO**

- **Meta Title (39/60):**`MCP Security for AI Agents | AgentGuard`
- **Meta Description (117/160):** Scan MCP servers, use documented trust and hook controls, and understand current third-party MCP runtime limitations.
- **Canonical path:**`/solutions/mcp-security`
- **Alt text draft:**`MCP & Agent Security page visual for Where MCP Risk Enters the Agent Workflow`
- **Internal links:**`Deep Scan` → `/features/deep-scan`; `Runtime Guard` → `/features/runtime-guard`; `Docs` → `/docs`; `API Reference` → `/docs/api`; `Contact` → `/contact`

### Where MCP Risk Enters the Agent Workflow

MCP risk can enter when a server or tool becomes a trusted component, when an agent receives tool descriptions or returned content, and when a host allows tool calls to reach files, credentials, networks, or other systems.

### Scan MCP Servers Before Trust

The public homepage includes MCP servers in Deep Scan coverage, and the API Reference lists an MCP-server scan endpoint. Review a server before use and again after material changes.

### Trust, Reputation, and Hook-Layer Controls

The public FAQ says scans, reputation, trust-registry signals, and hook-layer controls can reduce MCP risk. The reviewed evidence does not establish the complete data sources, freshness, or decision logic behind every signal.

### Current Runtime Coverage Limitation

AgentGuard's public FAQ says it cannot fully monitor or block all third-party MCP server runtime calls. Keep this limitation visible when evaluating a host, server, and integration path.

### MCP Evaluation Checklist

Inventory the MCP hosts and servers in scope. Verify server provenance, permissions, updates, and data access. Confirm the host integration mode, test expected tool-call decisions, inspect evidence, and document calls that remain outside the control path.

### Verify the Implementation

Use Deep Scan and the API documentation to review the component surface. Use Runtime Guard only where the selected integration can evaluate the relevant action. Run a controlled proof of concept before relying on production coverage.

### FAQ

**Can AgentGuard scan an MCP server?**  
Yes. MCP servers are named as Deep Scan targets, and an MCP-server scan endpoint is documented.

**Can AgentGuard monitor or block every third-party MCP runtime call?**  
No. The public FAQ explicitly states that current limitation.

**How do reputation and trust-registry signals work?**  
The reviewed evidence does not establish the complete sources, freshness, or decision logic.

**Which MCP hosts have verified coverage?**  
First-party materials list MCP hosts as an entry point, but protection depth must be verified for the target host.

---

## 11. Pricing - `/pricing`

> 页面状态：🔴 商业信息未齐，不能发布虚构 plan 或价格。

**Hero**

**H1:** Choose an AgentGuard Evaluation Path

**Supporting copy:** Start with the documented open-source local guard or request current commercial terms from AgentGuard.

- **Primary CTA:**`Open Quickstart` → `https://www.agentguard.one/docs/quickstart`
- **Secondary CTA:**`Contact Sales` → `/contact`
- **CTA 位置：** Hero 或表单前展示；套餐、联系范围和待确认条件说明后再重复。

**On-Page SEO**

- **Meta Title (28/60):**`AgentGuard Pricing and Plans`
- **Meta Description (134/160):** Review AgentGuard's verified open-source local entry point and request current plan, usage, deployment, support, and enterprise terms.
- **Canonical path:**`/pricing`
- **Alt text draft:**`Pricing page visual for Start with the Verified Local Entry Point`
- **Internal links:**`Docs` → `/docs`; `Security` → `/security`; `For Enterprise` → `/solutions/enterprise`; `Contact` → `/contact`

### Start with the Verified Local Entry Point

The public AgentGuard repository describes an open-source runtime security layer under the MIT license. It says basic local protection can run without an API key and that an API key is optional for documented cloud features.

### Current Plans and Usage

Current plan names, prices, usage limits, trial terms, and feature allocations are not approved for publication. Keep this section unpublished until the commercial offer is confirmed.

### Capability Comparison

The final comparison should state which documented controls, integrations, usage levels, team features, and cloud capabilities belong to each approved plan. Do not infer the matrix from a competitor or from the open-source entry point.

### Deployment, Team, and Support Options

Deployment choices, team access, custom rules, support scope, enterprise terms, and service commitments require confirmation. Present only the options included in the current approved offer.

### Pricing Questions

Answer whether basic local use requires a key, which cloud features require one, what limits apply, how team access works, and which enterprise terms are available. Unknown answers remain unpublished.

### Start or Request Terms

Use the Quickstart for the verified technical entry point. Use Contact Sales for current commercial, deployment, support, and enterprise terms.

### FAQ

**Can I start without an API key?**  
The public repository says basic local protection can run without one.

**Which cloud features require a key?**  
The repository says the key is optional for cloud features, but the complete feature allocation requires confirmation.

**What are the current plans and limits?**  
They are not approved for publication in the current evidence set.

**Are enterprise deployment and support included?**  
Current enterprise terms must be confirmed before publication.

---

## 12. Security - `/security`

> 页面状态：🟡 已证控制和数据边界可审核；认证、审计和正式隐私口径仍待补。

**Hero**

**H1:** AgentGuard Security and Data Boundaries

**Supporting copy:** Review what AgentGuard checks, what local mode does not upload, what connected use may send, and which controls still need verification.

- **Primary CTA:**`Review Security Docs` → `/docs`
- **Secondary CTA:**`Contact Security` → `/contact`
- **CTA 位置：** 首屏提供查证或联系入口；安全事实和政策入口后再重复。

**On-Page SEO**

- **Meta Title (37/60):**`AgentGuard Security and Data Handling`
- **Meta Description (121/160):** Review documented runtime controls, component scanning, local and connected data boundaries, and current MCP limitations.
- **Canonical path:**`/security`
- **Alt text draft:**`Security page visual for Security Topics`
- **Internal links:**`Runtime Guard` → `/features/runtime-guard`; `Deep Scan` → `/features/deep-scan`; `MCP & Agent Security` → `/solutions/mcp-security`; `Privacy Policy` → `/privacy-policy`; `Terms` → `/terms`; `Contact` → `/contact`

### Security Topics

Review AgentGuard across five topics: documented product controls, local and cloud-connected data handling, MCP runtime limitations, available first-party evidence, and formal policies or contact routes.

### Documented Product Controls

Runtime Guard evaluates named high-risk action categories before execution. Deep Scan reviews documented component types for prompt injection, malicious tools, credential leaks, and backdoors. OpenClaw Patrol has a separate, workspace-specific scope.

### Local and Cloud-Connected Data Handling

The public FAQ says local mode does not upload full code, prompts, secrets, or file contents. Cloud-connected use may send sanitized action previews, risk metadata, decisions, policy versions, and audit events. The Quickstart also refers to redacted metadata and audit events.

### MCP Runtime Limitation

AgentGuard supports MCP-server scanning and related controls, but the public FAQ says it cannot fully monitor or block all third-party MCP server runtime calls.

### Security Evidence and Certifications

The current public evidence includes product documentation, API groups, the public repository, and advisories. Certification, audit, encryption, retention, residency, subprocessor, and formal security-report claims require approved evidence.

### Policies and Security Contact

Link to the authoritative Privacy Policy and Terms only after Legal approval. Publish a monitored security contact or disclosure route only after it is confirmed.

### FAQ

**What does local mode not upload?**  
The public FAQ names full code, prompts, secrets, and file contents.

**What may cloud-connected use send?**  
Sanitized action previews, risk metadata, decisions, policy versions, and audit events are named publicly.

**Can AgentGuard block every MCP runtime call?**  
No. The public FAQ states that it cannot fully monitor or block all third-party MCP server runtime calls.

**Which certifications or audit reports are available?**  
No approved claim is available in the current product fact base.

---

## 13. Contact - `/contact`

> 页面状态：🔴 表单、路由、同意文案和响应承诺未确认，不能直接收件。

**Hero**

**H1:** Talk to the AgentGuard Team

**Supporting copy:** Tell us what you need to evaluate so the request can reach the right product, sales, support, partnership, or security owner.

- **Primary CTA:**`Submit Request` → `/contact#form`
- **Secondary CTA:**`Read Docs` → `/docs`
- **CTA 位置：** Hero 或表单前展示；联系范围和待确认条件说明后再重复。

**On-Page SEO**

- **Meta Title (18/60):**`Contact AgentGuard`
- **Meta Description (128/160):** Contact AgentGuard for product evaluation, enterprise questions, partnerships, support routing, or security disclosure guidance.
- **Canonical path:**`/contact`
- **Alt text draft:**`Contact page visual for Choose a Request Type`
- **Internal links:**`Docs` → `/docs`; `API Reference` → `/docs/api`; `Pricing` → `/pricing`; `Security` → `/security`; `About` → `/about`

### Choose a Request Type

Choose product evaluation, sales, support, partnership, or security disclosure. Each request type must route to a monitored destination before the form is published.

### What to Include

Describe the agent platform, integration mode, components, actions, deployment constraints, and decision you need to make. Do not submit passwords, API keys, private keys, source code, or other sensitive production data.

### Contact Form

The production form fields, required values, consent language, spam protection, and recipients must be confirmed. Do not enable submission until routing and privacy handling have been tested.

### Technical Self-Service

Use the AgentGuard Docs for installation and configuration, the API Reference for documented endpoints and authentication, and the public repository for the open-source package and CLI surface.

### What Happens Next

Publish a success state and response expectation only after the workflow has been tested. Do not promise a response time or escalation path that is not operationally supported.

### FAQ

**Is a demo request separate from other contact requests?**  
The final routing needs confirmation before publication.

**Where should technical questions go?**  
Start with the Docs and API Reference; publish a support route only after it is confirmed.

**How should a security issue be reported?**  
Use a monitored disclosure route once it is approved. Do not send secrets through an unverified form.

**What is the expected response time?**  
No response-time commitment is approved in the current evidence set.

---

## 14. About - `/about`

> 页面状态：🟡 产品定位、开源和 GoPlus 关系可写；公司履历仍留空。

**Hero**

**H1:** About AgentGuard

**Supporting copy:** AgentGuard focuses on documented AI agent security controls for developer workflows and is listed by GoPlus as an AI agent security solution.

- **Primary CTA:**`Explore AgentGuard` → `/`
- **Secondary CTA:**`Read the Docs` → `/docs`
- **CTA 位置：** 首屏提供查证入口；已验证产品和公司事实讲清后在页尾重复。

**On-Page SEO**

- **Meta Title (27/60):**`About AgentGuard and GoPlus`
- **Meta Description (134/160):** Learn how AgentGuard approaches AI agent security for developers, its open-source runtime layer, and its verified GoPlus relationship.
- **Canonical path:**`/about`
- **Alt text draft:**`About page visual for Why AgentGuard Exists`
- **Internal links:**`AgentGuard Home` → `/`; `Docs` → `/docs`; `Runtime Guard` → `/features/runtime-guard`; `Deep Scan` → `/features/deep-scan`; `Contact` → `/contact`

### Why AgentGuard Exists

AI agents can use tools, access files, issue commands, connect to networks, and depend on external components. AgentGuard focuses on security decisions around those actions and dependencies in developer workflows.

### What AgentGuard Publishes Today

The public product surface includes Runtime Guard, Deep Scan, and OpenClaw Environment Patrol, together with Docs, API documentation, a public repository, and first-party advisories.

### Open-Source Runtime Security

The public GitHub repository describes AgentGuard as an open-source runtime security layer for AI coding agents. The repository and package metadata list the MIT license.

### AgentGuard and GoPlus

GoPlus lists AgentGuard in its product portfolio as an AI agent security solution. Do not extend this verified relationship into unsupported claims about company scale, funding, customers, or integrations.

### Company Facts and People

Leadership, legal entity, headquarters, founding date, company contact, careers, and press information are not approved in the current evidence set. Keep this section unpublished until those facts are verified.

### Product, Docs, and Contact

Explore the current product surfaces, use the Docs for technical verification, and use the confirmed contact route for company or commercial questions.

### FAQ

**What is AgentGuard's public focus?**  
AI agent security for developers, with documented runtime, component-scanning, and OpenClaw workspace surfaces.

**How is AgentGuard related to GoPlus?**  
GoPlus lists AgentGuard in its product portfolio as an AI agent security solution.

**Is AgentGuard open source?**  
The public repository describes it as open source and lists the MIT license.

**Where are leadership and headquarters details?**  
Those facts are not approved in the current evidence set.

---

## 15. Privacy Policy - `/privacy-policy`

> 页面状态：🔴 Legal 占位，不能上线。现有 `/privacy` 正文不迁移，等 Legal 决定。

**Hero**

**H1:** AgentGuard Privacy Policy

**Supporting copy:** Legal-owned policy body required. This page is an SEO and navigation placeholder only.

- **Primary CTA:**`Read Policy` → `/privacy-policy#policy-body`
- **Secondary CTA:**`Contact Privacy` → `/contact`
- **CTA 位置：** 只保留正文阅读和法律联系入口；不放销售 CTA。

**On-Page SEO - Legal draft**

- **Meta Title (25/60):**`AgentGuard Privacy Policy`
- **Meta Description (132/160):** Read the official AgentGuard Privacy Policy, including its scope, effective date, data practices, rights, and privacy contact route.
- **Canonical path:**`/privacy-policy`
- **Alt text draft:**`Privacy Policy page visual for Policy Metadata`
- **Internal links:**`Security` → `/security`; `Terms` → `/terms`; `Contact` → `/contact`

### Policy Metadata

[Legal placeholder: insert the approved effective date, last updated date, legal entity, and policy scope.]

### Authoritative Policy Body

[Legal placeholder: insert the complete approved Privacy Policy verbatim. Do not draft, summarize, or reinterpret legal terms in this copy document.]

### Privacy Contact

[Legal placeholder: insert the confirmed, monitored privacy contact route and approved rights-request instructions.]

---

## 16. Terms - `/terms`

> 页面状态：🔴 Legal 占位，不能上线。没有可用的一手 Terms 正文。

**Hero**

**H1:** AgentGuard Terms of Service

**Supporting copy:** Legal-owned terms required. This page is an SEO and navigation placeholder only.

- **Primary CTA:**`Read Terms` → `/terms#terms-body`
- **Secondary CTA:**`Contact Legal` → `/contact`
- **CTA 位置：** 只保留正文阅读和法律联系入口；不放销售 CTA。

**On-Page SEO - Legal draft**

- **Meta Title (27/60):**`AgentGuard Terms of Service`
- **Meta Description (133/160):** Read the official AgentGuard Terms of Service, including scope, acceptance, governing terms, effective date, and contact information.
- **Canonical path:**`/terms`
- **Alt text draft:**`Terms page visual for Terms Metadata`
- **Internal links:**`Privacy Policy` → `/privacy-policy`; `Security` → `/security`; `Contact` → `/contact`

### Terms Metadata

[Legal placeholder: insert the approved legal entity, effective date, update date, and acceptance method.]

### Authoritative Terms Body

[Legal placeholder: insert the complete approved Terms of Service verbatim. Do not generate contractual clauses in this copy document.]

### Related Policies and Contact

[Legal placeholder: insert approved links to the Privacy Policy, any separate acceptable-use policy, and the monitored legal contact route.]

---

## 17. Docs - `/docs`

> 页面状态：🟡 安装入口有一手证据；验证、卸载、升级和排障仍需补正式文档。

**Hero**

**H1:** Install AgentGuard and Start with a Verified Path

**Supporting copy:** Use the official Quickstart for Windows or Unix, then choose the documented integration path for your environment.

- **Primary CTA:**`Open Quickstart` → `https://www.agentguard.one/docs/quickstart`
- **Secondary CTA:**`View API Reference` → `/docs/api`
- **CTA 位置：** 首屏优先技术动作；安装和参考说明后提供下一步。

**On-Page SEO**

- **Meta Title (40/60):**`Install AgentGuard | Docs and Quickstart`
- **Meta Description (134/160):** Install AgentGuard on Windows or Unix, choose a documented integration path, verify setup, and continue to API and configuration docs.
- **Canonical path:**`/docs`
- **Alt text draft:**`Docs page visual for Start Here`
- **Internal links:**`API Reference` → `/docs/api`; `Runtime Guard` → `/features/runtime-guard`; `Deep Scan` → `/features/deep-scan`; `OpenClaw Patrol` → `/features/openclaw-patrol`; `Contact` → `/contact`

### Start Here

Begin with the official Quickstart. Use the documented Windows or Unix installation path, configure an API key only when required for cloud features, and follow the integration instructions for the target environment.

### Choose Your Environment

The Quickstart lists Claude Code, OpenClaw, Hermes, Codex CLI, Gemini CLI, Cursor, GitHub Copilot, and MCP hosts. Their documented modes vary across hooks, plugins, skills, and commands.

### Install and Verify

The observed Unix installation command is `curl -fsSL https://agentguard.gopluslabs.io/install.sh | bash`. The observed Windows command is `iwr -useb https://agentguard.gopluslabs.io/install.ps1 | iex`. Use only current first-party verification steps; uninstall, cleanup, and upgrade instructions still require confirmation.

### Product and Configuration Docs

Continue to the current documentation for runtime protection, scanning, integrations, MCP setup, policy configuration, rules, and cloud connection. Do not publish a category or configuration option that is not present in the live Docs.

### API and Developer Reference

Use the API Reference for the documented base URL, authentication methods, runtime endpoints, scan endpoints, and additional endpoint groups. Validate request and response behavior before production integration.

### Troubleshooting and Support

Publish troubleshooting, status, and support routes only when they are current and monitored. Until then, direct implementation questions to the verified Docs, public repository, and confirmed contact route.

### FAQ

**How do I install AgentGuard?**  
Use the current official Quickstart for Windows or Unix. The public repository also documents `npm install -g @goplus/agentguard`.

**Is an API key required?**  
The repository says it is optional for cloud features and basic local protection can run without one.

**How do I verify the installation?**  
Use the current first-party verification steps; a complete approved verification flow is still required.

**How do I uninstall or clean up AgentGuard?**  
Do not publish instructions until the official uninstall and cleanup path is confirmed.

---

## 18. API Reference - `/docs/api`

> 页面状态：🟡 鉴权和 endpoint 导航可写；示例、错误、限流和 schema 未做 live 验证。

**Hero**

**H1:** AgentGuard API Reference

**Supporting copy:** Review documented authentication and runtime and scan endpoint groups before integrating against the current API host.

- **Primary CTA:**`Get an API Key` → `/api-keys`
- **Secondary CTA:**`Open Quickstart` → `https://www.agentguard.one/docs/quickstart`
- **CTA 位置：** 首屏优先技术动作；鉴权和 endpoint 说明后提供下一步。

**On-Page SEO**

- **Meta Title (24/60):**`AgentGuard API Reference`
- **Meta Description (132/160):** Review AgentGuard API authentication, runtime and scan endpoint groups, request and response examples, errors, and versioning notes.
- **Canonical path:**`/docs/api`
- **Alt text draft:**`API Reference page visual for API Overview`
- **Internal links:**`Docs` → `/docs`; `Runtime Guard` → `/features/runtime-guard`; `Deep Scan` → `/features/deep-scan`; `Security` → `/security`; `Contact` → `/contact`

### API Overview

The current API documentation lists `https://agentguard.gopluslabs.io` as the base URL. Confirm the production host, versioning model, and environment policy before hard-coding an integration.

### Authentication

The API documentation lists authentication with either the `X-API-Key` header or a bearer token. The production sign-in and API-key management path still requires confirmation.

### Runtime Endpoints

The reference lists `/v1/analyze/tool-call`, `/v1/analyze/file`, `/v1/analyze/text`, and `/v1/runtime/decision` for documented runtime analysis and decision workflows.

### Scan Endpoints

The reference lists `/v1/scan/repository`, `/v1/scan/package`, `/v1/scan/mcp-server`, and `/v1/scan/url` for documented scan targets.

### Requests, Responses, and Errors

Request fields, response schemas, error formats, and examples must be copied from current first-party documentation and tested before publication. Do not present draft examples as verified behavior.

### Versioning, Status, and Support

Document versioning, change policy, service status, rate limits, support, and the current OpenAPI source only after they are confirmed. The OpenAPI route checked during the evidence pass did not provide a verified schema.

### FAQ

**Which authentication methods are documented?**  
The `X-API-Key` header and bearer-token authentication.

**What is the production base URL?**  
The current documentation lists `https://agentguard.gopluslabs.io`; confirm the production host before integration.

**Is a verified OpenAPI schema available?**  
No verified schema source is available in the current evidence set.

**What are the rate limits and error formats?**  
They require current first-party documentation and live verification.

---

## 19. Guides - `/guides`

> 页面状态：🔴 Hub 至少要有 3 篇真实 Guide 才开放；当前只写结构，不伪造库存。

**Hero**

**H1:** Practical AI Agent Security Guides

**Supporting copy:** Choose a risk, control surface, or implementation task and move from explanation to a verifiable next step.

- **Primary CTA:**`Read the AI Agent Security Guide` → `/guides/ai-agent-security`
- **Secondary CTA:**`Browse Docs` → `/docs`
- **CTA 位置：** 首屏给学习入口；任务和方法讲清后在页尾重复。

**On-Page SEO**

- **Meta Title (37/60):**`AI Agent Security Guides | AgentGuard`
- **Meta Description (125/160):** Browse practical guides for AI agent risks, runtime controls, component security, MCP security, and implementation decisions.
- **Canonical path:**`/guides`
- **Alt text draft:**`Guides page visual for Start with the Core Guide`
- **Internal links:**`AI Agent Security Guide` → `/guides/ai-agent-security`; `Glossary` → `/glossary`; `For Developers` → `/solutions/developers`; `For Security Teams` → `/solutions/security-teams`; `Docs` → `/docs`

### Start with the Core Guide

Begin with the AI Agent Security Guide to map component, tool, runtime, data, and MCP risks to control and verification tasks. Use it as the shared starting point for more focused guides.

### Browse by Security Task

Organize published guides by runtime actions, component review, MCP security, OpenClaw workspace checks, and data boundaries. Display only real pages with reviewed content and working routes.

### Browse by Role

Help developers find installation and implementation tasks. Help security teams find evaluation, evidence, data-boundary, and residual-risk tasks. A guide can serve both roles only when the next steps are explicit.

### Latest and Maintained Guides

Show publication and review dates for each real guide. Do not label content as latest or maintained until an update process and accountable editorial route are in place.

### From Guidance to Implementation

Move readers from a general security task to a focused guide, then to the relevant Docs or verified product control. Keep the product link narrow and related to the control discussed.

### FAQ

**How should I choose a guide?**  
Start with the risk or implementation task you need to complete and verify.

**Which guides include practical steps?**  
Only pages with explicit prerequisites, actions, verification, and residual boundaries should be labeled practical.

**Where can I find MCP security guidance?**  
Use the MCP Security solution page until a reviewed MCP-specific guide is published.

**How are Guides different from Docs?**  
Guides explain security tasks and decisions; Docs describe current AgentGuard setup and interfaces.

---

## 20. AI Agent Security Guide - `/guides/ai-agent-security`

> 页面状态：🟡 结构和产品窄链接可审；发布前仍需补主题权威来源。

**Hero**

**H1:** A Practical Guide to AI Agent Security

**Supporting copy:** Map component, tool, runtime, data, and MCP risks to controls, verification steps, and explicit residual boundaries.

- **Primary CTA:**`Review Security-Team Controls` → `/solutions/security-teams`
- **Secondary CTA:**`Open Quickstart` → `https://www.agentguard.one/docs/quickstart`
- **CTA 位置：** 首屏给学习入口；定义、方法和检查清单讲清后在页尾重复。

**On-Page SEO**

- **Meta Title (44/60):**`AI Agent Security Guide | Risks and Controls`
- **Meta Description (129/160):** Understand AI agent attack surfaces, component and runtime risks, control layers, implementation steps, and residual limitations.
- **Canonical path:**`/guides/ai-agent-security`
- **Alt text draft:**`AI Agent Security Guide page visual for Define the AI Agent Attack Surface`
- **Internal links:**`Deep Scan` → `/features/deep-scan`; `Runtime Guard` → `/features/runtime-guard`; `MCP & Agent Security` → `/solutions/mcp-security`; `For Security Teams` → `/solutions/security-teams`; `What Is Agent Tool Poisoning?` → `/glossary/agent-tool-poisoning`; `Docs` → `/docs`

### Define the AI Agent Attack Surface

List the instructions, tools, files, credentials, network access, external components, MCP connections, and actions that shape the deployed agent system. Scope the real workflow before choosing a control.

### Build a Threat Model

For each high-impact outcome, identify the asset at risk, the component or action that can reach it, the trust boundary crossed, and the observable evidence that would show an unsafe path.

### Review Components Before Trust

Verify the source, publisher, permissions, dependencies, configuration, updates, and expected behavior of skills, plugins, packages, agents, and MCP servers. AgentGuard Deep Scan is a related documented component-checking surface, not a guarantee of safety.

### Evaluate High-Risk Runtime Actions

Define which commands, file operations, tool calls, network requests, secret access, and sensitive writes require a decision before execution. AgentGuard Runtime Guard is documented for named action categories; protection depth depends on the integration.

### Plan for MCP Boundaries

Review the server, host, tools, permissions, returned content, and data paths. AgentGuard can scan MCP servers and apply documented related controls, but its public FAQ says it cannot fully monitor or block all third-party MCP runtime calls.

### Implementation Checklist

Assign the workflow in scope. Inventory components and actions. Apply least privilege. Review components before trust. Test expected allow and high-risk paths. Inspect evidence. Document exceptions, residual gaps, and the next review trigger.

### Residual Risk and Next Steps

No single scan or runtime control proves complete security. Reassess after component, policy, integration, or environment changes, and keep unsupported paths visible in the operating plan.

### FAQ

**What belongs in an AI agent attack surface?**  
Instructions, tools, files, credentials, networks, external components, MCP connections, permissions, and executable actions.

**When should components be reviewed?**  
Before trust, after material changes, and when their permissions or dependencies change.

**Which actions need runtime checks?**  
Prioritize actions that can affect commands, files, credentials, networks, sensitive writes, or external tools.

**What residual MCP risk remains?**  
Third-party runtime calls may remain outside complete monitoring or blocking coverage.

---

## 21. Best - `/best`

> 页面状态：🔴 没有真实 child inventory 前不开放，不做厂商自嗨排名。

**Hero**

**H1:** AI Agent Security Shortlists Built on Visible Criteria

**Supporting copy:** Start with the evaluation method, inspect dated evidence, and verify fit before treating any shortlist as a buying decision.

- **Primary CTA:**`Explore AI CISO Platforms` → `/best/ai-ciso-platforms`
- **Secondary CTA:**`Browse Comparisons` → `/compare`
- **CTA 位置：** 方法、披露和证据边界之后出现；页尾重复，不在结论前强推销售。

**On-Page SEO**

- **Meta Title (45/60):**`Best AI Agent Security Tools | Evaluation Hub`
- **Meta Description (123/160):** Browse evidence-led AI agent security tool shortlists with visible criteria, sources, update dates, and vendor disclosures.
- **Canonical path:**`/best`
- **Alt text draft:**`Best page visual for How We Build Shortlists`
- **Internal links:**`Best AI CISO Platforms` → `/best/ai-ciso-platforms`; `Review` → `/review`; `Compare` → `/compare`; `AI CISO` → `/ai-ciso`

### How We Build Shortlists

AgentGuard publishes this content. Each shortlist must state the use case, inclusion criteria, source types, source dates, evidence gaps, and the relationship between the publisher and any included AgentGuard product.

### Browse Best Pages by Decision

Display only reviewed child pages that address a specific buying decision. Do not publish an empty category, synthetic ranking, or a page that reuses the same list for unrelated use cases.

### Evaluation Dimensions

Compare protected surface, decision point, deployment model, data handling, integration evidence, operational fit, limitations, and proof-of-concept requirements. Use only dimensions supported across the candidates in scope.

### Verification and Disclosure Standard

Use dated first-party evidence for product claims. Mark missing facts as unknown, apply the same evidence threshold to AgentGuard, and keep the vendor relationship visible.

### Continue to Reviews and Comparisons

Use Best for a criteria-based shortlist, Review for a single product evidence profile, and Compare for a named pair. Choose the format that matches the decision rather than forcing a winner.

### FAQ

**How is a product included?**  
It must match the stated use case and provide enough current first-party evidence for the published dimensions.

**Does AgentGuard evaluate itself?**  
AgentGuard may be included, but the vendor relationship, sources, limitations, and unknowns must be visible.

**How often are shortlists updated?**  
Publish an update cadence only after the editorial process is operational.

**How is Best different from Review or Compare?**  
Best builds a criteria-based shortlist, Review examines one product, and Compare evaluates a named pair.

---

## 22. Best AI CISO Platforms - `/best/ai-ciso-platforms`

> 页面状态：🔴 候选证据未齐，不允许 numbered ranking。

**Hero**

**H1:** Best AI CISO Platforms: An Evidence-Led Shortlist

**Supporting copy:** Define the category, inspect equivalent first-party evidence, and test the responsibilities your team needs before choosing a platform.

- **Primary CTA:**`Evaluate AgentGuard` → `/ai-ciso`
- **Secondary CTA:**`Read the AgentGuard Review` → `/review/agentguard`
- **CTA 位置：** 方法、披露和证据边界之后出现；页尾重复，不在结论前强推销售。

**On-Page SEO**

- **Meta Title (45/60):**`Best AI CISO Platforms | Evidence-Based Guide`
- **Meta Description (131/160):** Compare AI CISO platform candidates using visible criteria, dated first-party evidence, limitations, and a practical POC checklist.
- **Canonical path:**`/best/ai-ciso-platforms`
- **Alt text draft:**`Best AI CISO Platforms page visual for What Counts as an AI CISO Platform?`
- **Internal links:**`AI CISO` → `/ai-ciso`; `AgentGuard Review` → `/review/agentguard`; `Compare` → `/compare`; `Security` → `/security`; `Contact` → `/contact`

### What Counts as an AI CISO Platform?

For this draft, an AI CISO platform must help a team identify, control, or investigate security risk in deployed AI systems. This is a working evaluation definition, not a settled market category or an AgentGuard product claim.

### Evaluation Method and Disclosure

AgentGuard publishes this guide. Every candidate must be evaluated with dated first-party sources, the same inclusion rules, visible limitations, and a clear disclosure when the publisher evaluates its own product.

### Quick Comparison

Do not publish a numbered ranking until equivalent current evidence exists for every candidate. Compare only dimensions that can be supported across the full set, and mark missing facts as unknown.

### Candidate Evidence Profiles

Each profile should state the documented protected surface, intended user, deployment evidence, data boundary, operational fit, limitations, and source date. For AgentGuard, the current public evidence supports runtime checks, component scanning, OpenClaw patrol, API groups, and public advisories; it does not establish a complete AI CISO workflow.

### POC Checklist

Define the responsibilities to test, the deployment environment, data constraints, control points, expected decisions, evidence requirements, operating roles, and acceptance criteria. Run the same use case against every candidate.

### How to Choose

Choose the product that can demonstrate the responsibilities your team needs in the target environment. Do not convert missing evidence, broader positioning, or vendor language into a score.

### FAQ

**How is AI CISO defined here?**  
It is a working evaluation category for products that help identify, control, or investigate AI-system risk.

**Is this an independent ranking?**  
No. AgentGuard publishes the guide, and that relationship must remain visible.

**What evidence must a candidate provide?**  
Current first-party evidence for the dimensions used in the comparison, plus visible limitations and source dates.

**What should a proof of concept test?**  
Responsibilities, deployment, data handling, control decisions, evidence quality, operations, and residual gaps.

---

## 23. Review - `/review`

> 页面状态：🔴 合格 Review 模板样本为 0；这是 vendor-authored 证据契约，不假装独立测评。

**Hero**

**H1:** Evidence Profiles for AI Agent Security Products

**Supporting copy:** Each review must disclose ownership, date its sources, separate verified facts from claims, and show setup and limitations.

- **Primary CTA:**`Read the AgentGuard Review` → `/review/agentguard`
- **Secondary CTA:**`Browse Comparisons` → `/compare`
- **CTA 位置：** 方法、披露和证据边界之后出现；页尾重复，不在结论前强推销售。

**On-Page SEO**

- **Meta Title (38/60):**`AI Agent Security Reviews | AgentGuard`
- **Meta Description (127/160):** Browse source-dated AI agent security product reviews covering fit, setup, data boundaries, limitations, and vendor disclosure.
- **Canonical path:**`/review`
- **Alt text draft:**`Review page visual for Review Standard`
- **Internal links:**`AgentGuard Review` → `/review/agentguard`; `Compare` → `/compare`; `Best` → `/best`

### Review Standard

Disclosure: AgentGuard publishes this review library. The approved template evidence set did not contain a complete qualifying product-review sample, so each page must state its method, source limits, and unresolved facts instead of presenting the format as an established independent review standard.

### Browse Product Reviews

Display only product pages with a completed evidence profile, dated sources, visible vendor relationship, documented setup, and material limitations. Do not launch an empty review hub or an unverified profile.

### What Every Review Must Cover

Cover public positioning, documented product surfaces, intended fit, setup and integration evidence, data handling, deployment evidence, known limitations, commercial unknowns, and the source-access date.

### Ownership and Update Disclosure

Place the publisher and vendor relationship near the top of every review. State when sources were checked, which facts could not be verified, and when the evidence profile will be reviewed again.

### Continue to Pairwise Comparisons

Use a Review to examine one product. Use Compare only when two products can be evaluated against the same sourced dimensions. Neither format should hide unknowns behind a score or verdict.

### FAQ

**Who writes and publishes these reviews?**  
AgentGuard publishes this review library, and each page must disclose that relationship.

**How are product facts verified?**  
Use dated first-party sources and mark unsupported facts as unknown.

**How often are reviews refreshed?**  
No cadence should be promised until the review process is operational.

**How is Review different from Compare?**  
Review examines one product evidence profile; Compare evaluates a named pair on equivalent dimensions.

---

## 24. AgentGuard Review - `/review/agentguard`

> 页面状态：🟡 可做 vendor-authored 事实档案；证据缺口未补齐前不写 verdict。

**Hero**

**H1:** AgentGuard Review: Verified Features and Current Limits

**Supporting copy:** This vendor-authored review separates first-party evidence from unresolved pricing, integration, and product questions.

- **Primary CTA:**`Read AgentGuard Docs` → `/docs`
- **Secondary CTA:**`Book a Demo` → `/contact`
- **CTA 位置：** 方法、vendor disclosure、来源日期和限制之后出现；页尾重复。

**On-Page SEO**

- **Meta Title (45/60):**`AgentGuard Review | Features, Data and Limits`
- **Meta Description (133/160):** A vendor-authored, source-dated review of AgentGuard features, setup, data boundaries, open-source evidence, and current limitations.
- **Canonical path:**`/review/agentguard`
- **Alt text draft:**`AgentGuard Review page visual for Disclosure and Review Method`
- **Internal links:**`Docs` → `/docs`; `API Reference` → `/docs/api`; `Security` → `/security`; `Pricing` → `/pricing`; `AgentGuard vs Prompt Security` → `/compare/agentguard-vs-prompt-security`; `Contact` → `/contact`

### Disclosure and Review Method

Disclosure: AgentGuard publishes this review of its own product. The review uses current first-party public materials, identifies source boundaries, and leaves unsupported commercial or product details unresolved.

### What AgentGuard Publicly Includes

The public product surface includes Runtime Guard for named high-risk actions, Deep Scan for documented component types and risks, and OpenClaw Environment Patrol for security-relevant workspace changes.

### Setup and Integration Evidence

The Quickstart and public repository document installation, an open-source CLI surface, and integration paths for multiple agents, IDEs, and MCP hosts. Protection depth varies across hook, plugin, skill, and command modes.

### Data Handling

Public materials say local mode does not upload full code, prompts, secrets, or file contents. Cloud-connected use may send sanitized or redacted security metadata, decisions, policy versions, and audit events. Formal privacy wording still requires Legal approval.

### Fit and Limitations

The clearest evidence-backed fit is a developer or security team evaluating coding-agent actions, components, and selected integrations. AgentGuard states that it cannot fully monitor or block all third-party MCP server runtime calls. Pricing, plan allocation, complete integration depth, and enterprise commitments remain unresolved.

### Verification Checklist

Read the current Docs and public repository. Confirm the integration mode. Review the API groups without assuming live behavior. Test the components and actions in scope, inspect data handling, and record residual MCP and operational gaps.

### FAQ

**Is this an independent review?**  
No. AgentGuard publishes this vendor-authored review.

**Which product surfaces are publicly documented?**  
Runtime Guard, Deep Scan, OpenClaw Environment Patrol, Docs, API groups, a public repository, and advisories.

**What data may connected use send?**  
Public materials describe sanitized or redacted security metadata, decisions, policy versions, and audit events.

**Which limitations remain material?**  
Third-party MCP runtime coverage, integration-depth differences, privacy wording, pricing, and enterprise terms.

---

## 25. Compare - `/compare`

> 页面状态：🔴 vendor-authored；合格 product-to-product Compare 样本为 0，Hub 只定义可比证据规则。

**Hero**

**H1:** Compare AI Agent Security Products with Dated Evidence

**Supporting copy:** Choose a named pair, inspect equivalent source dimensions, and use a POC checklist instead of a synthetic score.

- **Primary CTA:**`Compare AgentGuard and Prompt Security` → `/compare/agentguard-vs-prompt-security`
- **Secondary CTA:**`Browse Product Reviews` → `/review`
- **CTA 位置：** 方法、披露和证据边界之后出现；页尾重复，不在结论前强推销售。

**On-Page SEO**

- **Meta Title (42/60):**`AI Agent Security Comparisons | AgentGuard`
- **Meta Description (124/160):** Browse disclosed, source-dated AI agent security comparisons organized by protected surface, deployment, data, and POC task.
- **Canonical path:**`/compare`
- **Alt text draft:**`Compare page visual for Comparison Standard`
- **Internal links:**`AgentGuard vs Prompt Security` → `/compare/agentguard-vs-prompt-security`; `Review` → `/review`; `Best` → `/best`

### Comparison Standard

Disclosure: AgentGuard publishes this comparison library. The approved template evidence set did not contain a complete qualifying product-to-product comparison, so every page must expose the method, vendor relationship, source dates, and missing facts.

### Browse Named Comparisons

Display a named comparison only when both products have enough current first-party evidence for the dimensions in use. Do not publish a comparison whose conclusion depends on facts available for only one side.

### Core Comparison Dimensions

Compare protected surface, decision point, deployment evidence, data handling, integration path, limitations, operational fit, and proof-of-concept requirements. Do not assume similar terms describe equivalent controls.

### Ownership and Source Dates

Keep the AgentGuard publisher relationship visible. Date the sources for both products, distinguish observed facts from interpretation, and label stale or missing information as unknown.

### Continue to Single-Product Reviews

Use Compare for a named pair and Review for one product's evidence profile. Use both formats to prepare verification questions, not to manufacture a universal winner.

### FAQ

**How are comparison dimensions chosen?**  
Use dimensions supported by current evidence for both products and relevant to the buying task.

**Are these comparisons independent?**  
No. AgentGuard publishes them, and that relationship must remain visible.

**How are stale competitor facts handled?**  
Show the source date and mark facts unknown when current first-party evidence is unavailable.

**How is Compare different from Best or Review?**  
Compare evaluates a named pair, Best builds a shortlist, and Review examines one product.

---

## 26. AgentGuard vs Prompt Security - `/compare/agentguard-vs-prompt-security`

> 页面状态：🔴 vendor-authored；Prompt Security 的 pricing、hosting、data flow、coverage limits 和 current docs 未齐。

**Hero**

**H1:** AgentGuard vs Prompt Security: Compare the Documented Surfaces

**Supporting copy:** This vendor-authored comparison uses dated first-party evidence and leaves pricing, hosting, data flow, and limits blank until verified.

- **Primary CTA:**`Review AgentGuard Docs` → `/docs`
- **Secondary CTA:**`Book a Demo` → `/contact`
- **CTA 位置：** 方法、vendor disclosure、来源日期、限制和 unknown 字段之后出现；页尾重复。

**On-Page SEO**

- **Meta Title (48/60):**`AgentGuard vs Prompt Security | Comparison Guide`
- **Meta Description (132/160):** A vendor-authored, source-dated framework for comparing AgentGuard and Prompt Security, with explicit fact gaps and a POC checklist.
- **Canonical path:**`/compare/agentguard-vs-prompt-security`
- **Alt text draft:**`AgentGuard vs Prompt Security page visual for Disclosure, Scope, and Source Dates`
- **Internal links:**`Docs` → `/docs`; `AgentGuard Review` → `/review/agentguard`; `Security` → `/security`; `Pricing` → `/pricing`; `Contact` → `/contact`

### Disclosure, Scope, and Source Dates

Disclosure: AgentGuard publishes this comparison. AgentGuard facts come from its public homepage, Docs, API Reference, and repository. The Prompt Security evidence available to this draft is limited to two official solution pages checked on July 26, 2026. This is not an independent review.

### Documented Product Surfaces

AgentGuard publicly documents Runtime Guard, Deep Scan, OpenClaw Environment Patrol, and runtime and scan API groups. The reviewed Prompt Security pages discuss an MCP Gateway and security for homegrown AI applications. Those are Prompt Security statements only and do not imply feature equivalence or an AgentGuard capability.

### Protected Workflow and Control Points

AgentGuard evidence covers named coding-agent actions, component scanning, OpenClaw workspace changes, and selected MCP-related controls. Prompt Security must be assessed from its own current documentation for the exact gateway, application, and control points in scope. Similar terminology is not proof of the same architecture or outcome.

### Data, Deployment, Pricing, and Limits

AgentGuard publishes qualified local and cloud-connected data statements and an explicit limitation for third-party MCP runtime calls. Current equivalent evidence for Prompt Security pricing, hosting, data flow, deployment, and coverage limitations is incomplete in this draft, so those fields remain unknown.

### POC Checklist

Use the same workflow, input, environment, and acceptance criteria for both products. Test the protected surface, expected allow and block decisions, evidence produced, data path, integration effort, operating requirements, and residual gaps.

### Verify Before You Choose

Review current documentation from both vendors. Resolve every unknown that affects deployment, privacy, cost, coverage, or operations before drawing a conclusion. Do not select a winner from the incomplete evidence in this draft.

### FAQ

**Is this comparison independent?**  
No. AgentGuard publishes this vendor-authored comparison.

**Are the two product scopes equivalent?**  
The current evidence does not establish equivalence.

**Which Prompt Security facts are still missing?**  
Current pricing, hosting, data flow, deployment details, coverage limits, and a complete current documentation set.

**What makes a fair proof of concept?**  
The same use case, inputs, environment, expected outcomes, evidence requirements, and acceptance criteria for both products.

---

## 27. Glossary - `/glossary`

> 页面状态：🔴 没有真实词条库存前不开放 A-Z Hub。

**Hero**

**H1:** AI Agent Security Glossary

**Supporting copy:** Find concept-first definitions, scope boundaries, adjacent terms, and links to practical Guides and verified controls.

- **Primary CTA:**`Learn About Agent Tool Poisoning` → `/glossary/agent-tool-poisoning`
- **Secondary CTA:**`Browse Security Guides` → `/guides`
- **CTA 位置：** 首屏给学习入口；定义和编辑标准讲清后在页尾重复。

**On-Page SEO**

- **Meta Title (39/60):**`AI Agent Security Glossary | AgentGuard`
- **Meta Description (130/160):** Browse definitions for AI agent security, MCP risks, attack patterns, controls, and adjacent terms with practical follow-up links.
- **Canonical path:**`/glossary`
- **Alt text draft:**`Glossary page visual for Browse A-Z`
- **Internal links:**`What Is Agent Tool Poisoning?` → `/glossary/agent-tool-poisoning`; `Guides` → `/guides`; `AI Agent Security Guide` → `/guides/ai-agent-security`; `Deep Scan` → `/features/deep-scan`

### Browse A-Z

List only reviewed glossary entries with stable routes. Do not fill the index with placeholder terms or unpublished pages.

### Browse by Topic

Group real entries across agents, MCP, tools, runtime actions, data boundaries, attacks, and controls. A term may appear in more than one topic when the definition remains the same.

### Featured Definitions

Feature only edited entries with a direct definition, system position, impact, adjacent concepts, source date, and practical follow-up route.

### Editorial Standard

Each entry should explain what the term means, where it appears, what it does not mean, how it differs from adjacent terms, and which sources support the definition. A definition must not imply that AgentGuard implements every control discussed.

### From Definition to Practice

Move from a definition to a relevant Guide first. Link to an AgentGuard product surface only when the connection is narrow and supported by the product fact base.

### FAQ

**How are glossary terms selected?**  
Include terms that clarify an agent-security concept and support a real learning or implementation path.

**How often are definitions updated?**  
Publish a cadence only after the editorial process is operational.

**Does a glossary definition describe an AgentGuard feature?**  
Not by default. Product links require separate public evidence.

**Where can I find practical steps?**  
Continue to a relevant Guide or current product documentation.

---

## 28. What Is Agent Tool Poisoning? - `/glossary/agent-tool-poisoning`

> 页面状态：🟡 文案草稿可审；发布前要补主题权威来源并核对术语口径。

**Hero**

**H1:** What Is Agent Tool Poisoning?

**Supporting copy:** Understand the concept, where the risk enters an agent workflow, how it differs from adjacent attacks, and what teams should verify.

- **Primary CTA:**`Explore Deep Scan` → `/features/deep-scan`
- **Secondary CTA:**`Read the AI Agent Security Guide` → `/guides/ai-agent-security`
- **CTA 位置：** 首屏给学习入口；定义、差异和检查清单讲清后在页尾重复。

**On-Page SEO**

- **Meta Title (42/60):**`What Is Agent Tool Poisoning? | AgentGuard`
- **Meta Description (128/160):** Learn what agent tool poisoning is, how malicious tool metadata or behavior can affect agents, and which review controls matter.
- **Canonical path:**`/glossary/agent-tool-poisoning`
- **Alt text draft:**`What Is Agent Tool Poisoning? page visual for Agent Tool Poisoning Definition`
- **Internal links:**`Deep Scan` → `/features/deep-scan`; `Runtime Guard` → `/features/runtime-guard`; `AI Agent Security Guide` → `/guides/ai-agent-security`; `Glossary` → `/glossary`; `MCP & Agent Security` → `/solutions/mcp-security`

### Agent Tool Poisoning Definition

Agent tool poisoning is the manipulation of a tool's metadata, configuration, implementation, dependency, or behavior so an agent is steered toward an unsafe decision or action. Validate this working definition against approved topic sources before publication.

### Where the Risk Enters

The risk can enter through tool descriptions, plugin or skill code, MCP server behavior, dependencies, configuration, updates, or returned content. Review both the component before trust and the behavior it can trigger at runtime.

### Potential Impact

A poisoned tool may influence tool selection, data access, command execution, network requests, credential handling, or downstream actions. The actual impact depends on the permissions and systems available to the agent.

### Tool Poisoning vs Prompt Injection

Prompt injection is one possible mechanism that can manipulate instructions or context. Tool poisoning is the broader risk that a trusted tool surface or behavior has been altered to steer the agent. Keep the distinction tied to the system path being reviewed.

### What Teams Should Verify

Verify the publisher, source, permissions, dependencies, configuration, update history, expected behavior, returned content, and the actions the tool can trigger. Repeat the review after material changes and test the runtime path.

### Related AgentGuard Control

AgentGuard publicly documents Deep Scan for skills, plugins, agents, and MCP servers, including malicious tools and backdoors as risk categories. This connection does not support a claim that every poisoned-tool behavior will be detected.

### FAQ

**What is agent tool poisoning?**  
It is the manipulation of a trusted tool surface or behavior to steer an agent toward an unsafe decision or action.

**How is it different from prompt injection?**  
Prompt injection can be one mechanism; tool poisoning covers manipulation of the tool surface or behavior more broadly.

**Is MCP tool poisoning the same concept?**  
It can be an MCP-specific instance when the manipulated tool or behavior is exposed through an MCP server, but the exact system path still matters.

**Does Deep Scan guarantee detection?**  
No. Public evidence supports specific component targets and risk categories, not universal detection.