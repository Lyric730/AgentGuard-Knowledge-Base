<!--
Source: https://acntglrfp7bm.feishu.cn/wiki/Hl8iw9VZmi74EKkvrOhcR0Nan2K
Feishu document id: VINkd4JXJorJ6CxcbSLccMG7nmc
Revision: 14
Exported at: 2026-08-15T13:31:06Z
-->
# AgentGuard Blog 模块需求文档

## 1. 需求背景

AgentGuard 官网需要增加 Blog 模块，主要服务于 SEO 内容建设，用于持续发布和沉淀安全指南、产品评测、方案对比和术语解释等内容，提升网站的自然搜索覆盖和内容承载能力。

Blog 模块涉及前端页面开发以及 CMS 接入。模块上线后，由内容运营方通过 CMS 创建、编辑、预览、发布和管理文章，无需修改网站前端代码。



### Blog交互原型

[Attachment: index.html](<_assets/VINkd4JXJorJ6CxcbSLccMG7nmc/001.html>)

## 2. 页面结构

```text
Blog 模块
├── Blog 列表页 /blog/
│   ├── 顶部导航
│   ├── 页面标题与说明
│   ├── 内容发现
│   │   ├── 模糊搜索：标题、类别、摘要
│   │   └── 类别筛选：All、Guides、Best、Review、Compare、Glossary
│   ├── 结果状态：文章数量、当前筛选说明、无结果状态
│   ├── 文章卡片列表
│   │   ├── 类别（category）、发布时间（publishedAt）
│   │   ├── 文章标题（title）、摘要（excerpt）
│   │   └── 作者（author）、预计阅读时间（readingTime）
│   └── Footer
│
└── Blog 文章详情页 /{category}/{slug}/
    ├── 顶部导航
    ├── 返回入口与面包屑
    ├── 文章头部：类别（category）、发布时间（publishedAt）、标题（title）、摘要（excerpt）、作者（author）、预计阅读时间（readingTime）
    ├── 文章目录（tableOfContents）：正文 H2、FAQ
    ├── 文章正文（body）：标题、段落、列表、链接、图片
    ├── FAQ（faqItems）：可选问答模块
    ├── Related 相关文章（relatedArticles）
    │   └── 类别（category）、发布时间（publishedAt）、标题（title）、作者（author）、预计阅读时间（readingTime）
    └── Footer
```

## 3. 需求详情说明

页面视觉、具体组件样式和交互状态以高保真原型 `blog/prototype/index.html` 为准。以下仅说明影响开发的数据和逻辑。

### 3.1 Blog 入口与路由

#### 3.1.1 入口位置

顶部导航保留 `Blog` 入口，点击后进入 `/blog/`。Footer 中的 `Blog` 进入全部文章聚合页，五个分类入口进入 `/blog/` 并应用对应分类条件。

#### 3.1.2 路由规则

| 页面或状态 | 路由 | 说明 |
|-|-|-|
| Blog 聚合页 | `/blog/` | 展示全部类型文章 |
| 分类筛选 | `/blog/?category={category}` | 在聚合页内筛选分类 |
| 搜索结果 | `/blog/?keyword={keyword}` | 在聚合页内搜索 |
| 分类与搜索组合 | `/blog/?category={category}&keyword={keyword}` | 同时保留两项条件 |
| 文章详情页 | `/{category}/{slug}/` | 路径中不增加 `/blog/` |

`category` 使用 `guides`、`best`、`review`、`compare`、`glossary`；`slug` 使用唯一的小写英文连字符格式。分类和搜索条件需要同步到 URL，刷新页面后保留当前状态。当前沿用官网语言切换方式，不增加 `/zh/blog` 路由。

#### 3.1.3 面包屑

| 页面 | 面包屑 | 跳转逻辑 |
|-|-|-|
| Blog 聚合页 | `Home / Blog` | `Home` 返回首页，`Blog` 为当前页 |
| 文章详情页 | `Home / Blog / {Category} / {Article Title}` | `Blog` 返回 `/blog/`；`Category` 返回对应筛选状态；文章标题不可点击 |

