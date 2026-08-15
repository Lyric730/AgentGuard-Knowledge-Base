<!--
Source: https://acntglrfp7bm.feishu.cn/wiki/QG20w2pjfidJkkkNPoHcUFivnJf
Feishu document id: Q4nUdyHbqoByOtxL6LmcA4Ffnef
Revision: 281
Exported at: 2026-08-15T13:31:06Z
-->
# AgentGuard 网站架构与 URL Map-V2

## 一、 网站信息架构（IA）线框树状图



```Plain Text
├── Top Navigation
│   ├── Features
│   │   ├── Runtime Guard
│   │   ├── Deep Scan
│   │   ├── OpenClaw Patrol
│   │   └── Threat Intelligence
│   ├── Solutions 
│       ├── For Developers
│       ├── For Security Teams
│       ├── For Enterprise
│       └── MCP & Agent Security
│   ├── Resources 
│   │   ├── Docs
│   │   ├── API Reference
│   │   ├── Changelog
│   │   └── GitHub
│   ├── Pricing
│   ├── Book a demo
│   └── Start Free
│
├── Footer Navigation
│   ├── Product
│   │   ├── /features
│   │   ├── /solutions
│   │   ├── /pricing
│   │   └── /dashboard
│   │
│   ├── Resources 
│   │   ├── Docs
│   │   ├── API Reference
│   │   ├── Changelog
│   │   └── GitHub
│   │
│   ├── Blog
│   │   ├── Guides
│   │   ├── Best
│   │   ├── Review
│   │   └── Compare
│   │   └── Glossary
│   │
│   ├── Security
│   │   ├── /security
│   │   └── /threat-database
│   │   └── /detection-rules
│   │
│   └── Company
│       └── /about
│       └── /contact
│       ├── /privacy-policy
│       └── /terms
```



## 二、 核心 URL 映射表

<sheet sheet-id="hE9rBt" token="HIlpsk3dWhxx5st8Wzpc9NdBnhg"></sheet>

---

## 三、 Blog 5 大分类内容落地规范



- **Guides (How-to)**：专门针对一线安全开发人员。如 *“How to Prevent MCP Response Spoofing”*，在文章中将 `Runtime Guard` 作为一键自动防御方案推荐。
- **Best (聚合推荐)**：拦截带“Best/Top”的购买意图词。如 *“Best Model Context Protocol (MCP) Security Tools in 2026”*，将 AgentGuard 锁定为首选。
- **Review (深度审查)**：树立安全专家（Thought Leadership）形象。如 *“A Review of Emerging LLM Agent Exploit Vectors”*，展示团队对前沿攻防的理解。
- **Compare (竞品对比)**：直接拦截处于决策最后一公里的买家。如 *“AgentGuard vs [主要竞品]: Features and Latency Comparison”*。
- **Glossary (术语库)**：用于拦截海量长尾流量。页面长相为精简的 Wiki 词条字典（如 *“What is Agent Dependency Pollution?”*），通过高密度内链为主站权重（PageRank）输血。