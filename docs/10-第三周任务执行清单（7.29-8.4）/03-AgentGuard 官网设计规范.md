<!--
Source: https://acntglrfp7bm.feishu.cn/wiki/KpUTwISWHiqYfTkjojKceDGwn3b
Feishu document id: Rs4tdqzarobeHgx4mVQcLp21nTc
Revision: 12
Exported at: 2026-08-15T13:31:06Z
-->
# AgentGuard 官网设计规范

## 0. 文档定位



本文档是 AgentGuard 官网需求与原型的视觉设计基线。后续新增或调整页面时，先遵循本文件，再依据具体模块选择布局。



- 适用范围：`Prototype/index.html` 中的 Homepage、Features、Solutions、Resources、Blog、Security、Company、Legal 与 SEO 页面。
- 信息架构与路由范围：见 `doc/site-modules-prd.md`。
- 视觉源文件：`/Users/a107/Downloads/Desktop - 1 (2).svg`，画布 `1440 × 13547`。
- 优先级：明确的最新用户决策 > SVG 源文件 > 本文件 > 单个页面的历史样式。
- 核心原则：设计系统统一，页面布局随模块任务变化。

## 1. 产品与用户



### 1.1 产品定位



AgentGuard 是面向 AI Agent 工作流的安全产品。官网需要清楚表达以下端到端安全能力：



1. 发现风险与安全暴露面。
2. 通过红队方法验证风险。
3. 在运行时检查和防护高风险动作。
4. 为治理、责任和证据留出清晰路径。

### 1.2 核心用户



视觉与内容优先级如下：



1. AI CISO
2. AI Dev
3. Security Team
4. Enterprise Buyer

首页主标题第三行按 `AI CISO`、`AI Dev`、`Security Team`、`Enterprise Buyer` 顺序轮播，每项停留 3 秒。



### 1.3 信息表达



- 标题重点强调 `SECURITY`。
- `AGENT` 用于明确产品对象，不作为最强视觉重点。
- 保留 `end-to-end` 概念。
- 避免使用 `every agent`、海量 Agent 等未经产品定位支持的表达。
- 所有能力、数据边界、性能、客户、认证和比较结论都需要当前一手证据。
- 缺少证据的内容显示明确状态，不使用空白模块或推测性文案填充。

## 2. 视觉方向



### 2.1 设计语言



- 方向：Deep-space / Security Interface，严格继承 SVG 的深蓝黑、冰蓝、细线框和冷白画布。
- 气质：精密、克制、未来感、技术可信，适合企业安全决策。
- 装饰强度：中等，仅使用与安全控制路径相关的光带、点阵、细线和终端界面。
- 布局方式：严格网格为基础，首页使用大尺度居中构图，正文按任务使用终端、流程、控制路径和证据状态。
- 视觉锚点：Hero 地平线光带、真实安装终端、运行时决策流程和点阵防护图形。

### 2.2 禁止模式



- 紫色或蓝紫渐变作为主视觉；首页仅允许参考稿中的白蓝地平线光带。
- 三列对称图标卡片作为默认内容结构。
- 图标放在彩色圆形内作为装饰。
- 除参考稿规定的 Homepage Hero、安装标题与 CTA 外，不统一居中全部标题和内容。
- 大圆角、悬浮卡片和卡片嵌套。
- 装饰性光球、渐变球、波浪分割线和无意义背景图形。
- 为填补空白而增加装饰。
- 每个页面重复 Hero、三卡片、CTA 的固定节奏。
- 可用列表、表格、步骤或正文表达的内容强制放进卡片。

## 3. 设计令牌



### 3.1 颜色



官网以深海军蓝系统为基础。亮蓝负责行动，冰蓝负责标题强调、技术信息和导航，绿色负责成功或可用状态，琥珀色负责边界和待确认状态。



```CSS
:root {
  color-scheme: dark;

  --color-page: #010118;
  --color-surface: #0b1028;
  --color-surface-raised: #131c39;
  --color-surface-deep: #05061d;

  --color-text: #f7fbff;
  --color-text-secondary: #d9e2f2;
  --color-text-muted: #9ba8bf;
  --color-text-subtle: #65718a;

  --color-line: #263858;
  --color-line-strong: #536781;

  --color-light-page: #f6fafc;
  --color-light-surface: #ffffff;
  --color-light-text: #12171c;
  --color-light-text-secondary: #4f5b65;
  --color-light-line: #cbd2d8;
  --color-light-primary: #147cca;
  --color-light-technical: #0d669e;
  --color-light-success: #3d7200;
  --color-light-error: #b4232d;

  --color-primary: #4792fc;
  --color-primary-hover: #2d7fe9;
  --color-technical: #72cdff;
  --color-success: #b7eb63;
  --color-warning: #f5bd5b;
  --color-error: #ff6b72;
}
```