### 3.2 Blog 列表页

#### 3.2.1 页面内容

| 模块 | 页面元素 |
|-|-|
| 模糊搜索 | 搜索框、清除操作 |
| 类别筛选 | `All` 和五个 Blog 类别 |
| 结果状态 | 当前文章数量、筛选或搜索说明、无结果状态 |
| 文章卡片 | 类别（`category`）、发布时间（`publishedAt`）、文章标题（`title`）、摘要（`excerpt`）、作者（`author`）、预计阅读时间（`readingTime`） |

文章默认按发布时间倒序排列。点击文章卡片进入对应的 `/{category}/{slug}/`。

#### 3.2.2 Blog 类别

文章包含以下五个类别：

| 类别名称 | URL 参数值 | 主要内容 |
|-|-|-|
| Guides | `guides` | 配置、排查和安全防护方法 |
| Best | `best` | 推荐合适的工具、产品、平台或供应商 |
| Review | `review` | 评估某个产品、平台或厂商是否适用 |
| Compare | `compare` | 比较产品、方案或部署方式，辅助选择 |
| Glossary | `glossary` | 解释概念、术语及其含义 |

`All` 为前端聚合筛选状态，用于展示全部类别文章，不作为文章内容类别保存。

#### 3.2.3 筛选与搜索逻辑

| 功能 | 核心逻辑 |
|-|-|
| 默认状态 | 选择 `All`，展示全部文章 |
| 类别筛选 | 仅展示 `category` 与当前类别一致的文章，并更新 URL、文章数量和筛选说明 |
| 清除类别 | 点击 `All`，清除 `category` 参数并恢复全部文章 |
| 模糊搜索 | 搜索范围包含文章标题、类别和摘要；输入内容后实时更新结果 |
| 组合条件 | 搜索和类别筛选可以同时使用 |
| 状态恢复 | 刷新或再次进入页面时，根据 URL 恢复类别和搜索条件 |
| 无结果 | 没有匹配文章时隐藏卡片列表并展示空状态 |

### 3.3 Blog 文章详情页

#### 3.3.1 页面内容

| 模块 | 页面元素与位置 |
|-|-|
| 文章头部 | 类别（`category`）、发布时间（`publishedAt`）、标题（`title`）、摘要（`excerpt`）、作者（`author`）、预计阅读时间（`readingTime`） |
| 文章目录 | `tableOfContents`；位于正文左侧，展示正文 H2，存在 FAQ 时追加 FAQ 目录项 |
| 文章正文 | `body`；展示标题、段落、列表、站内或站外链接和图片 |
| FAQ | `faqItems`；可选模块，位于正文之后、Related 之前 |
| Related | `relatedArticles`；位于详情页内容末尾，展示相关文章卡片 |

详情页返回入口和 `Esc` 操作返回 `/blog/`。

#### 3.3.2 文章字段与展示逻辑

| 字段 | 用途与逻辑 |
|-|-|
| `title` | 文章标题，用于详情页 H1、列表卡片和面包屑 |
| `slug` | 文章唯一标识，用于生成详情页 URL |
| `category` | 单选字段，限定为五个 Blog 类别；用于筛选、标签、面包屑和详情页 URL |
| `publishedAt` | 发布时间，用于详情页和卡片展示，并用于文章倒序排列 |
| `excerpt` | 文章摘要，用于详情页导语、列表卡片和模糊搜索 |
| `author` | 作者名称，用于详情页和卡片展示；保留文字链接样式，暂不设置作者页面 |
| `readingTime` | 预计阅读时间，用于详情页和卡片展示 |
| `body` | 文章正文，支持标题、段落、列表、链接和图片；普通链接由内容提供跳转目标，并使用可识别的链接样式 |
| `tableOfContents` | 前端按正文顺序提取全部 H2，生成唯一锚点 ID 和目录项；正文标题变更后同步更新，无需在 CMS 单独维护 |
| `faqItems` | 可选问答列表；有内容时展示折叠式 FAQ，并在目录中追加 FAQ；无内容时隐藏整个区域 |
| `relatedArticles` | 可选的关联文章列表；配置后按设置顺序展示，未配置时由系统自动推荐 |

