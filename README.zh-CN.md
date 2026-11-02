# Power Portal Desktop

<!-- language-selector -->
[🇺🇸 English](README.md) · [🇧🇷 Português](README.pt-BR.md) · [🇪🇸 Español](README.es.md) · [🇨🇳 简体中文](README.zh-CN.md) · [🇫🇷 Français](README.fr.md) · [🇯🇵 日本語](README.ja.md) · [🇮🇳 हिन्दी](README.hi.md) · [🇸🇦 العربية](README.ar.md)
<!-- /language-selector -->

**1.8.8 — 动态关系连线和经验证的主题发送**

在关系图中，“线条样式”可切换曲线或仅含 90 度转角的直线。端点根据表格位置及卡片实际大小，动态连接相对的上/下或左/右边缘；侧面连接保留关联列的高度。白边黑色箭头沿直线段显示，不再斜跨转角。样式自动保存并包含在导出的图表 JSON 中；旧布局仍使用曲线。这不会改变 Power BI 原生布局，也不执行全局避障。

直接发送主题到 Power BI 会在原生导入后及导出验证期间将焦点返回 Power Portal，且仅在 Power BI 位于前台时执行。验证主题后显示 Power BI；发生错误时也显示所选窗口供检查。原生对话框可能短暂出现，且不会被隐藏：Desktop 没有受支持的无对话框主题 API。确认主题前会处理导入后异步切换的功能区选项卡。经过授权的打包应用实机测试验证了导入/导出、Portal 焦点恢复及最终 Power BI 激活，随后恢复原来的默认主题，未保存 PBIX。文档截图均使用合成数据。

**1.8.7 — 更清晰可靠的主题颜色选择**

主题的全部十一种颜色现在都有可见的原生色块，以及位于可编辑 HEX 输入框旁的“选择颜色”按钮。点击色块或按钮，或聚焦按钮后按 Enter/空格即可打开。不再依赖不可见的零尺寸输入框或双击 HEX。手动输入、主题导入、实时预览和 JSON 导出保持可用，打开失败会明确提示。已在 Windows 应用中多次验证原生选择器，并测试十一按钮的鼠标和键盘操作及八种语言。

菜单、首页、工具标题及八种语言中的“刷新分析”现更名为“刷新性能”。仅修改名称：原生刷新、实时进度、计时、行数、本地历史和 JSON/CSV 兼容性均不变。已保存的分析仍可使用，无需迁移或再次刷新。图片使用合成数据。

**1.8.6 — 在 Power Portal 中查看刷新进度**

在 Power Portal 中启动刷新性能，通过实时卡片查看每个表、观测状态、引擎阶段、活动时间以及最近可用的 Power BI 原生进度文字。启动后 Power Portal 会恢复焦点；如果 Power BI 再次进入前台，原生刷新完成后会再返回一次。不会反复抢占其他应用的焦点。“在 Power BI 中查看”打开选定文件而不重复刷新；选择后将禁用本次捕获的自动返回。

刷新仍由 Power BI 执行。其窗口可能短暂出现；这不是受支持的无界面 PBIX 处理 API。凭据、错误和取消操作仍在 Power BI 中处理，不会自动隐藏或关闭对话框。原生文字保持 Power BI 的语言，并显示最近读取时间。无法读取时明确提示，引擎跟踪仍可继续。阶段结束不代表表已完成，不虚构百分比，最终行数在捕获后统计。历史记录和 JSON 包含观测到的原生状态，分享前请检查导出文件。已使用授权的真实刷新验证打包应用：4/4 个表有计时、4/4 个行数、实时原生状态、焦点返回、查看按钮及重新加载后保留的历史记录。不会自动保存 PBIX，文档图片均使用合成数据。

**1.8.5 — 修复原生刷新测量**