使用规则：



- 深色页面和深色 Section 固定使用 SVG 的深海军蓝 `#010118`，允许 `#05061d`、`#0b1028`、`#131c39` 三层表面，不使用紫色偏色。
- 首页浅色 Section 使用冷白 `#f5fafc`，边框和状态继续使用亮蓝与深海军蓝。
- 浅色 Section 的正文使用深灰黑，边框使用冷灰；技术标签使用对比度合格的深青色。
- 浅色 Section 内的步骤、风险单元、Product Tour、卡片和 CTA 使用白色或浅灰 Surface，不嵌入整块黑色容器；风险与状态继续使用红、绿、蓝语义色。
- 深色区正文使用偏灰白色，避免大面积纯白。
- 蓝色只用于主 CTA、选中状态和关键行动。
- 冰蓝用于标题强调、技术标签、链接、编号、焦点环和路径提示。
- 绿色仅表示成功、就绪或正向状态。
- 琥珀色用于能力边界、待确认内容和风险提示。
- 红色仅用于错误或高风险状态。
- 任何状态都需要文字、图标或结构辅助，不能只靠颜色区分。

### 3.2 字体



当前官网字体系统固定为三套：



```CSS
--font-display: "Space Grotesk", "Inter", Arial, sans-serif;
--font-sans: "Inter", Arial, sans-serif;
--font-mono: "IBM Plex Mono", monospace;
```



| 角色 | 字体 | 用法 |
|-|-|-|
| Hero、H1、H2、H3 | Space Grotesk | 对齐 SVG 的几何标题比例与字面宽度 |
| 正文、按钮、导航 | Inter | 保持长文和界面文案清晰 |
| 标签、编号、终端、数据、状态 | IBM Plex Mono | 建立安全控制面和工程语境 |



字体规则：



- 全站只使用以上三套字体，不引入其他字体。
- Display 标题默认使用 `Space Grotesk 400`，紧凑组件标题可使用 500。
- 正文最小 16px。
- 辅助标签最小 10px，必须使用高对比度颜色。
- 英文小写正文不增加字距。
- 数据列使用等宽字体或 `font-variant-numeric: tabular-nums`。
- 标题允许平衡换行，长单词必须可断行。
- 信息架构文档定义的 `Section Heading` 必须作为该 Section 的 H2；Eyebrow 只用于补充语境，不得承载或替代正式模块标题。

### 3.3 字号



| 层级 | Desktop | Tablet | Mobile | 行高 |
|-|-|-|-|-|
| Homepage Display | 78px | 58px | 42px | 1.18-1.23 |
| Page H1 | 64-72px | 52px | 42px | 1.01 |
| H2 | 48-70px | 40px | 30px | 1.07 |
| H3 | 17px | 17px | 16px | 1.30 |
| Lead | 18-20px | 18px | 17px | 1.55 |
| Body | 16px | 16px | 16px | 1.55 |
| Small | 13-14px | 13-14px | 13-14px | 1.50 |
| Mono Label | 10-12px | 10-12px | 10-12px | 1.40 |



字号按断点切换，不随视口宽度连续缩放。



### 3.4 间距



基础单位为 4px，优先使用以下间距：



```Plain Text
4 / 8 / 12 / 16 / 24 / 32 / 40 / 48 / 64 / 72 / 80 / 96
```



- 控件内部：8-18px。
- 紧密内容组：8-16px。
- 卡片或工具内边距：22-24px。
- 模块标题与正文：24-40px。
- 页面模块垂直间距：58-96px，按内容密度选择。
- 页面首尾不允许出现无法解释的大面积空白。

### 3.5 边框与圆角



- 默认边框：`1px solid var(--color-line)`。
- 内容分隔优先使用边框和留白，减少阴影。
- 页面区段、表格和正文布局：0px 圆角。
- 按钮、输入、菜单和小型工具：6px 圆角。
- 独立交互工具允许 8px 圆角。
- 禁止同一区域出现多层圆角卡片嵌套。

## 4. 全局布局



### 4.1 页面网格



```CSS
--header-height: 72px;
--content-max: 1320px;
--desktop-gutter: 20px;
--mobile-gutter: 14px;
```



- Desktop 常规内容宽度：`min(calc(100% - 40px), 1200px)`；Homepage 使用 `min(calc(100% - 48px), 1320px)`。
- 固定 Header 使用 `min(calc(100% - 40px), 1400px)`，Logo、导航和双 CTA 的横向位置在所有路由保持不变。
- Mobile 内容宽度：`calc(100% - 28px)`。
- 主要正文每行控制在 45-75 个英文字符。
- 长表格放入横向滚动容器，页面本身不得横向滚动。
- 固定格式元素需要明确网格、最小宽度、最大宽度或宽高比，避免内容变化引起布局跳动。

