# Troubleshooting and support

<!-- language-selector -->
[🇺🇸 English](TROUBLESHOOTING.md) · [🇧🇷 Português](pt-BR/TROUBLESHOOTING.md) · [🇪🇸 Español](es/TROUBLESHOOTING.md) · [🇨🇳 简体中文](zh-CN/TROUBLESHOOTING.md) · [🇫🇷 Français](fr/TROUBLESHOOTING.md) · [🇯🇵 日本語](ja/TROUBLESHOOTING.md) · [🇮🇳 हिन्दी](hi/TROUBLESHOOTING.md) · [🇸🇦 العربية](ar/TROUBLESHOOTING.md)
<!-- /language-selector -->

[Back to home](../README.md)

| Problem | Recommended action |
|---|---|
| Power Portal is absent from External Tools | Finish installation as administrator, close/reopen Desktop, and check the [registration location](CONFIGURATION.md#external-tools-registration). Repair by rerunning the official installer. |
| No External Tools ribbon at all | Check your Power BI Desktop edition/version with IT. This package targets Desktop editions that support external tools, not Service or Report Server. |
| External Tool no longer opens | Restart Desktop; the installed executable may have moved or been blocked. Reinstall to repair its path. Do not manually remove the leading `--` in registration arguments. |
| No model loaded / connection failure | Open a PBIX in Desktop and launch from External Tools, or choose **Find open models**. Reconnect after Desktop restarts; old local ports expire. |
| Wrong file name / multiple models | Explicitly select the intended open model and verify the confirmation target before writing. Window titles may omit the full path. |
| Raw PBIX import fails | Open the PBIX in Power BI and connect locally. Use BIM/PBIP/TMDL/ZIP for supported read-only file imports. |
| Theme dialog still appears | Expected: Desktop theme import uses visible UI Automation. No supported dialog-free generic theme API is available for this release. |
| Theme automation fails | Keep the generated JSON, check the target window, avoid interaction during import, and use Power BI's Themes menu to import manually. Report the exact error and Desktop version without uploading the PBIX. |
| Existing theme did not load with the model | Save the current theme JSON in Desktop and import it into the theme generator. TOM cannot read the report theme. |
| HTML measure exists but no visual appears | Add a compatible HTML visual and assign the measure manually. |
| Calendar does not have rows yet | Refresh the model in Desktop, then read it again. Check the DAX/date range. |
| Calendar reversal refused | The table changed or has dependencies. Do not force removal; use the saved PBIX copy or seek help with the metadata backup. |
| Language remains unchanged after reinstall | An existing user's saved choice overrides the installation default. Change the sidebar flag. |
| Invalid default-language configuration | Close the app and have an administrator correct `powerportal-defaults.json` to valid UTF-8 JSON with a supported code. |
| PowerShell script is blocked | Review it and follow your organization's execution policy. Alternatively use the EXE wizard. Do not disable corporate controls. |
| `-Silent` asks for administrator PowerShell | Close that terminal and launch PowerShell **Run as administrator**, then retry. |
| SHA-256 mismatch | **Do not run the file.** Remove/move the invalid download, get the official asset again, and compare against the published checksum. |
| GitHub download fails | Check connectivity, proxy/firewall restrictions and the Release URL. IT can distribute the verified EXE through an approved channel. |
| PowerShell reports an underlying connection/TLS send error | Use the documented TLS 1.2 line before fetching the helper in Windows PowerShell, then retry. The native application updater already uses HTTPS/TLS independently. |
| SmartScreen/unknown publisher | 1.8.2 is unsigned. Verify the checksum and publisher source; ask IT if your device blocks unsigned programs. |
| Relationship editor is read-only | Importing a project allows visual organization only. Connect to a live local Power BI model to create/edit/delete relationships. |
| Relationship changed since reading | Re-read the Power BI model and review the updated link. Stale edits are rejected to avoid overwriting another change. |
| Duplicate or second active relationship | Use distinct column pairs, or deactivate the current active relationship between those tables before activating another. |
| Relationship type/uniqueness/ambiguity error | Match column data types and inspect keys/filter paths in Desktop. TOM/Power BI validates the model; do not bypass the error. |
| Diagram save failed | Check disk space and write permissions under the application profile, then use Retry saving. Export a separate JSON copy if needed. |
| Different diagram after renaming/copying PBIX | Profiles use window/file names and table lineage tags; names/identities can change or collide across copies. Import your exported layout into the intended model. |
| Updates are not checked on startup | Versions 1.6.1 and older need a one-time manual upgrade to 1.6.2. The development/source run intentionally does not update. |
| Update check fails/offline/HTTP 403 or 429 | Local tools remain available. Check internet/proxy/firewall and retry **Check for updates**. GitHub API rate limits can apply. |
| Update now fails checksum or size verification | The installer was not executed. Retry or download the official Release manually; do not run a corrupt cached file. |
| Windows authorization was canceled | Power Portal stays available. Retry **Update now** when ready to approve UAC, or ask IT for installation permission. |
| Updating is blocked by an active model operation | Wait for the confirmed write/theme operation to finish, then retry. Save/export unsent edits before updating. |
| No startup connection notice | Detection needs an open local semantic model, not merely Desktop's welcome screen. Use **Find open models** after opening a PBIX. If detection fails, check the visible error and reconnect. |
| Installer cannot close the running app | Save your work, close Power Portal manually and retry. Only the exact installed executable is targeted. Power BI is not closed. |
| Email button does nothing | Configure a default email client, use **Copy email**, or write to the address below manually. |
| Online TV report cannot sign in/load | Verify Microsoft account, report permissions, license, embedding restrictions and internet access. Use local images for offline TV. |

## Contact support

Email **[contato@consultoriaexcelencia.com.br](mailto:contato@consultoriaexcelencia.com.br)** or [contact Excelência on WhatsApp](https://api.whatsapp.com/send/?phone=5535998532286&text&type=phone_number&app_absent=0).

Include:

- Power Portal version (1.8.2 for this release).
- Windows version and Power BI Desktop version/edition.
- Installation method (wizard or PowerShell).
- Steps to reproduce and the exact visible error.
- Whether one or multiple models were open.

**Never post PBIX/BIM files, source connection details, credentials, confidential data or unsanitized backups/change logs in public issues.** Screenshots can reveal names or data too; redact them before sharing.

For deployment and confidential matters, use the support email rather than a public issue.

## Native launch and recovery

Refresh Analysis is now immediately below Relationship map in the sidebar and home gallery. Native button discovery ignores the duplicate Home tabs belonging to DAX Query View and TMDL View, avoiding “Ambiguous Power BI control: home”. Select Report, Data or Model view in Power BI if native controls are unavailable.

Start stays disabled while confirmation, validation and trace startup are pending; Finish capture is hidden until capture is ready. This prevents a second launch from incorrectly reporting “Finish the active Power BI operation before refreshing”. A failure proven to occur before native invocation stops the trace, checks cleanup and permits retry. If invocation might already have occurred, the error remains visible and the capture stays pending: review Power BI, finish its refresh and close dialogs before Finish capture. Repeated requests resume the existing capture instead of starting another refresh. Legitimate active Power BI operations still need to finish first.