刷新性能现可识别 Power BI Desktop 使用的原生 XML Refresh 命令，包括 Batch 内的 Refresh，并继续支持 XMLA Process 和 TMSL refresh。此前刷新可能已执行，但进度被当作无关事件丢弃，导致测量表数为 0、行数不可用及 refreshCompletionNotProven。可选 Error 字段缺失时，现接受引擎明确的成功结果；非零错误码和 XMLA 错误仍优先。进度仍须精确关联请求或活动，以排除无关视觉查询。

识别到第一个刷新命令前，界面会提示正在等待 Power BI 刷新事件。无法确认完成时，显示翻译后的说明而非仅技术代码。请更新应用，连接正确的 PBIX，再次运行刷新并分析；旧的不完整报告将保留，不会被改为成功。打包应用已通过用户授权的真实刷新端到端验证，覆盖表活动、行数、自动完成和重载后保留的历史记录。文档截图仍为合成示例，不含用户数据或模型名称。

**1.8.5 — 通过浏览器下载更新**

发现新版本时，更新通知现在会在立即更新旁提供在浏览器中下载。它使用默认浏览器打开检测到的官方 GitHub 安装程序地址，不会关闭 Power Portal 或开始安装。准备好后请手动运行下载的安装程序。自动更新出错后此选项仍然可用，浏览器启动失败会明确显示。立即更新仍会在应用内下载、验证 SHA-256 和大小，然后请求 Windows 授权。浏览器下载不会经过应用的自动校验：运行安装程序前请比较已发布的 SHA-256。两个按钮和提示均已翻译为八种语言。

**1.8.5 — 平滑的主题预览**

主题生成器的折线图现使用平滑三次曲线代替直线段，适用于示例数据和已连接模型的数据。曲线经过原始数据点，不会在数值之间产生额外峰值，并保留颜色、标记和提示。此更改仅影响预览：导出的主题 JSON 和现有 Power BI 视觉对象的线条格式保持不变。

**一个 Windows 应用，集成十二款 Power BI Desktop 工具。**

Power Portal Desktop 归 **Excelência Consultoria e Educação** 所有。安装后，它会出现在 Power BI Desktop 的**外部工具**功能区中，并像其他外部建模工具一样打开独立的应用窗口。

这是一个**仅用于分发的仓库**，提供安装程序、安装辅助脚本、校验和及文档。**此处不发布 Power Portal 应用的任何源代码。**

每次启动应用后首次打开图表时会显示分组介绍。点击**如何使用分组整理**可重新打开。SAP 和 Excel 仅为系统示例，不是新增连接器或官方徽标。空组显示为放置区域。放入高亮组会分配表；在组外松开则保留当前分组。

此图表会在当前计算机上为同一模型自动保存：包括组、图片、颜色和位置。导出 JSON 可保留副本或稍后导入。请确认图表已保存的消息。

关系箭头现在直接位于曲线上，并按曲线局部方向旋转，包括对角线和反向连接。 更大的 SVG 箭头为 36 × 26 单位，始终为黑色并带有 3 单位白色轮廓，不受关系线颜色影响。 单向筛选仍从目标表传播到源表；双向筛选显示两个相反箭头。自动筛选保留问号标记。此更新仅更改显示效果。

Power Portal 动画页眉现已包含文件名、连接状态以及五个读取、导入、查找和更新按钮。已移除横幅下方的独立工具栏，以释放工作空间。在较小窗口和全部八种语言（包括阿拉伯语）中，内容会在页眉内自动换行。连接确认、通知和更新行为保持不变。

关系图现在紧接在侧栏和主页图库中的 TV Tool 之后。 日历生成器和组件库不再显示通用的真实模型数据块。工具自身的读取和写入控件保持可用；真实日期范围按钮使用工具内所选的日历表。 主页封面已重新绘制为不含内嵌文字的本地矢量插图。标题、说明和操作位于图片之外，并随所选语言切换。 将源列拖到另一张表即可打开真实关系对话框并选择目标列。放到列上会预选该列。检查基数、筛选方向和活动状态，再验证并应用；写入需要原生确认和 BIM 备份。

