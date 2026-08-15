<!--
Source: https://acntglrfp7bm.feishu.cn/wiki/A8ZMwthd4i1vQ7knqNJc0geNnWb
Feishu document id: WgVUdpspIoDDTAxtfeaccr1anec
Revision: 4
Exported at: 2026-08-15T13:31:06Z
-->
# AgentGuard Blog Schema JSON-LD 技术规范

## 1. 文档目的

本文档用于指导开发在 AgentGuard Blog 页面中生成并输出 Schema JSON-LD，使搜索引擎能够明确识别文章信息、页面层级和 FAQ 内容。

JSON-LD 由 Next.js 根据 Strapi 数据自动生成，并以 `<script type="application/ld+json">` 嵌入页面 HTML。内容运营方只维护 CMS 字段，无需创建 JSON 文件或手动编辑 Schema。

```text
Strapi 文章字段
→ Next.js 服务端读取
→ 按映射规则生成 JSON-LD
→ 嵌入对应页面 HTML
→ 搜索引擎抓取
```

## 2. 适用页面与 Schema

| 页面 | 路由 | 输出的 Schema |
|-|-|-|
| Blog 聚合页 | `/blog/` | `BreadcrumbList` |
| Blog 文章详情页 | `/{category}/{slug}/` | `BlogPosting`、`BreadcrumbList` |
| 包含 FAQ 的文章详情页 | `/{category}/{slug}/` | 额外输出 `FAQPage` |

Blog 文章统一使用 `BlogPosting`。该类型属于 `Article` 的细分类型，更符合当前内容场景。

`FAQPage` 仅在页面真实展示 FAQ 时输出。截至 2026 年 7 月，Google 已停止展示 FAQ 富媒体结果；本规范保留 `FAQPage`，用于 Schema.org 语义表达及其他搜索引擎或 AI 消费方，不将 Google FAQ 富媒体展示作为验收目标。

## 3. 数据准备

### 3.1 现有 Article 字段

JSON-LD 使用以下 Strapi Article 字段：

| Strapi 字段 | 用途 |
|-|-|
| `title` | 文章标题 |
| `slug` | 文章详情页路径 |
| `category` | 文章类别和路径 |
| `publishedAt` | 发布时间 |
| `updatedAt` | 最近修改时间，使用 Strapi 系统字段 |
| `excerpt` | 默认描述 |
| `author` | 作者名称 |
| `readingTime` | 预计阅读分钟数 |
| `faqItems` | 可选 FAQ 问题与答案 |
| `seoDescription` | 优先使用的 Schema 描述 |
| `canonicalUrl` | 可选 Canonical URL |
| `noindex` | 是否禁止索引 |

`body` 用于页面正文展示，当前无需完整写入 `articleBody`，避免 JSON-LD 体积过大。

### 3.2 需要补充的图片字段

Article 需要增加单图媒体字段 `featuredImage`：

| 字段 | Strapi 类型 | 要求 |
|-|-|-|
| `featuredImage` | Media，Single | 建议设为必填，用作文章代表图和 `BlogPosting.image` |
| `featuredImage.alternativeText` | Media 自带字段 | 必填，描述图片内容 |

文章代表图应与文章内容相关，并提供搜索引擎可访问的绝对 URL。不得使用站点 Logo 代替文章代表图，也不从 `body` 中临时提取第一张图片。

### 3.3 网站固定信息

以下信息由前端统一配置：

| 配置 | 值 |
|-|-|
| 网站地址 | `https://www.agentguard.one` |
| 发布方名称 | `AgentGuard` |
| 发布方类型 | `Organization` |
| 发布方地址 | `https://www.agentguard.one/` |
| 发布方 Logo | 使用官网确认后的可公开访问 Logo URL |

网站地址应通过服务端环境变量或 SEO 配置读取，避免在不同文件中重复硬编码。

## 4. 通用输出规则

