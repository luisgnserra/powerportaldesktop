# Troubleshooting and support

<!-- language-selector -->
[🇺🇸 English](TROUBLESHOOTING.md) · [🇧🇷 Português](pt-BR/TROUBLESHOOTING.md) · [🇪🇸 Español](es/TROUBLESHOOTING.md) · [🇨🇳 简体中文](zh-CN/TROUBLESHOOTING.md) · [🇫🇷 Français](fr/TROUBLESHOOTING.md) · [🇯🇵 日本語](ja/TROUBLESHOOTING.md) · [🇮🇳 हिन्दी](hi/TROUBLESHOOTING.md) · [🇸🇦 العربية](ar/TROUBLESHOOTING.md)
<!-- /language-selector -->

**1.8.6 — Follow native refresh inside Power Portal**

Start Refresh and analyze in Power Portal and follow live cards with each table, observed status, engine phase, activity time and the latest available native Power BI progress text. Power Portal regains focus after launch and, if Power BI brings itself forward again, after native completion. It does not repeatedly take focus from other applications. View in Power BI opens the selected file without starting another refresh; choosing it disables automatic focus return for that capture.

Power BI remains the refresh engine. Its window may appear briefly; this is not a supported headless PBIX processing API. Credentials, errors and cancellation remain in Power BI, and native dialogs are never hidden or dismissed automatically. Native text keeps the Power BI language and shows its last-read time. Missing native text is explicit; engine tracing continues if the UI reader fails. Ended phases do not prove table completion, percentages are not invented, and final row counts are calculated only after capture. History and JSON include the observed native statuses; review exports before sharing. The packaged application was tested with an authorized real refresh: 4/4 tables measured, 4/4 row counts, live native statuses, restored Portal focus, working View in Power BI and history surviving reload. No PBIX was automatically saved; all documentation images use synthetic data.

**1.8.5 — Native refresh measurements fixed**

Refresh Performance now recognizes the native XML Refresh command used by Power BI Desktop, including Refresh inside Batch, as well as XMLA Process and TMSL refresh. Previously the native refresh could execute while its progress was discarded as unrelated, leaving 0 measured tables, unavailable row counts and refreshCompletionNotProven. An explicit successful engine result is now accepted when the optional Error field is absent; nonzero error codes and XMLA errors still override success. Progress still requires exact request/activity correlation, excluding unrelated visual queries.

Before the first recognized refresh command, the UI says it is waiting for Power BI refresh events. Unconfirmed completion now has translated guidance rather than only a technical code. Update the app, connect to the intended PBIX and run Refresh and analyze again; old incomplete reports are preserved and are not rewritten as successful. The packaged application was validated end to end on a user-authorized real refresh, with table activity, row counts, automatic completion and history surviving reload. No customer data or model names are included in these screenshots; documentation examples remain synthetic.

**1.8.5 — Download updates in your browser**

When a newer version is available, the update notice now offers Download in browser alongside Update now. It opens the detected official GitHub installer URL in your default browser without closing Power Portal or starting installation. Run the downloaded installer manually when ready. The option remains available after an automatic update error. Browser launch failures are shown explicitly. Update now still downloads in the app, verifies SHA-256 and size, then requests Windows authorization. Browser downloads do not receive the app’s automatic checksum verification: compare the published SHA-256 before running the installer. Both buttons and the hint are translated into all eight languages.

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
| SmartScreen/unknown publisher | 1.8.13 is unsigned. Verify the checksum and publisher source; ask IT if your device blocks unsigned programs. |
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

- Power Portal version (1.8.13 for this release).
- Windows version and Power BI Desktop version/edition.
- Installation method (wizard or PowerShell).
- Steps to reproduce and the exact visible error.
- Whether one or multiple models were open.

**Never post PBIX/BIM files, source connection details, credentials, confidential data or unsanitized backups/change logs in public issues.** Screenshots can reveal names or data too; redact them before sharing.

For deployment and confidential matters, use the support email rather than a public issue.

## Native launch and recovery

Refresh Performance is now immediately below Relationship map in the sidebar and home gallery. Native button discovery ignores the duplicate Home tabs belonging to DAX Query View and TMDL View, avoiding “Ambiguous Power BI control: home”. Select Report, Data or Model view in Power BI if native controls are unavailable.

Start stays disabled while confirmation, validation and trace startup are pending; Finish capture is hidden until capture is ready. This prevents a second launch from incorrectly reporting “Finish the active Power BI operation before refreshing”. A failure proven to occur before native invocation stops the trace, checks cleanup and permits retry. If invocation might already have occurred, the error remains visible and the capture stays pending: review Power BI, finish its refresh and close dialogs before Finish capture. Repeated requests resume the existing capture instead of starting another refresh. Legitimate active Power BI operations still need to finish first.
