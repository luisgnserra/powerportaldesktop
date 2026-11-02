# 刷新分析

<!-- language-selector -->
[🇺🇸 English](../REFRESH-ANALYSIS.md) · [🇧🇷 Português](../pt-BR/REFRESH-ANALYSIS.md) · [🇪🇸 Español](../es/REFRESH-ANALYSIS.md) · [🇨🇳 简体中文](REFRESH-ANALYSIS.md) · [🇫🇷 Français](../fr/REFRESH-ANALYSIS.md) · [🇯🇵 日本語](../ja/REFRESH-ANALYSIS.md) · [🇮🇳 हिन्दी](../hi/REFRESH-ANALYSIS.md) · [🇸🇦 العربية](../ar/REFRESH-ANALYSIS.md)
<!-- /language-selector -->

**1.8.5 — 修复原生刷新测量**

刷新分析现可识别 Power BI Desktop 使用的原生 XML Refresh 命令，包括 Batch 内的 Refresh，并继续支持 XMLA Process 和 TMSL refresh。此前刷新可能已执行，但进度被当作无关事件丢弃，导致测量表数为 0、行数不可用及 refreshCompletionNotProven。可选 Error 字段缺失时，现接受引擎明确的成功结果；非零错误码和 XMLA 错误仍优先。进度仍须精确关联请求或活动，以排除无关视觉查询。

识别到第一个刷新命令前，界面会提示正在等待 Power BI 刷新事件。无法确认完成时，显示翻译后的说明而非仅技术代码。请更新应用，连接正确的 PBIX，再次运行刷新并分析；旧的不完整报告将保留，不会被改为成功。打包应用已通过用户授权的真实刷新端到端验证，覆盖表活动、行数、自动完成和重载后保留的历史记录。文档截图仍为合成示例，不含用户数据或模型名称。

![刷新分析](../images/zh-CN/refresh-analysis.png)

<a name="start-and-safety"></a>
## 开始与安全

连接正确的 PBIX，打开刷新分析并选择刷新并分析，确认文件名。跟踪先于调用原生“主页 > 刷新”按钮启动，不会通过 TOM 逐表刷新。保持 Power BI 打开，并在其中处理凭据、错误或取消操作。BIM 备份无法还原已刷新的数据。

原生刷新会查询数据源并替换导入的数据。请保存 PBIX 副本。在 Power BI 中处理凭据和错误；跟踪不会取消刷新，也不包含所有 Power Query 辅助查询。

<a name="interpret-the-measurements"></a>
## 解读测量结果

观测活动耗时是准确映射到每个表的引擎时间区间的并集，避免重复计算嵌套阶段。它不是纯数据源查询时间，也不能证明关键路径。观测总耗时从调用到检测完成，包括界面和轮询开销，不含之后的行数统计。未识别所属表的事件单独报告。

耗时表示观测到的引擎活动，而非每个 M 查询的独占耗时。请勿累加并行任务。不提供未加载查询、M 步骤及各查询的 CPU/内存使用情况。

自动完成需要观测到刷新命令结束且 Power BI 窗口就绪。请关闭原生结果对话框。手动结束捕获始终标记为不完整，不能证明成功，也不会取消刷新。引擎和跟踪错误会明确显示。中断的捕获不会被标记为已完成。

<a name="history-and-export"></a>
## 历史记录与导出

行数在捕获后计数，不计入计时。不查询 DirectQuery/DirectLake。缺少事件不代表耗时为零。每个模型在本机保留最多 30 次分析，不发送至门户。

选择已保存的执行及比较对象，按相同表名查看时间和行数差异。缓存、源负载、数据量及并行度会影响比较，差异不能证明原因。JSON 用 null 表示不可用值，CSV 留空并防止电子表格公式执行。历史记录保存在本机，使用与关系图相同的模型标识，不保存到 PBIX。标识完全相同的文件可能共用历史，请核对模型。导出包含名称及行数，共享前请审查。

<!-- refresh-correlation -->
仅测量通过精确 RequestID/ActivityID 与活动刷新命令相关联的引擎进度，排除无关的视觉对象查询。某些 Power BI 版本可能不提供这些标识：即使刷新已执行，表耗时仍可能不可用。

<a name="native-launch-and-recovery"></a>
## 原生启动与恢复

刷新分析现位于侧边菜单和首页图库中关系图的正下方。原生按钮查找会忽略 DAX 查询视图和 TMDL 视图中重复的 Home 选项卡，避免“Ambiguous Power BI control: home”错误。如果找不到控件，请在 Power BI 中选择报表、数据或模型视图。

确认、验证和跟踪启动期间，刷新按钮保持禁用；捕获就绪前隐藏结束捕获按钮。这可避免重复启动误报“Finish the active Power BI operation before refreshing”。确认发生在原生调用之前的失败会停止跟踪、检查清理结果并允许重试。如果调用可能已发生，错误仍然显示，捕获保持待处理：请检查 Power BI，完成刷新并关闭对话框后再结束捕获。重复请求只会恢复现有捕获，不会再次刷新。真正进行中的 Power BI 操作仍须先完成。