**1.8.5 — 刷新启动修复**

刷新性能现位于侧边菜单和首页图库中关系图的正下方。原生按钮查找会忽略 DAX 查询视图和 TMDL 视图中重复的 Home 选项卡，避免“Ambiguous Power BI control: home”错误。如果找不到控件，请在 Power BI 中选择报表、数据或模型视图。

<a name="download-and-install"></a>
## 下载与安装

<a name="option-1-install-with-a-few-clicks"></a>
### 方式一：点击几次即可安装

1. [下载适用于 Windows x64 的 Power Portal Desktop 1.8.8](https://github.com/luisgnserra/powerportaldesktop/releases/download/v1.8.8/PowerPortal-Setup-1.8.8-x64.exe)。
2. 运行安装程序，并批准 Windows 管理员权限提示。
3. 选择安装文件夹和默认语言。
4. 完成安装后，关闭并重新打开 Power BI Desktop。
5. 打开一个 PBIX，选择**外部工具 > Power Portal**。

**Windows 可能提示发布者未知：**1.8.8 版本尚未进行数字签名。只有在信任此分发来源时才继续。如果组织禁止未签名的软件，请联系 IT 部门，不要绕过其政策。

[最新版本](https://github.com/luisgnserra/powerportaldesktop/releases/latest) · [安装指南](docs/zh-CN/INSTALLATION.md) · [配置](docs/zh-CN/CONFIGURATION.md) · [故障排除](docs/zh-CN/TROUBLESHOOTING.md)

<a name="launch-from-power-bis-external-tools-ribbon"></a>
### 从 Power BI 的外部工具功能区启动

安装程序会将 **Power Portal** 添加到 Power BI Desktop 的**外部工具**中。打开 PBIX 后点击该图标，即可启动配套应用，并自动读取该文件的本地模型。

![Power Portal 已安装在 Power BI Desktop 的外部工具功能区中](docs/images/powerbi-external-tools.png)

此功能区截图的原始界面为葡萄牙语：**Ferramentas externas** 表示**外部工具**。Power Portal 打开的是**连接到 Power BI 的独立窗口**，不是嵌入式报表视觉对象，也不是 Power BI 内部的新窗格。

![Power Portal 1.8.8 主页、完整侧栏及启动连接提示](docs/images/zh-CN/home.png)

**Power BI 已经打开？**从快捷方式启动时，Power Portal 会检测已打开的本地模型并显示连接提示。选择**查找已打开的模型**，选中您的文件并连接。之后即可查询数据，并在确认后将支持的更改发送回模型。

连接后，状态会汇总显示在页眉中，不再占用独立的横幅。

[在图解指南中查看全部十二款工具、连接界面及直接操作 Power BI 的功能](docs/zh-CN/SCREENSHOTS.md)。

<a name="new-relationship-map"></a>
### 新功能：关系图

在可自由拖动的画布中理解真实的表关系。使用颜色、图标和友好名称来组织事实表、维度表以及自定义业务分组；布局自动保存，并支持导出和导入 JSON。

![包含 Facts 和 Dimensions 分组及真实关系编辑功能的关系图](docs/images/zh-CN/relationship-map.png)

在**确认并备份元数据后**，可在连接的 Power BI 模型中创建、编辑、激活/停用及删除关系。视觉样式仅保存在 Power Portal 中，不会重命名表，也不会修改 Power BI 的原生布局。[完整关系教程](docs/zh-CN/RELATIONSHIPS.md)。

在 1.8.8 中，可点击或拖动准确的列来准备关系；右键单击关系线可设置颜色、编辑或在确认后删除。分组支持本地图片和 30 多种图标。自动日期/时间表默认隐藏，并可切换可见性。在 Power BI 外部编辑后刷新关系图，或在事先备份后调用 Desktop 原生自动检测，并通过单独的复查/完成步骤结束。

<a name="built-in-update-checks"></a>
### 内置更新检查

从 **1.6.2** 起，已安装的应用会在打开时检查最新的官方 GitHub Release。如果存在较新的稳定版本，就会显示**立即更新**。1.6.4 中的横幅更加醒目，具有动画效果，滚动时始终可见，并遵循减少动态效果的偏好。不再持续显示“已是最新版本”一行。点击后会下载安装程序、验证 SHA-256 和大小，并自动启动安装程序。

Windows 会请求管理员授权。只有 Power Portal 会关闭，Power BI 仍保持打开。请先保存或导出尚未发送的工具编辑内容。下载失败或授权被取消时，会明确显示错误并提供重试选项。

![新版本通知和立即更新按钮](docs/images/zh-CN/update-available.png)

截图使用**模拟的未来 1.8.8 通知**来展示界面，并非宣布该版本已发布。**1.8.8 现已发布：**使用 1.6.2 或更新版本的用户可以重新打开应用，或点击**检查更新**来获取更新。[更新指南](docs/zh-CN/UPDATES.md)。

**仍在使用 1.6.1 或更早版本？请先手动安装一次 1.6.2**，以启用此功能。检查失败或离线后，也可使用**检查更新**重试。更新程序绝不会仅因您打开应用就执行安装。

<a name="option-2-install-from-powershell"></a>
### 方式二：通过 PowerShell 安装

在 Windows 上打开 **Windows PowerShell 5.1 或 PowerShell 7**：

```powershell
$script = Join-Path $env:TEMP 'Install-PowerPortal.ps1'
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/luisgnserra/powerportaldesktop/v1.8.8/install.ps1' -OutFile $script
# Review the downloaded script before running it.
Get-Content -LiteralPath $script
& $script
```

此辅助脚本下载 **1.8.8 版本**，验证其固定的 SHA-256 校验和，然后打开同一个安装程序。它不会安装 Node.js、PHP 或 .NET SDK，也不会进行任何构建。

如需无人值守安装，请在**管理员 PowerShell 窗口**中运行同一个辅助脚本：

```powershell
& "$env:TEMP\Install-PowerPortal.ps1" -Silent
```

如需仅下载并验证校验和，而不安装：

```powershell
& "$env:TEMP\Install-PowerPortal.ps1" -DownloadOnly
```

如果脚本执行被阻止，请遵循组织政策，或使用可执行安装程序。参阅[完整命令行说明](docs/zh-CN/INSTALLATION.md#command-line-installation)。

<a name="requirements"></a>
## 系统要求

- Windows 10 或 11，**x64**。
- 支持外部工具的 Power BI Desktop。此安装包不适用于 Power BI Service、macOS、Windows ARM64 或 Power BI Report Server。
- 具有安装并注册外部工具的管理员权限。
- 下载安装程序需要互联网；本地工具和内置预览可离线使用。
- TV Tool 中已发布/私有的 Power BI 报表需要互联网，以及相应的 Microsoft 帐户、许可证和权限。

桌面应用已包含所需的运行时组件，无需开发工具。

<a name="included-tools"></a>
## 内含工具

| 工具 | 功能 |
|---|---|
| 主题生成器 | 醒目的 JSON 导入入口、本地实时预览、JSON 导出，以及页面底部需确认的直接发送功能。 |
| TV Tool | 在浏览器中打开可用的官方示例，展示已发布的报表页面或本地图片，配置时长/切换效果，并导出 HTML。 |
| 日历生成器 | 读取现有日历的元数据和日期，导出脚本，或在确认并备份后创建计算日历表。 |
| 性能检查清单 | 使用门户的检查清单和可用的模型元数据评估报表。 |
| 组件库 | 构建 HTML/DAX 组件，并在连接的模型中创建 HTML 度量值。 |
| 对比度计算器 | 根据 WCAG 阈值检查颜色对比度。 |
| PBIP/PBIR 分析器 | 检查本地项目元数据，提供启发式评分及可用的页面/视觉对象数量。 |
| 模型文档生成器 | 将表、列、度量值和关系导出为 Markdown 或 JSON。 |
| 度量值审计器 | 使用启发式检查审查模型度量值或提供的 DAX。 |
| DAX 格式化器 | 在本地格式化、导出/复制，或在确认后更新连接模型中选中的度量值。 |
| 关系图 | 拖动表框、分组并设置关系线样式、保存视觉布局，并将已确认的关系更改直接应用到 Power BI。 |
| 刷新性能 | 测量原生刷新。 比较耗时和行数。 |

此外还包括主页工具图库、可折叠侧栏（在支持的窗口尺寸下，无需滚动即可看到全部十二款工具）、所有权/开发信息，以及包含两个精选视频的咨询与培训区域。**咨询与培训**位于**关于开发**下方。

<a name="changes-that-interact-directly-with-your-open-power-bi-file"></a>
### 与已打开的 Power BI 文件直接交互的更改

| 操作 | 直接交互 |
|---|---|
| 刷新/读取模型并查询样本 | 读取选中的本地模型，不编辑模型。 |
| 将主题直接发送到 Power BI | 通过可见的 UI 自动化将主题 JSON 导入选中的 Desktop 窗口，需要确认并验证。 |
| 在 Power BI 中创建日历 | 创建新的计算表，需要元数据备份和确认。之后请在 Desktop 中刷新。 |
| 在 Power BI 中创建 HTML 度量值 | 在选中的表中创建度量值，需要备份和确认。请手动放置兼容的 HTML 视觉对象。 |
| 在 Power BI 中更新度量值 | 更新选中度量值的 DAX，需要备份、确认及并发更改检查。 |
| 在 Power BI 中创建/编辑/删除关系 | 更改表列关系、基数、筛选方向和活动状态，需要备份、确认及过期状态检查。 |
| 刷新性能 | 原生刷新会查询数据源并替换导入的数据。请保存 PBIX 副本。在 Power BI 中处理凭据和错误；跟踪不会取消刷新，也不包含所有 Power Query 辅助查询。 |

**仅连接绝不会写入更改。请先保存 PBIX 副本，审查每次确认内容，并在操作后自行保存 PBIX。**[截图与分步示例](docs/zh-CN/SCREENSHOTS.md#direct-interactions-with-the-open-power-bi-file)。

<a name="eight-languages"></a>
## 八种语言

葡萄牙语、英语、西班牙语、简体中文、法语、日语、印地语和阿拉伯语。语言旗帜最多占两行；阿拉伯语采用从右到左的布局。

使用本页顶部的旗帜选择文档语言。所有指南和应用截图均提供这八种语言版本。截图来自实际应用中所选择的界面语言；模型对象名称及 DAX 保持不变。真实的 Power BI 功能区图片在所有指南中均保留葡萄牙语原图，并以所选语言说明。

安装程序会建议使用 Windows 界面语言。用户之后选择的语言会保存在本地，且优先于安装默认值。模型名称、数据及 DAX 不会被翻译。

<a name="important-limits-and-data-safety"></a>
## 重要限制与数据安全

- **更改前请保存 PBIX 副本。**已确认的写入会创建本地元数据备份，但不能替代完整的 PBIX 备份。
- 应用主题使用**可见的 Windows UI 自动化**，且需要确认。目前没有受支持的通用 API 可以向已打开的 Desktop PBIX 写入主题；对话框不会被隐藏。
- TOM 连接到语义模型，而不是当前报表的筛选器、页面或视觉对象布局。HTML 度量值不会自动向报表添加视觉对象。
- 报表分析和度量值审计评分是启发式结果，并非测得的视觉对象性能。
- 本地模型数据不会发送到 Power Portal 网站。更新程序仅请求官方 GitHub 版本元数据/安装程序，绝不请求模型内容。用户主动打开的外部链接、在线演示和 DirectQuery 数据源可能需要网络。
- 文档导出、元数据备份和更改日志可能包含机密模型细节。请妥善存储和共享。

修改模型前，请阅读[使用与安全指南](docs/zh-CN/USAGE.md)。

<a name="consulting-complete-data-solutions-and-training"></a>
## 咨询、完整数据解决方案与培训

Excelência 提供 Power BI 咨询、Microsoft Fabric、数据工程、端到端数据解决方案及**企业内训（In Company）**。

- [通过 WhatsApp 预约沟通](https://api.whatsapp.com/send/?phone=5535998532286&text&type=phone_number&app_absent=0)
- 电子邮件：[contato@consultoriaexcelencia.com.br](mailto:contato@consultoriaexcelencia.com.br)
- [Power BI 企业内训](https://www.consultoriaexcelencia.com.br/educacao/treinamentos-power-bi)
- [精选视频 1](https://www.youtube.com/watch?v=bIxmIaYmt0c)
- [精选视频 2](https://www.youtube.com/watch?v=FNo7F7kh6h4)
- [Excelência 博客](https://consultoriaexcelencia.com.br/blog) · [在线课程](https://ead.consultoriaexcelencia.com.br/)

开发负责人：**Luis Gustavo Nascimento Serra**。
[LinkedIn](https://www.linkedin.com/in/luisgnserra/) · [YouTube：Mais Que Planilhas](https://www.youtube.com/MaisQuePlanilhas)

Microsoft、Power BI 和 Microsoft Fabric 是 Microsoft 的商标。MVP 身份属于个人，不代表 Microsoft 拥有、赞助或认可本应用。

<a name="support-and-distribution"></a>
## 支持与分发

[故障排除与支持](docs/zh-CN/TROUBLESHOOTING.md) · [版本说明](CHANGELOG.zh-CN.md) · [分发声明](DISTRIBUTION.zh-CN.md) · [版本维护](docs/zh-CN/RELEASING.md)

请从 **Release 的 Assets（发布附件）**下载应用。GitHub 自动生成的“Source code” ZIP/TAR 归档仅包含此分发仓库的文档及安装辅助脚本，不包含应用或其源代码。

<a name="refresh-performance"></a>
## 刷新性能

测量原生刷新。 比较耗时和行数。 [刷新性能](docs/zh-CN/REFRESH-ANALYSIS.md).

连接正确的 PBIX，打开刷新性能并选择刷新并分析，确认文件名。跟踪先于调用原生“主页 > 刷新”按钮启动，不会通过 TOM 逐表刷新。保持 Power BI 打开，并在其中处理凭据、错误或取消操作。BIM 备份无法还原已刷新的数据。

自动完成需要观测到刷新命令结束且 Power BI 窗口就绪。请关闭原生结果对话框。手动结束捕获始终标记为不完整，不能证明成功，也不会取消刷新。引擎和跟踪错误会明确显示。中断的捕获不会被标记为已完成。

<a name="animated-home-cards"></a>
## 动态主页卡片

十二张主页卡片采用与侧栏相同的海军蓝底色（#041e43），配以原创无文字矢量场景。每个工具保留专属中心插图，并增加数据面板、图表、数据库、轨道、网格和漂浮元素。信号线缓慢流动。封面不加载外部图片、脚本或服务。

鼠标悬停或键盘聚焦时，会显示金色边框和光晕、扫光、更明亮的插图、圆形打开箭头及金色操作按钮。按下时立即反馈，不延迟导航。Enter/空格仍打开同一工具。系统或浏览器的减少动态效果设置会停止动画，同时保留静态高亮和可见焦点。标题和操作文字位于图像外，随所选语言切换。截图展示普通和悬停静态状态，并非视频。

![鼠标悬停 / 键盘焦点](docs/images/zh-CN/home-hover.png)