### 4.2 响应式断点



| 断点 | 规则 |
|-|-|
| `> 980px` | 完整导航；Hero 可双列；文档型页面可使用侧栏 |
| `641-980px` | 移动导航；Hero 单列；侧栏收窄或保留 |
| `<= 640px` | 单列正文；CTA 纵向；模块目录横向滚动 |



每次设计至少检查：



- Desktop：1440 x 900
- Tablet：980 x 900
- Mobile：390 x 844

### 4.3 Header



- 高度固定 72px，深蓝黑实体背景，无明显底部分割线。
- Logo 使用 24px 白色方形标记和 `AgentGuard` 文字，不依赖远程图片。
- Header 位于单页原型的外层固定壳中，页面内容切换时不重建。
- Logo 和产品名点击后返回 `#home`。
- 顶部导航依次包含 Features、Solutions、Resources、Pricing、Security。
- Blog 收入 Resources 下拉，不保留独立顶部入口。
- Resources 下拉固定为两列：

  - Docs：Docs、API Reference。
  - Blog：All Blog Posts、Guides、Best、Review、Compare、Glossary。
- 两列等宽，中间使用 1px 分隔线；桌面菜单宽度约 600px、最小高度约 342px。
- 列标题使用 10px 大写等宽字体，仅承担分组标识，不响应点击。
- 菜单入口使用 16px Lucide 图标与文字，点击热区高度至少 44px；悬停时图标切换为技术青色。
- 点击 All Blog Posts 进入全部文章列表；点击五个分类进入 Blog 列表并选中对应分类。
- 640px 以下 Resources 内容转为单列，两组之间使用水平分隔线。
- Pricing 是顶级直接入口，位于 Resources 与 Security 之间，进入 `/pricing`。
- Security 是顶级直接入口，进入 `/security`，不显示下拉菜单。
- Features 下拉包含 Runtime Guard、Deep Scan、Red-Team 与 Govern。
- Company 只进入 Footer。
- 主导航和按钮点击热区至少 44 x 44px。
- 其他单列下拉菜单宽度约 260px；所有下拉使用深色实体背景和 1px 边框。
- 跳转后关闭下拉并更新当前模块激活态；导航顺序、Logo、菜单和 CTA 的位置保持稳定。

### 4.4 Footer



Footer 固定包含：



1. Features
2. Solutions
3. Resources
4. Security
5. Company
6. Legal 信息

Footer 允许信息密度高于正文，字号不得低于 12px。



## 5. 页面族



页面族共用颜色、字体、间距、按钮、Header、Footer 和交互状态。Hero 构图、目录位置和内容组件随页面任务变化。



### 5.1 Homepage