#### 3.3.3 FAQ 展示逻辑

FAQ 使用同一组 `faqItems` 生成页面内容。每项包含 `question` 和 `answer`，按照 CMS 中的顺序展示；第一项默认展开，其余项支持点击展开或收起。

FAQ 仅在文章配置 `faqItems` 时展示。未配置时不保留标题、空白区域或目录项。

#### 3.3.4 Related 关联文章

关联文章区域位于详情页内容末尾；存在 FAQ 时位于 FAQ 之后，标题显示为 `Related`。

| 项目 | 逻辑 |
|-|-|
| 文章来源 | 优先使用 `relatedArticles` 中配置的文章；未配置时优先推荐相同类别文章，再使用其他类别文章补足 |
| 排除规则 | 不展示当前文章，不重复展示同一篇文章 |
| 展示数量 | 最多展示 6 篇，每行 3 张，支持多行 |
| 卡片内容 | 类别（`category`）、发布时间（`publishedAt`）、文章标题（`title`）、作者（`author`）、预计阅读时间（`readingTime`） |
| 点击行为 | 点击卡片进入对应的 `/{category}/{slug}/` 详情页 |
| 空状态 | 无可用关联文章时隐藏整个 Related 区域 |

## 4. CMS 接入说明

### 4.1 Strapi 选型与接入形式

#### 4.1.1 选型说明

Strapi 是开源的 Headless CMS，提供可视化内容管理后台，并支持自定义内容模型、草稿与发布、媒体管理、角色权限和 API。选择 Strapi 的主要原因是支持私有化部署，内容和访问权限可以由 AgentGuard 自主管理；同时可以通过 API 与现有 Next.js 前端解耦，适合后续由内容运营方持续维护 Blog。

本方案所需功能可以使用免费的 Strapi Community Edition。正式环境仍会产生云服务器、数据库和媒体存储等基础设施费用。

#### 4.1.2 接入形式

整体接入形式为：Strapi 作为独立 CMS 服务运行并连接 PostgreSQL 和持久化媒体存储；内容运营方在 Strapi 后台维护文章；AgentGuard 官网通过 Next.js 服务端调用 Strapi REST API，在 Vercel 上生成 Blog 列表页和文章详情页。文章发布或撤回后，由 Strapi Webhook 通知官网刷新页面缓存。

```text
内容运营方
└── Strapi Admin（独立云服务器）
    ├── PostgreSQL：文章及配置数据
    ├── 持久化媒体存储：文章图片等文件
    └── Strapi REST API
         └── AgentGuard Next.js（Vercel）
             ├── /blog/
             └── /{category}/{slug}/
```

Strapi 与 Next.js 可以放在同一个代码仓库中管理，但需要分别部署。Next.js 继续部署在 Vercel，Strapi 部署在能够持续运行 Node.js 且提供持久化存储的环境中。

### 4.2 基础设施配置

#### 4.2.1 配置 Strapi 云服务器

使用当前稳定版本的 Strapi 5 创建项目，并部署到独立云服务器或容器服务。Strapi 不部署到 Vercel。

| 配置项 | 要求 |
|-|-|
| 运行环境 | 使用 Strapi 当前版本支持的 Node.js LTS；也可以使用 Docker 部署 |
| 服务进程 | 使用 Docker、systemd 或 PM2 保持 Strapi 持续运行，并配置异常自动重启 |
| 网络入口 | 使用 Nginx 或云负载均衡将 HTTPS 请求转发到 Strapi 默认端口 `1337` |
| 防火墙 | 仅开放 SSH、HTTP 和 HTTPS；数据库端口不直接暴露到公网 |
| 更新 | 定期安装 Strapi、Node.js 和服务器安全更新 |

