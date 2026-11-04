# 配置

<!-- language-selector -->
[🇺🇸 English](../CONFIGURATION.md) · [🇧🇷 Português](../pt-BR/CONFIGURATION.md) · [🇪🇸 Español](../es/CONFIGURATION.md) · [🇨🇳 简体中文](CONFIGURATION.md) · [🇫🇷 Français](../fr/CONFIGURATION.md) · [🇯🇵 日本語](../ja/CONFIGURATION.md) · [🇮🇳 हिन्दी](../hi/CONFIGURATION.md) · [🇸🇦 العربية](../ar/CONFIGURATION.md)
<!-- /language-selector -->

[返回主页](../../README.zh-CN.md)

<a name="language-and-sidebar-preferences"></a>
## 语言与侧栏偏好

使用侧栏旗帜切换语言。此偏好保存在您的 Windows 用户本地应用配置中，侧栏的折叠/展开状态也会保存。

在支持的窗口尺寸下，全部十二款工具按钮均无需侧栏滚动即可看到。较长的本地化标签最多显示两行，并保留完整的无障碍名称/工具提示。**咨询与培训**位于**关于开发**下方。[展开与折叠截图](SCREENSHOTS.md#home-and-navigation)。

语言优先级：

1. 您在应用中保存的选择。
2. 安装目录中的 `powerportal-defaults.json`。
3. Windows/Electron 系统区域设置；不支持的语言使用英语。

| 代码 | 语言 |
|---|---|
| `pt` | 葡萄牙语（巴西） |
| `en` | 英语 |
| `es` | 西班牙语 |
| `zh` | 普通话 / 简体中文 |
| `fr` | 法语 |
| `ja` | 日语 |
| `hi` | 印地语 |
| `ar` | 阿拉伯语，从右到左 |

安装程序会将以下文件写入所选应用安装文件夹：

```json
{"language":"en"}
```

管理员可以在关闭 Power Portal 后编辑此文件，以更改**新用户配置**的默认值。请保存有效的 UTF-8 JSON，语言代码必须精确对应受支持的代码。不要编辑应用二进制文件或打包资源。无效配置会明确报错。

更改安装默认值或重新安装，不会覆盖现有用户已保存的旗帜选择。模型名称、数据、代码及 DAX 表达式绝不会被翻译。

<a name="connect-to-an-open-power-bi-file"></a>
## 连接到已打开的 Power BI 文件

推荐：在 Power BI Desktop 中打开 PBIX，然后启动**外部工具 > Power Portal**。Desktop 会自动传递本地模型端点及数据库标识符。

如果从 Windows 快捷方式启动：

1. 在 Power BI Desktop 中打开 PBIX。
2. 检测到已打开的本地模型时，会显示启动提示。使用**查找已打开的模型**并选择文件名。
3. 更改后使用**读取 Power BI 模型**重新加载元数据。

检测仅列出可用模型，不会自动选择或写入文件。连接后，页眉中的紧凑绿色状态表示可进行需确认的调整；使用**刷新 Power BI 模型**重新加载元数据。[连接截图](SCREENSHOTS.md#connect-to-a-file-already-open-in-power-bi)。

只有一个模型打开时，读取操作可以自动发现它。如果打开多个模型，请明确选择目标文件。相似文件名会以数字区分；Power BI 窗口标题不一定显示完整路径。

连接仅限本地。不要配置公共服务器、共享模型端口，也不要将其当作远程 DAX 服务器。如果 Power BI 重启，请重新连接到新的本地实例。

<a name="external-tools-registration"></a>
## 外部工具注册

安装程序会写入：

```text
%CommonProgramFiles(x86)%\Microsoft Shared\Power BI Desktop\External Tools\PowerPortal.pbitool.json
```

注册包含已安装的可执行文件路径及以下 Desktop 占位符：

```text
-- --powerportal-server "%server%" --powerportal-database "%database%"
```

开头的 `--` 是有意设置的。不要删除，也不要手动替换为过期端口。安装或修复注册后，请重启 Power BI Desktop。

<a name="data-locations"></a>
## 数据位置

常规应用配置目录为：

```text
%APPDATA%\powerportal-desktop
```

相关子文件夹包括：

- `themes`：生成的 JSON 及 `.applied.json` 验证导出。
- `model-changes`：已确认写入尝试及结果的本地记录。
- `relationship-diagrams`：按模型保存的视觉布局，包括表/分组名称、图标、颜色、位置及视口。在[关系图](RELATIONSHIPS.md#save-and-share-the-organization)中导出/导入布局；此操作绝不提交模型写入。
- `updates`：已验证并下载的更新安装程序。已处理的失败会删除部分下载文件。验证过的安装程序可能在安装后保留；不要将其误认为模型备份。
- 配置目录还保存每用户的界面偏好。

元数据备份保存在本地，成功写入后会显示确切备份路径。导出的文档及下载/生成的文件使用用户选择的目标位置。

请将备份、日志及导出文件视为机密：完整的 BIM 备份可能包含数据源/连接详情，更改日志可能包含新旧 DAX。卸载不会自动删除这些内容。不要上传到公开问题中。

若要重置界面偏好，可在应用中选择另一种语言或展开侧栏。完全重置配置目录还可能移除保留的日志和备份；只有关闭应用且已特意保留全部所需内容后，才可删除配置目录。

<a name="network-and-accounts"></a>
## 网络与帐户

- 本地预览和内置工具不需要 Power Portal 帐户。
- 已安装应用启动时会检查公共 GitHub 版本元数据。点击**立即更新**后，其主进程更新程序通过 HTTPS 下载官方附件。更新请求不包含模型名称、表达式、行或凭据。
- 可访问模型的本地窗口会阻止任意远程 Web 请求。
- 咨询链接及视频会在用户请求时打开默认浏览器。
- TV Tool 使用隔离的在线演示窗口打开已发布的 Power BI/Microsoft 页面。它不共享本地模型访问权限；Microsoft 登录是独立的，且不会跨会话保留。
- DirectQuery 查询可能通过 Power BI 访问原始数据源，并需要网络及现有数据源凭据。
- 电子邮件需要已配置的邮件客户端。没有客户端时请使用**复制电子邮件**。

安装不需要提供 API 密钥、密码、门户凭据或源代码配置文件。

[安装](INSTALLATION.md) · [使用与安全](USAGE.md) · [更新行为](UPDATES.md)

## 欢迎界面和持久化启动偏好

主页介绍如何在 Power BI Desktop 中打开文件、查找已打开的模型，并在确认后发送支持的更改。默认开启“每次打开时显示欢迎界面”；关闭后，下次启动将隐藏介绍。“继续使用工具”仅关闭当前介绍。主页的“欢迎”按钮可重新打开并启用开关。设置保存在本地用户配置中，与 Store 版本独立。支持八种语言和键盘操作。打开此界面不会修改模型。请先备份，更改后在 Power BI 中保存 PBIX。测试验证了真实进程重启、开关持久化、模型查找和本地化布局。模型操作均为模拟，没有更改实际数据。

## 欢迎弹窗和图示安装向导

欢迎内容现在显示在居中的模态弹窗中，不再嵌入主页。背景不可操作，键盘焦点保留在弹窗内。Escape 或“继续使用工具”仅关闭当前介绍。已保存的启动开关和主页“欢迎”按钮保持原有行为。安装完成页说明如何在 Power BI Desktop 中选择“外部工具 > Power Portal”，并显示用户提供的功能区参考图。如果 Power BI 已运行，请关闭并重新打开。支持八种语言；参考图中的功能区为葡萄牙语。保留安装后启动 Power Portal 的选项，但不会自动点击 Power BI。欢迎弹窗不会更改模型。