- 首页严格参考 `/Users/a107/Downloads/Desktop - 1.svg`，Desktop 内容宽度 1320px，页面基础背景为 `#010118`。
- Hero 使用完整居中构图，不使用左右分栏、G 动效或附加插图。
- H1 固定三行：`End-To-End`、`AI Agent Security For`、目标用户轮播。轮播顺序为 `AI CISO`、`AI Dev`、`Security Team`、`Enterprise Buyer`，每 3 秒开始一次切换；当前词逐字删除后逐字输入下一项，并显示冰蓝色闪烁光标。第三行高度固定；降低动态效果偏好下直接切换文字。标题使用 SVG `paint1_linear_1_3` 对应渐变：`103.707deg`，`rgba(192,227,255,.65) 0%`、`#85CEFF 15%`、`#FFFFFF 51.7487%`、`#85CEFF 85%`、`rgba(192,227,255,.65) 100%`。
- Hero Supporting Copy 居中，最大宽度约 770px，Desktop 13px；下方依次排列 Open Source / Powered By GoPlus / Local First 与 Start Free / Book a Demo。
- Hero 主 CTA 严格使用 SVG `paint3_linear_1_3`：水平 `#2DB5FF 0%`、`#00A5FF 50%`、`#8ED7FE 100%`，尺寸 `160×43px`，圆角 `10px`。次 CTA 尺寸 `134×44px`，使用 `rgba(255,255,255,.24)` 填充、`rgba(255,255,255,.45)` 的 `0.5px` 描边与 `10px` 圆角。
- Hero 与安装区之间使用 SVG 内嵌的白蓝地平线位图。SVG 原始矩形为 `x=-3`、`y=48`、`1447×1447`；当前 72px Header 下的首页内容区使用绝对定位图片层，以 `top: -24px`、`width/height: 1447px` 对齐源文件，并规避 `srcdoc` 不加载 CSS 背景资源的问题。Hero 不裁剪该图层，光效需连续延伸到 Deploy 与 Metrics 区域，禁止在 Section 边界形成水平截断。
- Homepage 的 H1、Deploy 标题和各 Section H2 使用 SVG 对应线性渐变：Hero `paint1`、Deploy `paint4`、Why 第二行 `paint6`、Runtime 的 `Evaluate` / `Execute` 使用 `paint7/8`、Protection 关键词使用 `paint13`、Detectors 使用 `paint22`、Workflows 使用 `paint20/21`。未被渐变覆盖的标题文字保持 SVG 的白色或深海军蓝，正文保持 Inter。
- `Deploy AgentGuard` 与安装终端居中；标题渐变限制在文字自身宽度内。终端最大宽度约 730px，包含 MacOS / Linux、Windows、npm、Skill、MCP Server 五个 Tab、命令和复制状态。复制控件使用 SVG 对应的 `20×20px` 细描边方形按钮与 Copy icon，复制成功后短暂切换为 Check icon。
- Metrics 紧接安装终端，四列固定为 `10,000+ Actions Evaluated`、`500+ Threats Blocked`、`6 Policy Rules`、`<50ms Avg Decision Time`。
- `Why AI Agent Security Matters` 使用左标题、右说明、下方四列风险卡片；每张卡使用 1px 冰蓝描边、无填充深蓝底，并分别使用 Brain、DNA、Wrench、Eye 点阵图标。
- `Runtime Decisions & Workflow` 使用左说明、右大标题、下方横向控制流程。Request、Evaluate、Handle 为连续三步，四类风险信号嵌入 Evaluate，Blocked / Allowed 嵌入 Handle。流程中的标题、说明、状态、请求名称和风险信号必须使用独立 HTML 文本元素，禁止烘焙在位图中。
- `Three Layers Of Protection For AI Agents — AI` 使用冷白背景和三张等宽亮蓝细框卡片，分别为 Runtime Guard、Deep Scan、OpenClaw Environment Patrol。Section 背后使用一个超大、低对比冷蓝圆形；每张卡包含说明、黑白点阵图形、能力短列表和专属 CTA。
- `Six Security Detectors. One Scan` 使用深色背景，标题置于从上一段冷白区延伸下来的 SVG `Ellipse 4` 光晕中；椭圆尺寸为 `1052×800px`，颜色为 `#90D7FF`、透明度 `12%`（等效 `#90D7FF1F`），SVG 高斯模糊 `stdDeviation=194.805` 对应设计稿 Blur `389.61px`。六项检测器采用 3 × 2 细框网格。
- `See AgentGuard In Real Agent Workflows` 使用超大蓝色标题与白色 `Workflows` 叠字。白色 `Workflows` 保持在标题第二行，并相对基线上移 `18px`，不得被通用 `span` 规则推到第三行。左侧复用 SVG 内嵌的蓝色节点网络原图，右侧使用 1 / 2 / 3 Tab 的深色产品预览面板。
- `First-Party Advisories For AI Agent Threats` 使用 `1162px` 白色 Section，Desktop 左边距 `70px`。标题使用 Space Grotesk 400 / `72px`，两行各嵌入一个 `65×65px`、`4.64286px` 圆角的源图块。三条 Advisory 使用无卡片点线列表，列结构为 ID、标题、类型与日期；底部 CTA 为 `199×47px` 深色渐变按钮和 `240×48px` 描边按钮。
- `Start With The Protection Level You Need` 使用 `1338px` 深海军蓝 Section。顶部光晕对应 SVG `Ellipse`：`1052×800px`、`#90D7FF`、`12%` 透明度、CSS `blur(194.805px)`。Desktop 套餐区左右边距 `45.5px`，五张卡各 `247×659px`、`11.5px` 圆角、`rgba(255,255,255,.25)` 边框；Personal 使用 `#1DAFFF` 推荐描边和 `Recommended` 标签。
- `Frequently Asked Questions` 使用 `1224px` 白色 Section。标题右对齐，Space Grotesk 400 / `72px`；FAQ 使用无卡片的整宽点线分隔与原生 `details/summary`，第一项默认展开，展开和折叠符号分别为 `−`、`+`。
- Homepage Bottom CTA 使用 `800px` 深色 Section，并使用 SVG 提取的 `final-cta-background.png` 全宽覆盖。标题为 `48px` 居中两行；主按钮 `236×51px`，沿用 SVG 蓝色三段渐变；次按钮 `160×52px`，使用 `rgba(255,255,255,.24)` 填充、`0.5px rgba(255,255,255,.45)` 描边和 `10px` 圆角。
- 首页区段背景映射固定为：Hero、Install + Metrics、Why Matters、Runtime、Detectors、Workflows、Protection Level、Bottom CTA 使用深海军蓝；Three Layers Protection、First-Party Advisories、FAQ 使用白色。
- 区段之间不使用横向分界线，通过背景、留白和内容层级形成连续浏览节奏。
- Tablet 将双栏标题转为单栏，风险项和检测器转为两列；Mobile 将全部内容转为单列，Metrics 保留两列，终端 Tab 横向滚动，运行时流程保持 Request → Evaluate → Handle 的纵向顺序，产品预览 Tab 保持可横向扫描。

