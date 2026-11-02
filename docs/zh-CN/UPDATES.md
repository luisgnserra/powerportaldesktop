# 更新检查与自动安装

<!-- language-selector -->
[🇺🇸 English](../UPDATES.md) · [🇧🇷 Português](../pt-BR/UPDATES.md) · [🇪🇸 Español](../es/UPDATES.md) · [🇨🇳 简体中文](UPDATES.md) · [🇫🇷 Français](../fr/UPDATES.md) · [🇯🇵 日本語](../ja/UPDATES.md) · [🇮🇳 हिन्दी](../hi/UPDATES.md) · [🇸🇦 العربية](../ar/UPDATES.md)
<!-- /language-selector -->

[返回主页](../../README.zh-CN.md) · [安装](INSTALLATION.md)

<a name="available-from-version-162"></a>
## 从 1.6.2 版本起提供

如果使用 1.6.1 或更早版本，请先**手动安装一次 1.6.2**。旧应用必须先安装含有新更新程序的版本，才能获得该功能。

**已安装的**应用打开时，会检查 `luisgnserra/powerportaldesktop` 的最新公共稳定 Release。它比较三段数字版本，忽略降级/当前版本，不提供草稿或预发布构建。

开发/源码运行不会下载或安装更新。

<a name="update-flow"></a>
## 更新流程

1. 打开 Power Portal。有互联网时会检查较新版本。
2. 如有更新，醒目的琥珀色通知显示版本及**立即更新**。滚动时仍保持可见，并具有柔和光晕动画；减少动态效果偏好会禁用动画。检查按钮也会突出显示。
3. 继续前**保存/导出尚未发送的工具编辑内容**。正在进行的模型写入/主题操作会阻止更新。
4. 点击**立即更新**。仅打开应用或检查更新不会安装。
5. 主进程通过 HTTPS 下载官方 x64 安装程序，并根据已发布 GitHub Release 附件元数据检查准确大小及 SHA-256。
6. Windows 请求管理员授权。只有信任本分发来源时才批准。
7. 授权/安装程序启动后，Power Portal 关闭，安装程序在**现有安装文件夹**中静默运行。**Power BI Desktop 不会关闭。**
8. 安装完成后重新打开 Power Portal。若功能区/注册需要重新加载，请重启 Desktop。

![更新通知及由用户控制的立即更新按钮](../images/zh-CN/update-available.png)

截图是在 1.8.3 内**模拟未来 1.8.3 通知**，仅用于演示界面，并非宣布 1.8.3。

<a name="receive-version-183-from-an-earlier-updater-enabled-version"></a>
### 从支持更新程序的早期版本接收 1.8.3

已安装 **1.6.2、1.6.3 或 1.6.4** 时，重新打开应用或点击**检查更新**。已发布的稳定版 **1.8.3** 应会显示，并提供**立即更新**。如需观察该通知，请勿先手动安装 1.8.3。早于 1.6.4 的版本使用原有横幅；1.8.3 保留醒目的视觉样式。准备好后点击更新按钮并批准 Windows 授权。

应用报告的是安装程序已启动，不是经验证的安装完成：旧应用关闭后，安装才完成。重新打开后检查显示的应用版本。Windows 仍可能阻止未签名安装程序或要求 IT 批准。

<a name="checks-retries-and-failures"></a>
## 检查、重试与失败

顶部操作中的**检查更新**可手动重试检查。没有后台轮询循环或强制安装。

在 1.6.4 中，成功检查且未发现较新版本时，不会留下占一行的“已是最新版本”横幅。错误及可用更新仍保持可见。

- 离线、防火墙/代理或 GitHub API 速率限制错误会显示在更新提示中；本地工具仍可使用。
- 无效发布元数据、缺失附件摘要、校验和不匹配、意外的重定向主机、下载过大或超时会阻止执行。
- 取消 Windows 授权后应用仍可用，并显示错误。准备好后可重试。
- 检查失败会清除旧的可用更新选项，避免悄悄使用过期数据。
- 更新程序在下载/安装时阻止新的模型写入，并拒绝在活动写入/主题操作期间启动。
- 尚未发送/导出的工具表单编辑不会在应用替换期间自动保留。请先导出/保存。

<a name="privacy-network-and-integrity"></a>
## 隐私、网络与完整性

更新请求仅包含发送给 GitHub 的标准 HTTPS 请求元数据，不包含本地模型名称、DAX、数据、PBIX 内容或凭据。公共版本不需要 GitHub 登录/令牌。

发布元数据来自：

```text
https://api.github.com/repos/luisgnserra/powerportaldesktop/releases/latest
```

安装程序 URL 必须匹配本仓库该版本的确切带版本附件。HTTPS 重定向仅限 GitHub 及其官方发布附件主机。应用保留元数据中的哈希/大小用于该次下载。

检查总超时为 30 秒，元数据上限为 1 MB。下载总时限为 20 分钟，套接字空闲超时为 30 秒，允许的安装程序最大为 1 GB。这些是限制值，不是正常软件包大小。

下载保存在 `%APPDATA%\powerportal-desktop\updates`。已处理的失败会删除部分文件；验证过的 EXE 可能在安装后保留。不会下载或构建应用源码。

**SHA-256 是完整性检查，不是发布者的数字签名。**当前版本未签名。更新程序不会绕过 UAC、SmartScreen 或企业政策。如果网络要求的代理无法被更新程序使用，请咨询 IT，或手动安装已验证的 Release EXE。

<a name="manual-fallback"></a>
## 手动备用方案

使用[最新 Release](https://github.com/luisgnserra/powerportaldesktop/releases/latest)或[带版本的 PowerShell 辅助脚本](INSTALLATION.md#command-line-installation)。现有固定版本的辅助脚本命令有意安装其固定版本，而非未来的任意最新版本。
