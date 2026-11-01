# Configuration

[Back to home](../README.md)

## Language and sidebar preferences

Use the sidebar flags to switch languages. The preference persists in your Windows user's local application profile. The sidebar's collapsed/expanded state is saved too.

All ten tool buttons remain visible without sidebar scrolling at supported window sizes. Long localized labels use up to two visible lines and keep their complete accessible name/tooltip. **Consulting and training** is below **About the development**. [Expanded and collapsed screenshots](SCREENSHOTS.md#home-and-navigation).

Language precedence:

1. Your saved selection in the application.
2. The installation's `powerportal-defaults.json`.
3. Windows/Electron system locale, with English for unsupported languages.

| Code | Language |
|---|---|
| `pt` | Portuguese (Brazil) |
| `en` | English |
| `es` | Spanish |
| `zh` | Mandarin / Simplified Chinese |
| `fr` | French |
| `ja` | Japanese |
| `hi` | Hindi |
| `ar` | Arabic, right-to-left |

The installer writes this file in the chosen application installation folder:

```json
{"language":"en"}
```

An administrator may edit it after closing Power Portal to change the default for **new user profiles**. Save valid UTF-8 JSON with exactly a supported language code. Do not edit application binaries or packaged resources. Invalid configuration is reported explicitly.

Changing the installation default or reinstalling does not override an existing user's saved flag selection. Model names, data, code and DAX expressions are never translated.

## Connect to an open Power BI file

Recommended: open the PBIX in Power BI Desktop and launch **External Tools > Power Portal**. Desktop passes the local model endpoint and database identifier automatically.

If launched from a Windows shortcut:

1. Open the PBIX in Power BI Desktop.
2. A startup notice appears when open local models are detected. Use **Find open models** and select the file name.
3. Use **Read Power BI model** to reload metadata after changes.

Detection only lists availability; it does not automatically select a file or write to one. Once connected, the notice provides **Refresh Power BI model** and explains confirmed adjustments. [Connection screenshots](SCREENSHOTS.md#connect-to-a-file-already-open-in-power-bi).

With a single open model, reading can discover it automatically. If several models are open, explicitly select the intended file. Similar file names are distinguished by a number; Power BI window titles do not always expose full paths.

Connections are local only. Do not configure a public server, share a model port, or treat this as a remote DAX server. If Power BI restarts, reconnect to the new local instance.

## External Tools registration

The installer writes:

```text
%CommonProgramFiles(x86)%\Microsoft Shared\Power BI Desktop\External Tools\PowerPortal.pbitool.json
```

The registration contains the installed executable path and these Desktop placeholders:

```text
-- --powerportal-server "%server%" --powerportal-database "%database%"
```

The leading `--` is intentional. Do not remove it or substitute a stale port manually. Restart Power BI Desktop after installing or repairing registration.

## Data locations

The normal application profile is:

```text
%APPDATA%\powerportal-desktop
```

Relevant subfolders include:

- `themes`: generated JSON and `.applied.json` verification exports.
- `model-changes`: local records of confirmed write attempts and their outcomes.
- `updates`: verified downloaded update installers. Partial downloads are removed on handled failures. Verified installers can be retained after installation; do not mistake them for model backups.
- The profile also stores per-user interface preferences.

Metadata backups are stored locally and the exact backup path is displayed after a successful write. Exported documentation and downloaded/generated files use the destination selected by the user.

Treat backups, logs and exports as confidential: a full BIM backup can contain source/connection details, and change logs can contain old/new DAX. They are not automatically erased at uninstall. Do not upload them to public issues.

To reset UI preferences, select another language or expand the sidebar in the application. A full profile reset can also remove retained logs and backups; do not delete the profile unless you have closed the app and deliberately preserved everything needed.

## Network and accounts

- Local previews and bundled tools do not require a Power Portal account.
- The installed app checks public GitHub release metadata at startup. Its main-process updater downloads official assets over HTTPS after **Update now**. No model names, expressions, rows or credentials are included in update requests.
- Model-enabled local windows block arbitrary remote web requests.
- Consulting links and videos open the default browser on request.
- TV Tool uses an isolated online presentation window for published Power BI/Microsoft pages. It does not share local model access; its Microsoft login is separate and does not persist between sessions.
- DirectQuery queries can access original sources through Power BI and may need network access and existing source credentials.
- Email requires a configured mail client. Use **Copy email** if none is available.

There are no API keys, passwords, portal credentials or source-code configuration files to supply for installation.

[Installation](INSTALLATION.md) · [Usage and safety](USAGE.md) · [Update behavior](UPDATES.md)