### 5.2 Features



- 使用技术控制面、终端、接口、状态行或检查路径作为视觉语言。
- Hero 背景可使用低对比网格。
- 内容模块可交替使用说明双栏、步骤、命令和状态列表。
- 重点展示控制发生在何处、输入是什么、输出和边界是什么。
- Red-Team 页面依次使用 Hero + 页内导航、价值选项卡、能力网格、攻击流程、Findings 证据界面、持续验证闭环、FAQ 与 Final CTA。
- Red-Team 各 Section 使用不同构图：选项卡解释收益，能力区使用图标网格，测试流程使用横向攻击路径，Findings 使用产品界面或结构化证据面板，闭环使用环形或回流路径。
- 攻击流程必须清楚区分攻击场景、被测 AI Agent、风险信号、控制响应和最终 Finding；不得只展示“AI 发起攻击”的抽象动画。
- Findings 视觉必须包含 Severity、Evidence、Owner、Remediation Status 和 Retest Status，支持用户一眼理解从发现到关闭的状态变化。
- Red-Team 的强调色只用于攻击路径、风险状态和关键结果；正文背景、间距、字体、按钮和导航继续遵循全站设计 Token。
- Govern 页面依次使用 Hero + 统一控制面、风险概览、纵向执行时间线、监控信号板、策略版本分发、审批队列、审计时间线 + 威胁情报、Deny-First 闭环、FAQ 与 Final CTA。
- Govern Hero 的产品视觉必须同时出现 Agent inventory、Risk state、Policy version 与 Approval queue，第一屏即可识别“统一控制面”。
- Govern 的执行时间线使用纵向事件序列，风险信号和策略判断插入请求与结果之间，避免将监控项拆成脱离流程的卡片。
- 策略分发使用版本轨道和环境状态；审批使用待处理队列与决策详情；审计使用时间线与威胁情报双区。三个 Section 不复用相同构图。
- Deny-First 状态使用 Error、Amber、Lime 表示 Denied、Review、Allowed；技术青色用于观察和连接关系，蓝色用于主要操作。
- Red-Team 与 Govern 显示统一路由面包屑，不显示通用 Feature 页的 eyebrow、Section 编号和通用 Evidence Panel。

### 5.3 Solutions 与 AI CISO



- Hero 使用左右双区：左侧只保留 H1、说明、CTA 与必要边界；右侧使用角色专属安全路径图。
- Solutions Hero 显示统一路由面包屑，不叠加 eyebrow，不显示横向长标题目录。
- Developers、Security Teams、Enterprise、MCP Security 与 AI CISO 分别使用对应角色、任务路径、图标与克制的强调色。
- 正文 Section 不显示 `SOLUTIONS / 01` 类索引小字，只保留 H2、必要说明和单个语义图标。
- 每个 Solutions 子页的 6 个 Section 依次使用：概览网格、纵向任务轨道、浅色证据画布、反向编辑分栏、控制检查板、结论 / FAQ 区。
- 同一子页内禁止重复 Section 构图；相同的 List、Steps、Matrix、Checklist 或 FAQ 组件必须随 Section 位置改变标题位置、内容方向、背景或容器结构。
- Section 1 使用宽标题和双列概览；Section 2 使用左说明、右纵向任务轨道；Section 3 使用浅色证据画布；Section 4 使用内容在左、标题在右的反向分栏；Section 5 使用带边界的控制检查板；Section 6 使用结论 / FAQ 双栏。
- AI CISO 优先体现决策权、证据责任、治理边界和验证路径。
- CTA、Evidence Note、API Note、Section Note 和 Boundary Note 不作为流程节点；必要说明收敛到模块末尾。
- Tablet 将 Hero 和左右正文结构转为单列；Mobile 将流程轨道转为纵向步骤，路径图保持稳定尺寸且不与文案重叠。

### 5.4 Resources



- Resources 包含 Docs 与 Blog 两种阅读任务。
- Docs 分为 Quickstart 与 API Reference；Blog 保留列表、分类、搜索和文章阅读布局。
- 两类页面共用 Header 与导航激活态，正文布局保持各自节奏。

### 5.5 Pricing



