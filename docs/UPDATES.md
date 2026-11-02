# Update checks and automatic installation

<!-- language-selector -->
[🇺🇸 English](UPDATES.md) · [🇧🇷 Português](pt-BR/UPDATES.md) · [🇪🇸 Español](es/UPDATES.md) · [🇨🇳 简体中文](zh-CN/UPDATES.md) · [🇫🇷 Français](fr/UPDATES.md) · [🇯🇵 日本語](ja/UPDATES.md) · [🇮🇳 हिन्दी](hi/UPDATES.md) · [🇸🇦 العربية](ar/UPDATES.md)
<!-- /language-selector -->

**1.8.9 — Calendar sample and native refresh shortcut**

In Calendar generator, the real sample (up to 50 rows) now appears below Generate script. Refresh in Power BI sits beside that button and, with a live connection, opens Refresh Performance and starts the same confirmed native model-data refresh. Follow table statuses, timings and row counts there. This refreshes the entire model; it does not apply the generated script, create or replace a calendar table, or save the PBIX. Create calendar in Power BI remains a separate action. The button is disabled offline, supports keyboard activation and is translated into all eight languages. Cancellation and errors use the existing refresh flow. The sample remains the last requested read: use Read selected calendar to read it again after refreshing. Packaged-app tests verified layout, all eight labels, offline gating, exact selected connection, cancellation, visible errors, retry and unchanged calendar creation. No real model refresh was started for these tests; documentation images use synthetic data.

**1.8.8 — Dynamic relationship lines and verified theme delivery**

In Relationship map, Line style switches between Curves and Straight lines with 90-degree angles. Endpoints dynamically use facing top/bottom or left/right table borders, taking the rendered card size into account. Side connections retain the linked column height. Black arrows with white outlines follow straight segments rather than bisecting corners. The style saves automatically and travels with exported diagram JSON; older layouts remain curved. This does not change the native Power BI layout or perform global obstacle avoidance.

Send theme directly to Power BI returns focus to Power Portal after native import and during export verification, only when Power BI is foreground. Once the applied theme is verified, Power BI is shown; errors also bring the selected window forward for review. Native dialogs may appear briefly and are not hidden: Desktop has no supported dialog-free theme API. Delayed ribbon tab changes after import are handled before checking the applied theme. An authorized real test in the packaged app verified import/export, Portal focus return and final Power BI activation, then restored the original Default theme without saving the PBIX. All documentation screenshots use synthetic data.

**1.8.6 — Follow native refresh inside Power Portal**

Start Refresh and analyze in Power Portal and follow live cards with each table, observed status, engine phase, activity time and the latest available native Power BI progress text. Power Portal regains focus after launch and, if Power BI brings itself forward again, after native completion. It does not repeatedly take focus from other applications. View in Power BI opens the selected file without starting another refresh; choosing it disables automatic focus return for that capture.

Power BI remains the refresh engine. Its window may appear briefly; this is not a supported headless PBIX processing API. Credentials, errors and cancellation remain in Power BI, and native dialogs are never hidden or dismissed automatically. Native text keeps the Power BI language and shows its last-read time. Missing native text is explicit; engine tracing continues if the UI reader fails. Ended phases do not prove table completion, percentages are not invented, and final row counts are calculated only after capture. History and JSON include the observed native statuses; review exports before sharing. The packaged application was tested with an authorized real refresh: 4/4 tables measured, 4/4 row counts, live native statuses, restored Portal focus, working View in Power BI and history surviving reload. No PBIX was automatically saved; all documentation images use synthetic data.

**1.8.5 — Download updates in your browser**

When a newer version is available, the update notice now offers Download in browser alongside Update now. It opens the detected official GitHub installer URL in your default browser without closing Power Portal or starting installation. Run the downloaded installer manually when ready. The option remains available after an automatic update error. Browser launch failures are shown explicitly. Update now still downloads in the app, verifies SHA-256 and size, then requests Windows authorization. Browser downloads do not receive the app’s automatic checksum verification: compare the published SHA-256 before running the installer. Both buttons and the hint are translated into all eight languages.

[Back to home](../README.md) · [Installation](INSTALLATION.md)

## Available from version 1.6.2

