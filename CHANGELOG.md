# Release notes

## 1.7.0

- New Desktop-only **Relationship map**, the eleventh tool: draggable table boxes, pan/zoom, cardinality/filter-direction indicators and inactive dashed links.
- Custom Facts/Dimensions/business groups with names, icons, colors and collective dragging. Friendly table headings and colored relationship lines.
- Automatic per-model visual-layout saving and validated JSON import/export, with visible save failures and retry. Visual properties do not rename model objects or alter the native Power BI diagram.
- Live TOM creation, editing, activation/deactivation and deletion of relationships. Every edit requires explicit native confirmation, metadata backup and stale-state protection; existing RLS/integrity settings are preserved.
- Imported projects remain read-only; unsupported relationships and engine validation failures are explicit.
- Eight-language interface, compact eleven-item sidebar without scrolling, refreshed installer and English guides with 20 screenshots.

### Assets

- `PowerPortal-Setup-1.7.0-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

## 1.6.4

- Prominent TV Tool example at the top opens the working official dashboard in the default browser; local illustrative slides remain available.
- Available-update notification has stronger colors, larger version text, a sticky banner and gentle animation respecting reduced-motion preferences.
- No persistent "up to date" line. Connected state is compact in the header, with the PBIX-copy reminder in its tooltip.
- Theme JSON import is highlighted; **Send theme directly to Power BI** is now at the end of the page. Removed redundant explanatory paragraphs from the tool, retaining native confirmation and documented automation limitations.
- All new text supports eight languages. Updated installer, helper, checksum and 18 screenshots, including the end-of-page theme action.

### Assets

- `PowerPortal-Setup-1.6.4-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

## 1.6.3

- Stable version increment to allow users on 1.6.2 to test the real update notification and **Update now** flow.
- No functional changes; includes the same consent-based updater and ten tools.
- Refreshed installer/checksum/helper, documentation and screenshots for 1.6.3.

Keep 1.6.2 installed to test: reopen the application or click **Check for updates**. Choose **Update now** only when ready to install. The maintainer did not update the user's local installation during publication.

### Assets

- `PowerPortal-Setup-1.6.3-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

## 1.6.2

- Startup checks for the latest official stable GitHub Release in the installed application.
- **Update now** downloads and verifies the exact x64 EXE using GitHub's SHA-256 asset digest and size, then starts an elevated silent installer in the current installation folder.
- Installation only happens after the user's click and Windows authorization. Power BI is not closed; unsent-edit warnings are displayed.
- Update/model-write concurrency protection, bounded HTTPS downloads, explicit offline/checksum/UAC errors and retry controls.
- Eight-language notification, manual **Check for updates**, refreshed screenshots and English update guide.

The application remains unsigned. Install 1.6.2 manually once if you are on 1.6.1 or older. Reopen Power Portal after an update finishes.

### Assets

- `PowerPortal-Setup-1.6.2-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

Validated version comparisons, official release validation, streamed hash/size rejection, partial cleanup, installer launch arguments, UI consent/localization/error behavior and packaged registration. No actual application update or customer model write was performed during automated tests.

## 1.6.1

- Sidebar catalog fits the supported window height without a navigation scrollbar, in all eight languages and both expanded/collapsed modes.
- **Consulting and training** moved below **About the development**, above the ownership logos.
- Startup notice detects available open Power BI models when launched independently and offers explicit connection.
- Connected notice explains querying and confirmed changes, with a PBIX-copy reminder and a model refresh button.
- English illustrated documentation covers the External Tools ribbon, every tool, model selection, queries and direct-send buttons.
- Updated installer, pinned PowerShell helper, checksums and release manifest remain synchronized.

Validated the sidebar at 680, 768 and 900 pixel window heights in eight languages, startup/selection/refresh without model writes, and packaged registration/installer closure. Documentation screenshots use synthetic data; no customer file was changed.

### Assets

- `PowerPortal-Setup-1.6.1-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

The application remains unsigned. Direct theme sending still uses visible Desktop UI Automation. See the [illustrated guide](docs/SCREENSHOTS.md) and [usage/safety guide](docs/USAGE.md).

## 1.6.0

Initial public installer release in this distribution-only repository.

- Consulting area for Power BI, Microsoft Fabric, data engineering and complete data solutions.
- In Company training link, two featured videos, WhatsApp/email contact actions and copy-email option.
- Eight bundled languages: Portuguese, English, Spanish, Simplified Mandarin Chinese, French, Japanese, Hindi and Arabic.
- Saved per-user language preference, two-row flags and Arabic right-to-left layout.
- Installer language selection with flags and Windows UI language suggestion.
- Existing ten tools, home gallery, collapsible navigation, ownership/development information and local model integration.
- Confirmed theme sending through visible Windows UI Automation; export/current-theme verification retained.
- English installation/configuration/safety/troubleshooting documentation and a checksum-verifying PowerShell installation helper.

### Distribution assets

- `PowerPortal-Setup-1.6.0-x64.exe` — Windows x64 NSIS installer.
- `SHA256SUMS.txt` — installer checksum.
- `install.ps1` — pinned download/installation helper.

### Known limitations

The installer is unsigned. Theme sending still uses Desktop's visible import dialog. Report visuals cannot be placed using TOM. Calendar writes require Desktop refresh. No automatic updater, winget/Chocolatey catalog entry, MSI, macOS, ARM64 or Report Server package is provided.

No user model was modified during validation of this release's distribution helper.