- 使用评估路径、能力对照和商业确认状态支持购买决策。
- Hero 提供 Local Evaluation、Team Requirements、Enterprise Review 三条评估路径。
- 未确认的价格、额度、席位、服务和权益必须显示待确认状态。
- 正文优先使用矩阵和三列以内的可比较对象。

### 5.6 Security



- Security 只有 `/security` 一个页面，顶部与移动导航均使用单入口。
- 使用安全证据台账、控制编号和边界状态支持信任判断。
- Hero 强调已记录控制、数据处理边界和残余风险。
- 正文使用纵向证据列表、矩阵与边界说明，避免复用 Pricing 的计划卡片。

### 5.7 Contact



- 使用简洁的请求分流与提交路径。
- 保留购买与信任决策语境，降低装饰和内容密度。

### 5.8 Docs



- `#docs` 是 Quickstart，内容顺序为安装连接、本地安装、策略模式、测试动作、事件验证和 FAQ。
- `#docs/api` 是 API Reference，内容顺序为认证、基础 URL、运行时防护、扫描端点、报告、状态、限流和错误码。
- Quickstart 使用 920px 以内的单列步骤流，步骤编号与正文分栏，Mobile 转为单列。
- API Reference 在 Desktop 使用 272px 固定目录和右侧正文；Tablet/Mobile 将目录转为顶部横向滚动栏。
- API 目录使用按钮滚动到对应内容，不修改站点 Hash 路由；滚动时同步当前章节状态。
- Hero 使用实施路径或版本信息作为视觉锚点。
- 命令、端点、参数和结果使用等宽字体。
- 代码块包含复制按钮，并提供复制成功状态。
- 端点使用 GET/POST 标签、路径、认证状态、参数表、请求示例和响应示例。
- 代码必须自动换行或横向滚动，不得撑破页面。
- 参数表在窄屏使用局部横向滚动，页面本身不得产生横向滚动。
- 实施步骤使用顺序结构，避免卡片化。
- 内容结构参考当前官方 `www.agentguard.one/docs`、`/docs/quickstart` 与 `/docs/api`；视觉继续遵循本设计系统。
- API Reference 中的计划名、额度和商业可用性属于当前官方文档证据，发布前仍需产品与销售复核。

### 5.9 Company 与 Legal



- 使用窄栏编辑式排版。
- About 可以保留品牌表达；Privacy 和 Terms 以可读性为优先。
- 大段正文避免卡片和背景装饰。
- 底部 CTA 指向 Security 或 Contact，文案符合当前页面语境。

### 5.10 Learning



适用于 Guides 与 Glossary。



- Desktop 使用阅读目录侧栏。
- 定义、步骤、Checklist、关联概念和证据来源采用文章式结构。
- Glossary 的字母索引只展示已发布且可访问的条目。
- 定义页面需要明确概念边界，不能默认映射为 AgentGuard 产品能力。

### 5.11 Evaluation



适用于 Best、Review、Compare。



- 使用评估标准、证据状态、对比矩阵和 POC 路径。
- 对比条件必须对等。
- 未核实信息显示 Unknown 或待验证状态。
- 厂商自有内容需要明确披露来源立场。

## 6. 内容组件



### 6.1 选择规则



| 内容类型 | 组件 |
|-|-|
| 问题与答案 | 原生 `details` FAQ |
| 有先后顺序的流程 | Step List |
| 验收或验证事项 | Checklist |
| 命令、端点、代码 | Command Stack / Code Window |
| 对比、映射、责任矩阵 | Matrix |
| 术语、证据、长文本 | Detail List |
| 独立且可比较的对象 | Card |
| 缺少批准正文 | Content Status |



卡片只有在内容本身是独立对象或交互入口时使用。



### 6.2 按钮



- 最小高度 44px。
- Primary：蓝色实体，承载当前视图唯一主行动。
- Secondary：深色表面和边框。
- Ghost：无背景，使用青色文字。
- 图标优先使用 Lucide。
- 熟悉的工具动作优先使用图标，并提供 Tooltip 或可访问名称。
- Hover、Focus、Active、Disabled 状态必须完整。
- 按钮文案使用明确命令，例如 `Open Quickstart`、`Book a Demo`。

### 6.3 Evidence Panel



- 用于 Hero 中展示控制面、工作流、证据或阅读索引。
- 包含标题栏、状态、编号和最多四条主要信息。
- 状态文字与颜色同时出现。
- 不承担长正文。
- Homepage Runtime Decisions + Workflow 使用参考稿中的横向宽面板，内部仍按 Request → Evaluate → Handle 纵向排列三个步骤。
- 四类 Risk Signals 必须置于 Evaluate 节点内部，作为该步骤的判断依据；不得拆成右侧独立面板。
- 四类高风险信号在 Evaluate 节点使用红色 `DETECTED` 状态；Blocked / Allowed 放在 Handle 节点中形成结果对照，正常操作仅保留一条绿色示例。示例不得解释为拦截率、准确率或真实流量比例。

