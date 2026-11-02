# 分发版本维护

<!-- language-selector -->
[🇺🇸 English](../RELEASING.md) · [🇧🇷 Português](../pt-BR/RELEASING.md) · [🇪🇸 Español](../es/RELEASING.md) · [🇨🇳 简体中文](RELEASING.md) · [🇫🇷 Français](../fr/RELEASING.md) · [🇯🇵 日本語](../ja/RELEASING.md) · [🇮🇳 हिन्दी](../hi/RELEASING.md) · [🇸🇦 العربية](../ar/RELEASING.md)
<!-- /language-selector -->

[返回主页](../../README.zh-CN.md)

这是仅用于分发的仓库。**每次应用调整都必须随更新的安装程序 Release 及相应文档一同发布**，以免下载链接、截图与实际行为不一致。

<a name="required-release-checklist"></a>
## 必需的发布检查清单

1. 在私有工作树中构建/测试应用。绝不要将该源码树复制或推送到本仓库。
2. 提升应用/安装程序版本。使用新的不可变标签，例如 `v1.6.2`；不要用字节不同的文件替换旧版本的可执行文件。
3. 计算**最终经过测试的安装程序**的 SHA-256 及大小。
4. 更新 `release.json`、`SHA256SUMS.txt`，以及 `install.ps1` 中固定的版本/哈希。
5. 更新全部八种文档语言的 README、安装命令、相关使用/配置/故障排除说明及 CHANGELOG。保持英语为主 README，并以旗帜链接到 `README.pt-BR.md`、`README.es.md`、`README.zh-CN.md`、`README.fr.md`、`README.ja.md`、`README.hi.md` 及 `README.ar.md`。本地化指南位于对应的 `docs/<locale>/` 目录。不要翻译命令、哈希、文件名、模型标识符或 API 枚举值。
6. 使用合成的非机密数据，从新软件包中截取受影响界面的全部八种语言截图。英语图片位于 `docs/images/`；其他语言图片位于 `docs/images/<locale>/`。更新每份图解指南，并将 `release.json` 的 `screenshotsVersion` 设置为应用版本。真实的 Power BI 功能区原图保留葡萄牙语；应说明这一点，而不是错误地重新标注 Power BI。绝不要发布真实模型名称/数据或暴露凭据的截图。
7. 审查准确的受跟踪文件允许列表。允许内容为文档、截图 PNG、安装辅助脚本/配置及分发验证。不得包含应用源码、项目文件、模型文件、凭据或开发依赖项。
8. 在本地运行分发验证。帐户可使用托管执行时，GitHub Actions 也会验证允许列表/元数据。
9. 提交/推送仅用于分发的更改，并创建**草稿** Release，将新安装程序、校验和及辅助脚本作为附件。
10. 比较上传附件与本地安装程序的大小/哈希，再发布为最新版本。
    内置更新程序要求匹配版本的 EXE 附件处于 `uploaded` 状态，大小为正且不超限，并具有 GitHub `sha256:` 摘要。绝不要省略这些检查，也不要将预发布/草稿发布为稳定更新通道。
11. 使用 `-DownloadOnly` 在无凭据情况下测试公共的带版本辅助脚本。宣布完成前，验证结果的 SHA-256 及最新版本 URL。
12. 验证全部八种语言选择器、本地链接/标题锚点及本地化 PNG。纯文档翻译可以发布到 `main`，无需更改安装程序字节或创建新应用版本；绝不要移动现有发布标签。

最终用户从 **Release 附件**下载 EXE。大型安装二进制文件不应放入 Git 文件树。自动生成的源代码归档仅包含分发仓库，不包含应用源码。

保留旧版本及固定版本的辅助脚本 URL。`releases/latest` 将新访问者指向当前版本；旧的带版本命令有意保留原版本。

<a name="if-hosted-validation-is-unavailable"></a>
## 无法使用托管验证时

不要声称 GitHub Actions 任务已通过。请在本地运行相同的 PowerShell 验证步骤，如实报告托管运行器限制，并保留工作流供之后使用。托管运行器受限本身并不妨碍下载公共 Release 附件。
