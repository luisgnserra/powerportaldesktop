# Power Portal Desktop

**Ten tools for Power BI Desktop, in one Windows application.**

Power Portal Desktop is owned by **Excelência Consultoria e Educação**. It installs into Power BI Desktop's **External Tools** ribbon and opens a separate application window, similar to other external modeling tools.

This is a **distribution-only repository**: installers, installation helpers, checksums and documentation. **No Power Portal application source code is published here.**

## Download and install

### Option 1: Install with a few clicks

1. [Download Power Portal Desktop 1.6.0 for Windows x64](https://github.com/luisgnserra/powerportaldesktop/releases/download/v1.6.0/PowerPortal-Setup-1.6.0-x64.exe).
2. Run the installer and approve the Windows administrator prompt.
3. Choose the installation folder and default language.
4. Finish installation, then close and reopen Power BI Desktop.
5. Open a PBIX and select **External Tools > Power Portal**.

**Windows may warn that the publisher is unknown:** version 1.6.0 is not digitally signed. Only proceed if you trust this distribution. If your organization blocks unsigned software, contact IT rather than bypassing its policy.

[Latest release](https://github.com/luisgnserra/powerportaldesktop/releases/latest) · [Installation guide](docs/INSTALLATION.md) · [Configuration](docs/CONFIGURATION.md) · [Troubleshooting](docs/TROUBLESHOOTING.md)

### Option 2: Install from PowerShell

Open **Windows PowerShell 5.1 or PowerShell 7 on Windows**:

```powershell
$script = Join-Path $env:TEMP 'Install-PowerPortal.ps1'
Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/luisgnserra/powerportaldesktop/v1.6.0/install.ps1' -OutFile $script
# Review the downloaded script before running it.
Get-Content -LiteralPath $script
& $script
```

The helper downloads **version 1.6.0**, verifies its pinned SHA-256 checksum, and opens the same installer. It does not install Node.js, PHP, a .NET SDK, or build anything.

For unattended installation, run the same helper from an **administrator PowerShell window**:

```powershell
& "$env:TEMP\Install-PowerPortal.ps1" -Silent
```

For download and checksum verification only, without installing:

```powershell
& "$env:TEMP\Install-PowerPortal.ps1" -DownloadOnly
```

If script execution is blocked, follow your organization's policy or use the executable installer. See the [full command-line instructions](docs/INSTALLATION.md#command-line-installation).

## Requirements

- Windows 10 or 11, **x64**.
- Power BI Desktop supporting External Tools. This is not an installation for Power BI Service, macOS, Windows ARM64, or Power BI Report Server.
- Administrator permission to install and register the external tool.
- Internet to download the installer; local tools and bundled previews work offline.
- Published/private Power BI reports in TV Tool require internet and the relevant Microsoft account, license and permissions.

The desktop application includes its required runtime components. You do not need developer tools.

## Included tools

| Tool | What it does |
|---|---|
| Theme generator | Live local preview, theme JSON import/export, and confirmed application to the connected Power BI window. |
| TV Tool | Present published report pages or local images, configure timing and transitions, and export presentation HTML. |
| Calendar generator | Read existing calendar metadata and dates, export scripts, or create a calculated calendar table with confirmation and backup. |
| Performance checklist | Assess a report using the portal's checklist and available model metadata. |
| Component library | Build HTML/DAX components and create an HTML measure in a connected model. |
| Contrast calculator | Check color contrast against WCAG thresholds. |
| PBIP/PBIR analyzer | Inspect local project metadata, with heuristic scores and available page/visual counts. |
| Model documenter | Export tables, columns, measures and relationships to Markdown or JSON. |
| Measure auditor | Review model measures or supplied DAX using heuristic checks. |
| DAX formatter | Format locally, export/copy, or update a selected connected measure with confirmation. |

Also includes a home gallery, a collapsible sidebar, ownership/development information, and a consulting and training area with the two featured videos.

## Eight languages

Portuguese, English, Spanish, Simplified Mandarin Chinese, French, Japanese, Hindi and Arabic. Flags occupy no more than two rows; Arabic uses a right-to-left layout.

The installer suggests the Windows UI language. A user's later language selection is saved locally and takes precedence over the installation default. Model names, data and DAX are not translated.

## Important limits and data safety

- **Save a copy of your PBIX before making changes.** Confirmed writes create local metadata backups, but these do not replace a full PBIX backup.
- Theme application uses **visible Windows UI Automation** and requires confirmation. There is no supported generic theme-write API for an open Desktop PBIX; dialogs are not hidden.
- TOM connects to the semantic model, not the active report's filters, pages or visual placement. An HTML measure does not automatically add a visual to a report.
- Report-analysis and measure-audit scores are heuristics, not measured visual performance.
- Local model data is not sent to the Power Portal website. User-opened external links, online presentations and DirectQuery sources can require network access.
- Documentation exports, metadata backups and change logs can contain confidential model details. Store and share them appropriately.

Read the [usage and safety guide](docs/USAGE.md) before modifying a model.

## Consulting, complete data solutions and training

Excelência provides Power BI consulting, Microsoft Fabric, data engineering, end-to-end data solutions and **In Company training**.

- [Arrange a conversation on WhatsApp](https://api.whatsapp.com/send/?phone=5535998532286&text&type=phone_number&app_absent=0)
- Email: [contato@consultoriaexcelencia.com.br](mailto:contato@consultoriaexcelencia.com.br)
- [Power BI In Company training](https://www.consultoriaexcelencia.com.br/educacao/treinamentos-power-bi)
- [Featured video 1](https://www.youtube.com/watch?v=bIxmIaYmt0c)
- [Featured video 2](https://www.youtube.com/watch?v=FNo7F7kh6h4)
- [Excelência blog](https://consultoriaexcelencia.com.br/blog) · [Online courses](https://ead.consultoriaexcelencia.com.br/)

Development responsibility: **Luis Gustavo Nascimento Serra**.
[LinkedIn](https://www.linkedin.com/in/luisgnserra/) · [YouTube: Mais Que Planilhas](https://www.youtube.com/MaisQuePlanilhas)

Microsoft, Power BI and Microsoft Fabric are trademarks of Microsoft. MVP identification is personal and does not imply Microsoft ownership, sponsorship or endorsement.

## Support and distribution

[Troubleshooting and support](docs/TROUBLESHOOTING.md) · [Release notes](CHANGELOG.md) · [Distribution notice](DISTRIBUTION.md)

Use **Release assets** to download the application. GitHub's automatic "Source code" ZIP/TAR archives contain only this distribution repository's documentation and installer helper, not the application or its source code.