#### 4.2.2 配置 CMS 子域名与 HTTPS

`cms.agentguard.one` 使用现有 `agentguard.one` 的子域名，无需购买新域名。配置步骤如下：

1. 在现有域名的 DNS 管理后台增加 `cms` 记录。云服务器具有固定公网 IP 时使用 A 记录；部署平台提供访问域名时使用 CNAME。
2. 将 `cms.agentguard.one` 的请求通过 Nginx 或负载均衡转发到 Strapi 服务。
3. 为该子域名配置 HTTPS 证书，并开启自动续期。
4. 确认 `https://cms.agentguard.one/admin` 可以进入管理后台，`/api` 路径可以由官网服务端访问。

管理后台可以进一步通过 VPN、IP 白名单或身份代理限制访问范围。

#### 4.2.3 配置 PostgreSQL

PostgreSQL 可以使用托管数据库，也可以在初期与 Strapi 部署在同一台云服务器。正式环境需要：

| 配置项 | 要求 |
|-|-|
| 数据库与账号 | 创建独立数据库和最小权限账号，不使用 PostgreSQL 超级管理员连接 Strapi |
| 网络 | 使用本机或私有网络连接；托管数据库应开启 SSL |
| 环境变量 | 通过 `DATABASE_HOST`、`DATABASE_PORT`、`DATABASE_NAME`、`DATABASE_USERNAME` 和 `DATABASE_PASSWORD` 注入连接信息 |
| 备份 | 配置自动备份，并定期验证恢复流程 |
| 环境隔离 | 生产、测试环境使用不同数据库和账号 |

#### 4.2.4 配置媒体存储

Strapi Media Library 需要能够长期保存文章图片。可以选择以下方案：

| 方案 | 接入方式 | 适用情况 |
|-|-|-|
| 对象存储 | 安装对应的 Strapi Upload Provider，配置 Bucket、Region、Endpoint 和访问密钥 | 推荐用于正式环境；可使用 AWS S3、阿里云 OSS、腾讯云 COS 或其他 S3 兼容服务 |
| 服务器持久化磁盘 | 将 Strapi 的 `public/uploads` 挂载到持久化磁盘，并纳入备份 | 适合初期内容量较小、服务器磁盘可靠的情况 |

对象存储通常需要单独开通并按存储量和流量计费。使用服务器磁盘时无需增加对象存储服务，但必须保证重新部署不会覆盖上传目录，并建立文件备份。

正文图片需要填写替代文本。Next.js 需要在图片配置中允许加载实际的媒体域名。

#### 4.2.5 配置环境变量与备份

生产密钥全部通过环境变量保存，不提交到代码仓库：

| 类型 | 主要内容 |
|-|-|
| Strapi 系统密钥 | `APP_KEYS`、`API_TOKEN_SALT`、`ADMIN_JWT_SECRET`、`JWT_SECRET` 和 `TRANSFER_TOKEN_SALT` |
| 数据库 | PostgreSQL 连接信息 |
| 媒体存储 | 对象存储访问密钥；使用本地磁盘时无需配置 |
| 前端接入 | `STRAPI_URL`、只读 API Token、Preview Secret 和 Webhook Token |

需要定期备份 PostgreSQL 和媒体文件。密钥发生泄露时应立即轮换，并同步更新 Strapi 与 Vercel 环境变量。

### 4.3 CMS 与前端接入

#### 4.3.1 建立 Article 内容模型

在 Strapi Content-Type Builder 中创建 Collection Type：`Article`，启用 **Draft & Publish** 和 **Internationalization**，配置 `en`、`zh` 两种语言。