1. JSON-LD 必须由 Next.js 服务端输出，确保初始 HTML 中可以直接读取。
2. 仅已发布且允许索引的页面输出；草稿、Preview 和 `noindex=true` 页面不输出。
3. JSON-LD 内容必须与页面可见内容一致。
4. URL 和图片地址统一使用完整的 HTTPS 绝对地址。
5. 日期统一使用 ISO 8601 格式，并包含时区。
6. 空值、`null`、空数组和无内容的可选字段不输出。
7. Canonical、面包屑和 JSON-LD 中的文章 URL 必须来自同一个 URL 生成方法。
8. 同一页面使用一个 JSON-LD `<script>`，通过 `@graph` 放置多个 Schema 节点。
9. 序列化时将 `<` 替换为 `\u003c`，防止用户内容构成脚本注入。
10. 中英文页面输出与当前可见内容一致的 `inLanguage`、标题、摘要、FAQ 和面包屑名称。

## 5. 字段映射

### 5.1 BlogPosting

| JSON-LD 字段 | 数据来源 | 生成规则 |
|-|-|-|
| `@context` | 固定值 | `https://schema.org`，放在 `@graph` 根节点 |
| `@type` | 固定值 | `BlogPosting` |
| `@id` | 文章 URL | `{canonicalUrl}#article` |
| `url` | `canonicalUrl` 或路由 | 缺省时使用 `/{category}/{slug}/` 生成 |
| `mainEntityOfPage.@id` | 文章 URL | 与 Canonical URL 完全一致 |
| `headline` | `title` | 使用页面可见文章标题 |
| `description` | `seoDescription`、`excerpt` | 优先使用 `seoDescription`，为空时使用 `excerpt` |
| `image.url` | `featuredImage.url` | 转换为完整媒体 URL |
| `image.caption` | `featuredImage.alternativeText` | 有内容时输出 |
| `datePublished` | `publishedAt` | 输出 ISO 8601 |
| `dateModified` | `updatedAt` | 输出 ISO 8601 |
| `author.name` | `author` | 与页面展示作者一致 |
| `author.@type` | `author` | `AgentGuard Research` 使用 `Organization`，其他示例作者使用 `Person` |
| `publisher` | 网站固定信息 | 固定为 AgentGuard 组织信息 |
| `articleSection` | `category` | 转换为 `Guides`、`Best`、`Review`、`Compare` 或 `Glossary` |
| `inLanguage` | 当前语言 | 英文使用 `en`，中文使用 `zh-CN` |
| `timeRequired` | `readingTime` | 分钟数转换为 ISO 8601，例如 `10 → PT10M` |
| `isAccessibleForFree` | 固定值 | `true` |

当前没有作者详情页，因此不输出 `author.url`。后续上线作者页时，再映射作者页面的唯一 URL。

### 5.2 BreadcrumbList

#### Blog 聚合页

| position | name | item |
|-|-|-|
| 1 | `Home` | `https://www.agentguard.one/` |
| 2 | `Blog` | `https://www.agentguard.one/blog/` |

#### 文章详情页

| position | name | item |
|-|-|-|
| 1 | `Home` | `https://www.agentguard.one/` |
| 2 | `Blog` | `https://www.agentguard.one/blog/` |
| 3 | 当前类别展示名称 | `https://www.agentguard.one/blog/?category={category}` |
| 4 | `title` | 当前文章 Canonical URL |

每一级使用 `ListItem`，并按页面层级从 1 开始连续编号。结构化数据应与页面可见面包屑保持一致。

### 5.3 FAQPage

| JSON-LD 字段 | 数据来源 | 生成规则 |
|-|-|-|
| `@type` | 固定值 | `FAQPage` |
| `@id` | 文章 URL | `{canonicalUrl}#faq` |
| `mainEntity` | `faqItems` | 按 CMS 中的顺序输出 |
| `mainEntity[].@type` | 固定值 | `Question` |
| `mainEntity[].name` | `faqItems[].question` | 与页面问题文字一致 |
| `mainEntity[].acceptedAnswer.@type` | 固定值 | `Answer` |
| `mainEntity[].acceptedAnswer.text` | `faqItems[].answer` | 与页面答案内容一致 |