### 6.4 Module Index



- Features、Solutions、Pricing、Security、Contact：横向目录。
- Docs、Company、Learning、Evaluation：Desktop 侧栏。
- Mobile：全部转为横向滚动。
- 点击后锚定当前页面模块。

### 6.5 Breadcrumb



- Homepage 不显示面包屑；所有其他页面按信息架构显示完整路由层级。
- `AgentGuard` 返回 Homepage；存在真实页面的中间层可点击，纯信息架构分组使用文本。
- 当前页使用 `aria-current="page"`；Desktop 与 Mobile 均允许自然换行，不截断页面名称。

### 6.6 FAQ



- 使用语义化 `details` 和 `summary`。
- 第一项允许默认展开。
- 问题与答案保持一一对应。
- 展开后不应引起横向溢出。

### 6.7 内容状态



缺少批准内容时使用明确状态行：



```Plain Text
CONTENT STATUS
This module requires approved source evidence and publication copy before release.
```



状态行保留 IA 节点，避免空白区和未经确认的补写。



## 7. 图像与图形



- 首屏或产品页需要真实产品界面、终端、控制路径或用户可验证的状态。
- 产品视觉保持清晰、可读、可检查。
- 背景图形使用低对比网格、点阵或线条，并与页面族任务相关；Homepage Hero 仅使用确认稿的白蓝地平线光带。
- Homepage 三层防护卡片使用黑白点阵图形，图形占据稳定的横向矩形区域，不使用彩色插画或通用图标卡片。
- 不使用模糊、过暗、无产品信息的氛围图。
- 不用 SVG 插画替代可以展示的真实产品状态。
- 图片明确宽高或宽高比，避免加载时布局跳动。

## 8. 动效



动效采用 minimal-functional：



```CSS
--duration-press: 120ms;
--duration-ui: 160ms;
--duration-content: 240ms;
--ease-enter: ease-out;
--ease-exit: ease-in;
--ease-move: ease-in-out;
```



- Hover 和 Focus：120-160ms。
- 内容切换：160-240ms。
- 首页不使用自动轮播或常驻装饰动效；安装 Tab 仅在用户操作时切换。
- 只动画 `opacity` 和 `transform`。
- 禁止 `transition: all`。
- 必须支持 `prefers-reduced-motion: reduce`。

## 9. 可访问性



- 正文颜色达到 WCAG AA 4.5:1。
- 大号文字和 UI 边界至少达到 3:1。
- 所有交互元素点击热区至少 44 x 44px。
- 焦点环：2px 青色，外偏移 3px。
- 标题按 H1、H2、H3 顺序组织。
- 图像具有准确的 `alt`。
- 图标按钮具有 `aria-label` 或 Tooltip。
- 页面允许浏览器缩放。
- Mobile 正文字号不低于 16px。
- 颜色不能单独承载状态。

## 10. 设计验收



每个新页面或页面级改动完成后执行以下检查：



### 10.1 设计系统



- [ ] 只使用已定义的字体和颜色。

- [ ] Header、Footer、按钮、边框和交互状态一致。

- [ ] 间距来自 4px 基础刻度。

- [ ] 圆角符合组件层级。

### 10.2 页面任务



- [ ] 页面族选择正确。

- [ ] Hero 构图与同组页面一致，与其他页面族有明显区别。

- [ ] 每个区段只承担一个主要任务。

- [ ] 内容组件与数据语义匹配。

- [ ] 缺少内容时显示状态，不保留无意义空白。

### 10.3 布局



- [ ] Desktop、Tablet、Mobile 均无横向页面溢出。

- [ ] 没有大面积意外空白。

- [ ] 网格、标题、正文和 CTA 对齐。

- [ ] 文本不遮挡相邻内容。

- [ ] 最长单词和按钮文案可以完整显示。

- [ ] 固定格式组件不会因内容变化改变整体尺寸。

### 10.4 交互与质量



- [ ] Logo 返回首页。

- [ ] Resources 中的 All Blog Posts 直接打开 Blog 列表页。

- [ ] 下拉、FAQ、CTA 和移动导航可以操作。

- [ ] Hover、Focus、Active 和 Reduced Motion 正常。

- [ ] 控制台无错误。

- [ ] 所有站内链接保持单个 `index.html` Hash 路由。

## 11. 决策记录



