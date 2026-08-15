<!--
Source: https://acntglrfp7bm.feishu.cn/wiki/U1kvwaHMPiGOYCkWTzMcUePYnxe
Feishu document id: QPYIdZtuYoajKwxUn7vcHkdQnZc
Revision: 132
Exported at: 2026-08-15T13:31:06Z
-->
# AgentGuard 关键词与页面架构规划

## 结论

AgentGuard 的网站架构沿用 [P1 V2 网站架构与 URL Map](https://acntglrfp7bm.feishu.cn/wiki/QG20w2pjfidJkkkNPoHcUFivnJf)。  
P2 不增加一级导航，负责确定页面类型、正式 URL、主关键词和执行批次。

当前执行表已确认 154 个页面：

| 执行批次 | 页面数 | 用途 |
|-|-|-|
| P0 | 28 | 18 个固定页面 + 5 个 Blog 分类入口 + 5 个代表内容页 |
| P1 | 92 | 与 AgentGuard 核心能力、选型和安全实施直接相关的内容页 |
| P2 | 34 | 意图成立但产品承接较弱或依赖尚未满足的后续内容页 |

[打开 AgentGuard 页面执行表](https://acntglrfp7bm.feishu.cn/wiki/Qup4w7GUOixMw9k184ncnLpnnDc)

页面执行表共 154 页：P0 28 页、P1 92 页、P2 34 页。  
131 个内容页按页面类型分为：Best 20、Review 32、Compare 23、Guide 32、Glossary 24；5 个 Blog 分类入口不计入内容页数量。

人工页面决策表是页面类型的来源；页面执行表是正式 URL、主关键词和上线批次的唯一执行依据。

## 网站怎么搭

```text
AgentGuard
├── 首页 /
│   └── AI CISO /ai-ciso
├── Features
│   ├── Runtime Guard
│   ├── Deep Scan
│   ├── OpenClaw Patrol
│   └── Threat Intelligence
├── Solutions
│   ├── Developers
│   ├── Security Teams
│   ├── Enterprise
│   └── MCP Security
├── Resources
│   ├── Docs
│   ├── API Reference
│   ├── Changelog
│   └── GitHub
├── Blog
│   ├── Guides
│   ├── Best
│   ├── Review
│   ├── Compare
│   └── Glossary
├── Security
│   ├── Security
│   ├── Threat Database
│   └── Detection Rules
└── Company
    ├── About
    ├── Contact
    ├── Privacy Policy
    └── Terms
```

固定页面先把产品讲清楚，让访客能找到试用、文档、价格和联系入口。内容页负责回答搜索问题，再把读者带到对应的 Feature、Solution、Docs 或转化页面。

## Blog 页面类型

| 页面类型 | 当前确认数 | 回答的问题 | 主要去向 |
|-|-|-|-|
| Best | 20 | 最好的工具、产品、平台或供应商是什么 | Pricing、Start Free |
| Review | 32 | 某个产品、平台或厂商是否适合使用 | Feature、Security |
| Compare | 23 | 两个产品、方案或部署方式怎么选 | Pricing、Book a demo |
| Guide | 32 | 怎样配置、排查或防护 | Feature、Solution、Docs |
| Glossary | 24 | 一个概念或术语是什么意思 | Guide、Solution |

内容页只使用以下正式目录：

- `/guides/`
- `/best/`
- `/review/`
- `/compare/`
- `/glossary/`

接入文档继续使用 `/docs/`。调研阶段出现过的 `/security-guides/` 和 `/research/` 已退出正式 URL。

## 关键词怎么落到页面

每个页面只保留一个正式 URL和一个主关键词。同一搜索需求下的其他词作为辅助关键词，进入标题、小标题、正文和常见问题，不再拆成额外页面。

所有内容类型均逐页人工判断：

- P0 固定页面全部保留。
- Best、Review、Compare、Guide、Glossary 都根据独立搜索意图、页面类型匹配度、AgentGuard 产品承接和重复/蚕食风险人工决定。
- 每个候选的结论只有 P0、P1、P2、合并或不建页；相同意图合并为一个正式 URL 和一个主关键词。
- 搜索量只在语义和业务价值相同的候选之间作为排序参考，不是准入门槛；缺失不等于 0，保持空白，不伪造数据。
- 全球和 US 搜索量、CPC 分列保留。

未入选页面进入 Backlog，保留原始关键词、聚类和数据证据。

## 页面之间怎么导流

```text
Glossary → Guide / Review → Feature / Solution → Start Free / Book a demo
                         ↘ Docs ↗

Best / Compare → Pricing / Feature / Solution → Start Free / Book a demo
```

目录页至少有 3 个可用子页面时再开放。每篇内容都要链接到能承接下一步的产品页、方案页或文档页，避免只获得访问却没有后续动作。