输出条件：

```text
faqItems 有有效问题和答案
├── 页面展示 FAQ
└── JSON-LD @graph 加入 FAQPage

faqItems 为空
├── 页面隐藏 FAQ
└── JSON-LD 不输出 FAQPage
```

不得只输出搜索引擎可见、用户页面中不可见的 FAQ 内容。

## 6. 完整 JSON-LD 示例

以下示例对应包含 FAQ 的英文文章：

```json
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "BlogPosting",
      "@id": "https://www.agentguard.one/best/best-mcp-security-tools/#article",
      "url": "https://www.agentguard.one/best/best-mcp-security-tools/",
      "mainEntityOfPage": {
        "@type": "WebPage",
        "@id": "https://www.agentguard.one/best/best-mcp-security-tools/"
      },
      "headline": "Best MCP Security Tools in 2026",
      "description": "A criteria-led shortlist for teams evaluating MCP security tools.",
      "image": {
        "@type": "ImageObject",
        "url": "https://media.agentguard.one/blog/best-mcp-security-tools.jpg",
        "caption": "MCP security tools evaluated by AgentGuard"
      },
      "datePublished": "2026-07-21T09:00:00+08:00",
      "dateModified": "2026-07-24T16:30:00+08:00",
      "author": {
        "@type": "Person",
        "name": "Maya Chen"
      },
      "publisher": {
        "@type": "Organization",
        "name": "AgentGuard",
        "url": "https://www.agentguard.one/",
        "logo": {
          "@type": "ImageObject",
          "url": "https://www.agentguard.one/AgentGuard.svg"
        }
      },
      "articleSection": "Best",
      "inLanguage": "en",
      "timeRequired": "PT10M",
      "isAccessibleForFree": true
    },
    {
      "@type": "BreadcrumbList",
      "@id": "https://www.agentguard.one/best/best-mcp-security-tools/#breadcrumb",
      "itemListElement": [
        {
          "@type": "ListItem",
          "position": 1,
          "name": "Home",
          "item": "https://www.agentguard.one/"
        },
        {
          "@type": "ListItem",
          "position": 2,
          "name": "Blog",
          "item": "https://www.agentguard.one/blog/"
        },
        {
          "@type": "ListItem",
          "position": 3,
          "name": "Best",
          "item": "https://www.agentguard.one/blog/?category=best"
        },
        {
          "@type": "ListItem",
          "position": 4,
          "name": "Best MCP Security Tools in 2026",
          "item": "https://www.agentguard.one/best/best-mcp-security-tools/"
        }
      ]
    },
    {
      "@type": "FAQPage",
      "@id": "https://www.agentguard.one/best/best-mcp-security-tools/#faq",
      "mainEntity": [
        {
          "@type": "Question",
          "name": "What should an MCP security tool inspect?",
          "acceptedAnswer": {
            "@type": "Answer",
            "text": "It should inspect server code, dependencies, declared capabilities, tool descriptions, network behavior, and runtime actions."
          }
        }
      ]
    }
  ]
}
```

没有 FAQ 的文章删除整个 `FAQPage` 节点，不保留空的 `mainEntity`。

## 7. 页面生成逻辑

| 页面状态 | 输出规则 |
|-|-|
| `/blog/` | 输出聚合页面包屑 |
| 已发布文章 | 输出 `BlogPosting` 和文章面包屑 |
| 已发布文章且包含 FAQ | 额外输出 `FAQPage` |
| Draft 或 Preview | 不输出生产 JSON-LD |
| `noindex=true` | 不输出 JSON-LD |
| 文章不存在或 URL 类别不匹配 | 返回 404，不输出 JSON-LD |
| `featuredImage` 缺失 | 视为内容校验问题，不使用 Logo 或正文首图代替 |