| 日期 | 决策 | 原因 |
|-|-|-|
| 2026-07-30 | 建立统一设计系统 | 为后续按模块逐步完善需求和原型提供固定基线 |
| 2026-07-30 | 页面按 7 类任务布局 | 保持品牌一致，同时避免 Features、Solutions、Docs、Legal 等页面同质化 |
| 2026-07-30 | 保留 Inter 与 IBM Plex Mono | 延续当前原型视觉和技术语境 |
| 2026-07-30 | 卡片按内容语义使用 | 降低模板感，提升长文、步骤、表格和 Checklist 的可读性 |
| 2026-07-30 | 缺少正文的 IA 模块显示内容状态 | 保留信息架构并避免空白或未经确认的产品表述 |
| 2026-07-30 | Blog 收入 Resources 两列下拉 | 将文档资源与内容分类集中管理，同时保留 Blog 分类筛选 |
| 2026-07-30 | Pricing 恢复为顶级入口 | 飞书 IA 将 `/pricing` 定义为独立商业评估页面，位置在 Resources 与 Security 之间 |
| 2026-07-30 | Resources 使用双栏 Mega Menu | 明确区分 Docs 与 Blog 内容组，并提升入口扫描效率 |
| 2026-07-30 | Header 提升为外层固定壳 | 跨 Homepage、Blog 和内容页切换时保持导航结构与位置稳定 |
| 2026-07-30 | 五个顶级模块采用独立页面族 | 通过控制面、工作流、文档工作台、评估路径和证据台账建立模块辨识度 |
| 2026-07-30 | Docs 采用官方信息结构 | 保留 Quickstart 与 API Reference 的任务路径，并使用现有设计系统重新组织视觉与交互 |
| 2026-07-30 | 首页取消 Section 横向分界线 | 减少页面割裂感，通过留白和内容层级形成连续浏览节奏 |
| 2026-07-30 | Section Heading 层级对齐页面 IA | IA 定义的模块标题固定使用 H2，Eyebrow 仅保留语境标签 |
| 2026-07-30 | Runtime Decisions + Workflow 对齐页面 IA | 恢复 Decision Flow、四类 Risk Signal 和三步 Workflow Context，Blocked / Allowed 仅作为结果状态 |
| 2026-07-31 | Security 改为顶级单页入口 | 飞书 IA 仅定义 `/security`，不显示下拉菜单 |
| 2026-07-30 | Runtime 流程收敛为单一路径 | Risk Signals 并入 Evaluate 节点，按 Request → Evaluate → Handle 呈现，移除重复 Workflow Context 面板 |
| 2026-07-30 | Product Tour + Real Agent Workflows 对齐页面 IA | Product Tour 固定在上，三张角色 Use Case 固定在下 |
| 2026-07-30 | Solutions 使用角色路径图与五类语义构图 | 减少 eyebrow、索引小字和重复表格，提升任务扫描效率与页面完成度 |
| 2026-07-30 | Solutions 子页固定六段视觉节奏 | 保证每个 Section 构图不同，同时保持页面族和内容语义一致 |
| 2026-07-31 | Red-Team 使用攻击验证与 Findings 闭环 | 对齐 AI Agent dry-run 红队验证、修复和复测流程，同时避免复用其他 Feature 页的表格布局 |
| 2026-07-31 | Govern 使用统一控制面、事件时间线与审批审计布局 | 对齐 AI agent observability、monitoring 与 deny-first 治理任务，并与 Red-Team 的攻击验证语言区分 |
| 2026-08-03 | 首页按确认稿重建为深海军蓝安全界面 | 使用居中 Hero、地平线光带、安装终端、四列风险、运行时决策流程和冷白三层防护形成统一视觉基线 |
| 2026-08-04 | 非首页页面统一采用 Deep-space / Security Interface 令牌 | 页面族保留差异化构图，Features 使用技术控制面，Solutions 使用角色路径，Pricing 使用评估状态，Security 使用证据台账，Docs 使用实施工作台，长内容页面使用编辑式排版 |
| 2026-08-04 | `Desktop - 1.svg` 设为首页最高视觉基准 | 首页严格采用源文件的 1440px 构图、`#010118` 背景、地平线图像、标题尺度、安装终端、数据指标、三层防护、检测器与工作流节奏；源文件尾部无内容留白不纳入页面高度 |
| 2026-08-04 | 标题字体与渐变按 SVG 参数重建 | Display 使用 Space Grotesk 400，正文使用 Inter；Homepage H1/H2 使用 SVG 对应线性渐变，Hero 光效按 `x=-3, y=48, 1447×1447` 对齐 |
| 2026-08-04 | 首页补齐 SVG 后半段四个模块 | First-Party Advisories、五档 Protection Level、FAQ 和 Bottom CTA 采用 `Desktop - 1 (2).svg` 的 1440px 坐标、尺寸、背景与交互结构 |