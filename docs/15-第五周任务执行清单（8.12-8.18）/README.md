<!--
Source: https://acntglrfp7bm.feishu.cn/wiki/XdhXwCpTPiRofgkwLh1crwOznvf
Feishu document id: GpjudcxEGowZbGx6lTocEmLsnFd
Revision: 151
Exported at: 2026-08-15T13:31:06Z
-->
# 第五周任务执行清单（8.12-8.18）

<sheet sheet-id="ffFpIK" token="CiUasdUn7hYd2CtRU8sc83O5nGc"></sheet>



## 💡外链域名筛选流程：

### **1.竞品域名导出与合并去重**

- **批量导出：** 在 Ahrefs / Semrush 中直接导出 5\~10 家核心竞品的 **Referring Domains** 列表。(**语言选英语**）
- **合并去重：** 将所有 CSV 表格合并到一个 Excel/Google Sheet 中，按域名进行**一键去重**。
- **统计频次：** 记录每个域名被几家竞品同时引用（例如：被 3 家竞品同时引用的域名，开发价值更高）。



### **2.数据门槛硬性过滤**

在表格中直接用筛选器（Filter）剔除不达标站点，快速精简 70% 的数据：

- **Organic Traffic (月流量)：** **≥ 500/月**（直接过滤无收录的垃圾站与死站）。
- **Domain Rating / AS (权重)：** **DR ≥ 20**（新站不宜盲目追求 DR 80+，中等权重成功率更高）。



### **3.AI 自动化相关性与场景分类**

将筛选后的域名清单批量输入 AI（如 ChatGPT / Claude / DeepSeek）：

- **AI Prompt 提示词指令：**

> - "请根据以下网站的域名和你能在互联网上检索到的信息，判断网站是否与 [AI Agent Security] 强相关（输出：高 / 中 / 低）

- **过滤规则：** 直接剔除 AI 判定为 **“低相关”** 的站点。
- **人工抽查：** 人工只需对 AI 标记为 **“高相关”** 的前 10%\~20% 站点进行随机抽查，确认 AI 判定逻辑基本准确即可。



### **4.优先级分层与邮箱爬取**

根据 **“被竞品引用频次 + AI 相关度 + DR/流量”** 将清洗后的域名打分分级：

- **Tier 1 (高优先)：** 被 ≥2 家竞品引用 + AI 标记高相关 + DR 30+。
- **Tier 2 (次优先)：** 单个竞品引用 + AI 标记中/高相关 + DR 20+。
- **批量找邮箱：** 用自动化程序批量抓取 Tier 1/2 站点的联系邮箱（要抽查爬取的邮箱是否准确）