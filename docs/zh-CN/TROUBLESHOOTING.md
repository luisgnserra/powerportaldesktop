# 故障排除与支持

<!-- language-selector -->
[🇺🇸 English](../TROUBLESHOOTING.md) · [🇧🇷 Português](../pt-BR/TROUBLESHOOTING.md) · [🇪🇸 Español](../es/TROUBLESHOOTING.md) · [🇨🇳 简体中文](TROUBLESHOOTING.md) · [🇫🇷 Français](../fr/TROUBLESHOOTING.md) · [🇯🇵 日本語](../ja/TROUBLESHOOTING.md) · [🇮🇳 हिन्दी](../hi/TROUBLESHOOTING.md) · [🇸🇦 العربية](../ar/TROUBLESHOOTING.md)
<!-- /language-selector -->

[返回主页](../../README.zh-CN.md)

| 问题 | 建议操作 |
|---|---|
| 外部工具中没有 Power Portal | 以管理员身份完成安装，关闭/重新打开 Desktop，并检查[注册位置](CONFIGURATION.md#external-tools-registration)。重新运行官方安装程序进行修复。 |
| 完全没有外部工具功能区 | 与 IT 核对 Power BI Desktop 的版本/版本类型。本软件包面向支持外部工具的 Desktop，不适用于 Service 或 Report Server。 |
| 外部工具不再打开 | 重启 Desktop；已安装的可执行文件可能被移动或阻止。重新安装以修复路径。不要手动删除注册参数开头的 `--`。 |
| 未加载模型 / 连接失败 | 在 Desktop 中打开 PBIX 并从外部工具启动，或选择**查找已打开的模型**。Desktop 重启后需重新连接；旧的本地端口会失效。 |
| 文件名错误 / 多个模型 | 明确选择目标已打开模型，并在写入前核对确认目标。窗口标题可能省略完整路径。 |
| 原始 PBIX 导入失败 | 在 Power BI 中打开 PBIX 并本地连接。受支持的只读文件导入请使用 BIM/PBIP/TMDL/ZIP。 |
| 主题对话框仍然出现 | 这是预期行为：Desktop 主题导入使用可见的 UI 自动化。本版本没有受支持的无对话框通用主题 API。 |
| 主题自动化失败 | 保留生成的 JSON，检查目标窗口，导入时避免交互，并通过 Power BI 主题菜单手动导入。报告确切错误及 Desktop 版本，不要上传 PBIX。 |
| 现有主题没有随模型加载 | 在 Desktop 中保存当前主题 JSON，再导入主题生成器。TOM 无法读取报表主题。 |
| 已有 HTML 度量值，但没有视觉对象 | 手动添加兼容的 HTML 视觉对象并分配度量值。 |
| 日历尚无数据行 | 在 Desktop 中刷新模型，然后重新读取。检查 DAX/日期范围。 |
| 日历撤销被拒绝 | 表已改变或存在依赖项。不要强制删除；使用已保存的 PBIX 副本，或就元数据备份寻求帮助。 |
| 重新安装后语言仍未改变 | 现有用户保存的选择优先于安装默认值。请更改侧栏旗帜。 |
| 默认语言配置无效 | 关闭应用，由管理员将 `powerportal-defaults.json` 修正为有效的 UTF-8 JSON，并使用受支持的代码。 |
| PowerShell 脚本被阻止 | 审查脚本并遵循组织执行策略。也可改用 EXE 向导。不要禁用企业控件。 |
| `-Silent` 要求管理员 PowerShell | 关闭当前终端，以**管理员身份运行** PowerShell，然后重试。 |
| SHA-256 不匹配 | **不要运行该文件。**删除/移走无效下载，重新获取官方附件，并与已发布校验和比较。 |
| GitHub 下载失败 | 检查网络、代理/防火墙限制及 Release URL。IT 可通过获准渠道分发已验证的 EXE。 |
| PowerShell 报告底层连接/TLS 发送错误 | 在 Windows PowerShell 中获取辅助脚本前，先使用文档中的 TLS 1.2 命令行，再重试。原生应用更新程序已独立使用 HTTPS/TLS。 |
| SmartScreen/未知发布者 | 1.8.1 未签名。验证校验和及发布者来源；设备禁止未签名程序时请咨询 IT。 |
| 关系编辑器为只读 | 导入项目仅允许视觉组织。连接到实时本地 Power BI 模型后才能创建/编辑/删除关系。 |
| 关系在读取后发生改变 | 重新读取 Power BI 模型并审查更新后的关系。为避免覆盖其他更改，过期编辑会被拒绝。 |
| 重复关系或第二条活动关系 | 使用不同的列对，或在激活另一条关系前，停用这些表之间当前的活动关系。 |
| 关系类型/唯一性/歧义错误 | 匹配列的数据类型，在 Desktop 中检查键及筛选路径。TOM/Power BI 负责验证模型；不要绕过错误。 |
| 关系图保存失败 | 检查应用配置目录下的磁盘空间和写入权限，然后使用“重试保存”。必要时导出独立 JSON 副本。 |
| 重命名/复制 PBIX 后关系图不同 | 配置使用窗口/文件名及表沿袭标记；名称/标识可能在副本之间变化或冲突。将导出的布局导入目标模型。 |
| 启动时不检查更新 | 1.6.1 及更早版本需要先手动升级一次到 1.6.2。开发/源码运行有意不更新。 |
| 更新检查失败/离线/HTTP 403 或 429 | 本地工具仍可使用。检查互联网/代理/防火墙，并重试**检查更新**。GitHub API 可能有速率限制。 |
| 立即更新的校验和或大小验证失败 | 安装程序未执行。重试或手动下载官方 Release；不要运行损坏的缓存文件。 |
| Windows 授权被取消 | Power Portal 仍可使用。准备好批准 UAC 时重试**立即更新**，或向 IT 请求安装权限。 |
| 活动模型操作阻止更新 | 等待已确认的写入/主题操作完成，再重试。更新前保存/导出尚未发送的编辑内容。 |
| 没有启动连接提示 | 检测需要已打开的本地语义模型，只有 Desktop 欢迎屏幕不够。打开 PBIX 后使用**查找已打开的模型**。如果检测失败，检查显示的错误并重新连接。 |
| 安装程序无法关闭运行中的应用 | 保存工作，手动关闭 Power Portal 并重试。仅针对确切的已安装可执行文件；Power BI 不会关闭。 |
| 电子邮件按钮无反应 | 配置默认邮件客户端、使用**复制电子邮件**，或手动向下方地址发送邮件。 |
| 在线 TV 报表无法登录/加载 | 核对 Microsoft 帐户、报表权限、许可证、嵌入限制及互联网连接。离线 TV 请使用本地图片。 |

<a name="contact-support"></a>
## 联系支持

发送电子邮件至 **[contato@consultoriaexcelencia.com.br](mailto:contato@consultoriaexcelencia.com.br)**，或[通过 WhatsApp 联系 Excelência](https://api.whatsapp.com/send/?phone=5535998532286&text&type=phone_number&app_absent=0)。

请提供：

- Power Portal 版本（本次发布为 1.8.1）。
- Windows 版本及 Power BI Desktop 版本/版本类型。
- 安装方式（向导或 PowerShell）。
- 重现步骤和界面显示的确切错误。
- 当时打开了一个还是多个模型。

**绝不要在公开问题中发布 PBIX/BIM 文件、数据源连接详情、凭据、机密数据或未经脱敏的备份/更改日志。**截图也可能暴露名称或数据；共享前请遮蔽敏感内容。

部署及机密事项请使用支持邮箱，而非公开问题。