| Strapi 字段 | 字段类型 | 配置要求 |
|-|-|-|
| `title` | Short text | 必填 |
| `slug` | UID | 必填，根据 `title` 生成并保持唯一 |
| `category` | Enumeration | 必填；限定为 `guides`、`best`、`review`、`compare`、`glossary` |
| `excerpt` | Long text | 必填 |
| `author` | Short text | 必填 |
| `readingTime` | Integer | 必填，填写预计阅读分钟数 |
| `body` | Rich Text (Markdown) | 必填，保存文章正文 |
| `faqItems` | Repeatable Component | 可选；每项包含必填的 `question` 和 `answer` |
| `relatedArticles` | Relation | 可选，Article 到 Article 的多篇关联关系 |
| `seoTitle` | Short text | 可选；未填写时使用 `title` |
| `seoDescription` | Long text | 可选；未填写时使用 `excerpt` |
| `canonicalUrl` | Short text | 可选 |
| `noindex` | Boolean | 默认 `false` |

`publishedAt` 使用 Strapi 在 Draft & Publish 启用后提供的系统字段。`tableOfContents` 不在 CMS 中保存，由 Next.js 按正文中的 H2 自动生成；存在 `faqItems` 时追加 FAQ 目录项。

`title`、`excerpt`、`body` 和 SEO 文案按语言分别维护；`slug` 与 `category` 在两种语言中保持一致。前端切换语言时继续使用同一路由，并读取对应语言版本。

媒体通过 Strapi Media Library 上传。正文图片必须填写替代文本，并由 Next.js 图片配置允许加载实际的媒体域名。

#### 4.3.2 配置访问权限

按照访问方分别配置权限：

| 访问方 | 权限配置 |
|-|-|
| Next.js 服务端 | 创建只读 API Token，仅允许读取 `Article` 及相关媒体 |
| Blog Editor | 允许创建、查看、编辑、发布和撤回 Article，并管理 Blog 媒体 |
| 系统管理员 | 管理 Content-Type Builder、API Token、Webhook、用户及部署配置 |

Next.js 使用的 Token 只保存在 Vercel 服务端环境变量中：

```env
STRAPI_URL=https://cms.agentguard.one
STRAPI_API_TOKEN=replace-with-read-only-token
```

Next.js 请求 Strapi 时携带：

```http
Authorization: Bearer <STRAPI_API_TOKEN>
```

不得将 Token 放入 `NEXT_PUBLIC_*` 环境变量、客户端组件或浏览器请求中。Article API 保持非公开状态，所有读取统一由 Next.js 服务端完成。

#### 4.3.3 Next.js 读取并渲染内容

Strapi 创建 Article 后会提供 `/api/articles` REST API。Next.js 应建立统一的服务端数据访问模块，负责添加认证头、处理请求错误和转换 Strapi 5 返回的数据。

| 页面 | 数据读取与渲染逻辑 |
|-|-|
| Blog 聚合页 | 查询已发布文章，按发布时间倒序排列；支持分页、分类和关键词条件 |
| 文章详情页 | 根据路由中的 `category` 和 `slug` 查询唯一文章，并返回正文、FAQ、SEO 字段和 Related 数据 |

聚合页的筛选条件映射到 Strapi `filters`：

| 页面条件 | API 查询逻辑 |
|-|-|
| 全部文章 | 查询已发布 Article，按 `publishedAt:desc` 排序 |
| 分类筛选 | `filters[category][$eq]={category}` |
| 模糊搜索 | 对 `title`、`excerpt` 和 `category` 使用 `$containsi` 和 `$or` |
| 分类与搜索组合 | 同时传入分类条件和搜索条件 |

所有列表及详情请求都要传入与官网当前语言一致的 `locale`。某语言版本未发布时，不在该语言的列表页展示。

列表查询只返回卡片需要的字段，减少数据传输：

```text
title, slug, category, publishedAt, excerpt, author, readingTime
```

文章详情查询中，若文章不存在、未发布，或数据中的分类与 URL 不一致，返回 404。