Install **1.6.2 manually once** if you have 1.6.1 or an older version. Older applications cannot gain a new updater without first installing the release that contains it.

The **installed** application checks the latest public stable Release in `luisgnserra/powerportaldesktop` when opened. It compares numeric three-part versions, ignores downgrades/current versions, and does not offer draft or prerelease builds.

The development/source run does not download or install updates.

## Update flow

1. Open Power Portal. With internet available, it checks for a newer release.
2. If available, a prominent amber notification displays the version and **Update now**. It stays visible while scrolling, with a gentle glow animation; reduced-motion preferences disable the animation. The check button is also highlighted.
3. **Save/export unsent tool edits** before proceeding. Model writes/themes already in progress block updating.
4. Click **Update now**. There is no installation merely from opening the app or checking for updates.
5. The main process downloads the official x64 installer over HTTPS and checks its exact size and SHA-256 against the published GitHub Release asset metadata.
6. Windows requests administrator authorization. Approve only if you trust this distribution.
7. After authorization/installer launch, Power Portal closes and the installer runs silently in the **existing installation folder**. **Power BI Desktop is not closed.**
8. Reopen Power Portal after installation completes. Restart Desktop if its ribbon/registration needs reloading.

![Update notification and user-controlled Update now button](images/update-available.png)

The screenshot is a **simulated future 1.8.10 notification** inside 1.8.9, demonstrating the UI only. It is not an announcement of 1.8.10.

### Receive version 1.8.9 from an earlier updater-enabled version

With **1.6.2, 1.6.3 or 1.6.4** installed, reopen the app or click **Check for updates**. The published stable **1.8.9** should appear with **Update now**. Do not install 1.8.9 manually first if you want to observe this notification. Versions before 1.6.4 use their original banner; the prominent visual styling is retained in 1.8.9. Click the update button when ready and approve Windows authorization.

The app reports installer launch, not a verified completed installation: installation completes after the old app closes. Check the displayed application version after reopening. Windows can still block the unsigned installer or require IT approval.

## Checks, retries and failures

**Check for updates** in the top actions retries the check manually. There is no background polling loop or forced installation.

In 1.6.4, a successful check finding no newer version does not leave an "up to date" banner occupying a line. Errors and available updates still remain visible.

- Offline, firewall/proxy or GitHub API rate-limit errors are displayed in the update notice; local tools remain usable.
- Invalid release metadata, missing asset digest, checksum mismatch, unexpected redirect hosts, excessive download size or timeouts prevent execution.
- Canceling Windows authorization leaves the app available and shows an error. Retry when ready.
- A failed check clears the old available-update offer so stale data is not used silently.
- The updater blocks new model writes while downloading/installing and refuses to start during an active write/theme operation.
- Tool-form edits that have not been sent/exported are not automatically preserved across application replacement. Export/save first.

## Privacy, network and integrity

Update requests contain only standard HTTPS request metadata to GitHub, not local model names, DAX, data, PBIX contents or credentials. No GitHub login/token is required for public releases.

Release metadata comes from:

```text
https://api.github.com/repos/luisgnserra/powerportaldesktop/releases/latest
```

Installer URLs must match the release's exact versioned asset in this repository. HTTPS redirects are restricted to GitHub and its official release-asset hosts. The app retains the metadata's hash/size for that download.

Checks have a 30-second total timeout and a 1 MB metadata limit. Downloads have a 20-minute total limit, 30-second socket inactivity timeout and a 1 GB maximum accepted installer size. These are bounds, not the normal package size.

Downloads are held in `%APPDATA%\powerportal-desktop\updates`. Partial files are removed on handled failures; a verified EXE can remain after installation. No application source is downloaded or built.

**SHA-256 is an integrity check, not a digital publisher signature.** The current release is unsigned. The updater does not bypass UAC, SmartScreen or enterprise policies. If your network requires a proxy the updater cannot use, ask IT or install the verified Release EXE manually.

## Manual fallback

Use the [latest Release](https://github.com/luisgnserra/powerportaldesktop/releases/latest) or the [versioned PowerShell helper](INSTALLATION.md#command-line-installation). Existing version-pinned helper commands intentionally install their pinned version, not whichever future release is latest.