文章标题、作者、时间、FAQ 或 URL 发生变化后，JSON-LD 应在页面缓存刷新时同步更新。Strapi Webhook 和 Vercel 缓存刷新逻辑沿用 Blog 模块需求文档。

## 8. 多语言规则

当前 Blog 不增加 `/zh/` 路由，JSON-LD 仍需与页面当前语言保持一致：

| 页面语言 | `inLanguage` | 文本字段 |
|-|-|-|
| English | `en` | 使用 Strapi `en` 版本的标题、描述、FAQ 和面包屑名称 |
| 中文 | `zh-CN` | 使用 Strapi `zh` 版本的标题、描述、FAQ 和面包屑名称 |

Next.js 必须在服务端确认当前语言，并生成同语言的页面内容和 JSON-LD。Canonical URL 与官网现有语言策略保持一致。

## 9. 验证与验收

### 9.1 验证工具

| 工具 | 用途 |
|-|-|
| [Google Rich Results Test](https://search.google.com/test/rich-results) | 验证 Google 当前支持的文章和面包屑结构化数据 |
| [Schema.org Validator](https://validator.schema.org/) | 验证完整 Schema.org 语法，包括 `FAQPage` |
| 页面源代码 | 确认初始 HTML 中存在 `application/ld+json` |

### 9.2 验收标准

1. Blog 聚合页和文章详情页输出正确的 Schema 类型。
2. JSON-LD 可以在页面源代码中直接读取。
3. 标题、作者、时间、类别、图片和 FAQ 与页面可见内容一致。
4. 所有 URL 和图片地址均为可访问的 HTTPS 绝对地址。
5. 有 FAQ 和无 FAQ 的文章均符合条件输出规则。
6. 英文和中文页面的 `inLanguage` 与文本内容一致。
7. Draft、Preview、`noindex` 和 404 页面不输出生产 JSON-LD。
8. Google 支持的 Schema 无严重错误；完整数据通过 Schema.org Validator。
9. JSON-LD 中的用户内容经过安全序列化。

## 10. 官方参考

- [Schema.org BlogPosting](https://schema.org/BlogPosting)
- [Schema.org BreadcrumbList](https://schema.org/BreadcrumbList)
- [Schema.org FAQPage](https://schema.org/FAQPage)
- [Google Article structured data](https://developers.google.com/search/docs/appearance/structured-data/article)
- [Google Breadcrumb structured data](https://developers.google.com/search/docs/appearance/structured-data/breadcrumb)
- [Google Search documentation updates](https://developers.google.com/search/updates#removing-faq-rich-result)
- [Next.js JSON-LD guide](https://nextjs.org/docs/app/guides/json-ld)

## 11. 给开发的接入引导

### 11.1 准备 CMS 与公共配置

1. 在 Strapi Article 中增加 `featuredImage` 单图字段，并要求填写替代文本。
2. 确认 Article API 返回 `faqItems`、`featuredImage`、SEO 字段和 Strapi 系统时间。
3. 在 Next.js 中建立统一的 `SITE_URL`、发布方名称和 Logo 配置。
4. 使用现有 Canonical URL 方法生成文章 URL，避免 Schema 单独拼接另一套路由。

### 11.2 建立 JSON-LD 生成方法

建议创建服务端工具文件，例如：

```text
lib/seo/blog-json-ld.ts
```

核心逻辑示例：

```ts
const SITE_URL = "https://www.agentguard.one";

const categoryLabels: Record<string, string> = {
  guides: "Guides",
  best: "Best",
  review: "Review",
  compare: "Compare",
  glossary: "Glossary",
};

export function buildArticleJsonLd(article: Article, locale: "en" | "zh") {
  if (article.noindex) return null;

  const canonicalUrl =
    article.canonicalUrl ||
    new URL(`/${article.category}/${article.slug}/`, SITE_URL).toString();

  const graph: Record<string, unknown>[] = [
    {
      "@type": "BlogPosting",
      "@id": `${canonicalUrl}#article`,
      url: canonicalUrl,
      mainEntityOfPage: {
        "@type": "WebPage",
        "@id": canonicalUrl,
      },
      headline: article.title,
      description: article.seoDescription || article.excerpt,
      image: {
        "@type": "ImageObject",
        url: toAbsoluteMediaUrl(article.featuredImage.url),
        caption: article.featuredImage.alternativeText || undefined,
      },
      datePublished: article.publishedAt,
      dateModified: article.updatedAt,
      author: {
        "@type":
          article.author === "AgentGuard Research"
            ? "Organization"
            : "Person",
        name: article.author,
      },
      publisher: {
        "@type": "Organization",
        name: "AgentGuard",
        url: `${SITE_URL}/`,
        logo: {
          "@type": "ImageObject",
          url: `${SITE_URL}/AgentGuard.svg`,
        },
      },
      articleSection: categoryLabels[article.category],
      inLanguage: locale === "zh" ? "zh-CN" : "en",
      timeRequired: `PT${article.readingTime}M`,
      isAccessibleForFree: true,
    },
    buildArticleBreadcrumb(article, canonicalUrl, locale),
  ];

  const validFaqItems = (article.faqItems ?? []).filter(
    (item) => item.question.trim() && item.answer.trim(),
  );

  if (validFaqItems.length > 0) {
    graph.push({
      "@type": "FAQPage",
      "@id": `${canonicalUrl}#faq`,
      mainEntity: validFaqItems.map((item) => ({
        "@type": "Question",
        name: item.question,
        acceptedAnswer: {
          "@type": "Answer",
          text: item.answer,
        },
      })),
    });
  }

  return {
    "@context": "https://schema.org",
    "@graph": graph,
  };
}

export function serializeJsonLd(value: unknown) {
  return JSON.stringify(value).replace(/</g, "\\u003c");
}
```

`buildArticleBreadcrumb` 应按照第 5.2 节生成四级面包屑。`toAbsoluteMediaUrl` 应复用 Strapi 媒体 URL 转换方法。

### 11.3 在文章页面输出

在文章详情页服务端获取 Article 后生成 JSON-LD：

```tsx
import {
  buildArticleJsonLd,
  serializeJsonLd,
} from "@/lib/seo/blog-json-ld";

export default async function ArticlePage({ params }: PageProps) {
  const article = await getArticle(params.category, params.slug);
  const jsonLd = buildArticleJsonLd(article, article.locale);

  return (
    <>
      {jsonLd && (
        <script
          type="application/ld+json"
          dangerouslySetInnerHTML={{
            __html: serializeJsonLd(jsonLd),
          }}
        />
      )}

      <BlogArticle article={article} />
    </>
  );
}
```

Blog 聚合页使用相同方式输出只包含 `BreadcrumbList` 的 JSON-LD。若项目采用 Pages Router，可以在现有页面组件中使用同样的 `<script>` 输出方式。

### 11.4 开发完成后的检查顺序

1. 创建一篇带 FAQ 的测试文章和一篇无 FAQ 的测试文章。
2. 查看页面源代码，确认 JSON-LD 已由服务端输出。
3. 对照 Strapi 字段检查标题、时间、作者、图片、URL 和 FAQ。
4. 使用 Google Rich Results Test 检查 `BlogPosting` 和 `BreadcrumbList`。
5. 使用 Schema.org Validator 检查完整 `@graph` 和 `FAQPage`。
6. 修改文章字段并重新发布，确认页面缓存刷新后 JSON-LD 同步变化。
7. 检查中文页面、Draft、Preview、`noindex` 和 404 情况。