详情查询返回正文、`faqItems`、SEO 字段及 `relatedArticles`。Strapi 默认不返回关联数据和媒体，查询时需要显式使用 `populate`，并限定所需字段，避免无范围的深层关联查询。

Next.js 将 `body` 作为 Markdown 渲染，并对输出 HTML 进行安全过滤。渲染过程中提取所有 H2，生成稳定且唯一的锚点 ID 和 `tableOfContents`。正文图片、外部链接和代码内容应使用统一的前端样式。

Related 首先使用 CMS 配置的 `relatedArticles`；不足时，再按 3.3.4 的规则查询其他已发布文章补足。

#### 4.3.4 接入草稿预览

开发一个仅用于 CMS 预览的 Next.js 服务端接口，例如：

```text
GET /api/preview?url=/{category}/{slug}/&secret={PREVIEW_SECRET}&status=draft
```

预览流程如下：

```text
编辑者点击 Strapi Preview
→ Strapi 生成带密钥的 AgentGuard 预览地址
→ Next.js 校验 Preview Secret 和站内路径
→ 开启 Next.js Draft Mode
→ 使用 status=draft 查询 Strapi
→ 展示未发布文章
```

Strapi 和 Vercel 使用相同的 `PREVIEW_SECRET`。预览接口必须拒绝错误密钥和外部跳转地址。先使用跳转式预览；如后续需要在 Strapi 后台内嵌实时预览，再单独评估官网 CSP 配置。

#### 4.3.5 发布后刷新 Vercel 页面

在 Next.js 中建立受保护的缓存刷新接口，例如：

```text
POST /api/revalidate
Authorization: Bearer <WEBHOOK_TOKEN>
```

在 Strapi Webhooks 中订阅 `entry.publish`、`entry.unpublish` 和 `entry.delete`。收到事件后，Next.js 校验 Token，并刷新：

```text
/blog/
/{category}/{slug}/
```

文章分类或 slug 发生变化时，同时刷新修改前后的详情页路径。Webhook 失败应保留日志并支持重试，避免 CMS 已发布而网站仍展示旧内容。

#### 4.3.6 验收内容维护流程

上线前使用 Blog Editor 账号完成一次完整验收：

1. 新建文章并填写所有必填字段。
2. 上传正文图片并填写替代文本。
3. 保存草稿，通过 Preview 检查正文、目录、FAQ、SEO 信息和 Related。
4. 发布文章，确认 `/blog/` 出现新卡片，详情页路由正确。
5. 修改标题、正文和关联文章，重新发布后确认页面缓存已刷新。
6. 撤回文章，确认列表页不再展示且详情页返回 404。
7. 验证无权限的访问无法读取草稿或进入 CMS 系统配置。

### 4.4 Strapi 官方文档

| 主题 | 文档 |
|-|-|
| 内容模型 | [Content-Type Builder](https://docs.strapi.io/cms/features/content-type-builder) |
| REST API 与查询 | [REST API](https://docs.strapi.io/cms/api/rest)、[Filters](https://docs.strapi.io/cms/api/rest/filters)、[Populate & Select](https://docs.strapi.io/cms/api/rest/populate-select) |
| 多语言 | [Internationalization](https://docs.strapi.io/cms/features/internationalization) |
| 草稿与预览 | [Draft & Publish](https://docs.strapi.io/cms/features/draft-and-publish)、[Preview](https://docs.strapi.io/cms/features/preview) |
| 权限与 Token | [RBAC](https://docs.strapi.io/cms/features/rbac)、[API Tokens](https://docs.strapi.io/cms/features/api-tokens) |
| 发布通知 | [Webhooks](https://docs.strapi.io/cms/backend-customization/webhooks) |
| 媒体与部署 | [Media Library](https://docs.strapi.io/cms/features/media-library)、[Upload Providers](https://docs.strapi.io/cms/configurations/media-library-providers)、[Deployment](https://docs.strapi.io/cms/deployment) |