# Release notes

<!-- language-selector -->
[🇺🇸 English](CHANGELOG.md) · [🇧🇷 Português](CHANGELOG.pt-BR.md) · [🇪🇸 Español](CHANGELOG.es.md) · [🇨🇳 简体中文](CHANGELOG.zh-CN.md) · [🇫🇷 Français](CHANGELOG.fr.md) · [🇯🇵 日本語](CHANGELOG.ja.md) · [🇮🇳 हिन्दी](CHANGELOG.hi.md) · [🇸🇦 العربية](CHANGELOG.ar.md)
<!-- /language-selector -->

## 1.8.2

**Refresh launch fixes**

Refresh Analysis is now immediately below Relationship map in the sidebar and home gallery. Native button discovery ignores the duplicate Home tabs belonging to DAX Query View and TMDL View, avoiding “Ambiguous Power BI control: home”. Select Report, Data or Model view in Power BI if native controls are unavailable.

Start stays disabled while confirmation, validation and trace startup are pending; Finish capture is hidden until capture is ready. This prevents a second launch from incorrectly reporting “Finish the active Power BI operation before refreshing”. A failure proven to occur before native invocation stops the trace, checks cleanup and permits retry. If invocation might already have occurred, the error remains visible and the capture stays pending: review Power BI, finish its refresh and close dialogs before Finish capture. Repeated requests resume the existing capture instead of starting another refresh. Legitimate active Power BI operations still need to finish first.

## 1.8.1

**Animated home cards**

The twelve home cards now use the same navy-blue base as the sidebar (#041e43), with original text-free vector scenes. Each tool retains its own central illustration, enriched with data panels, charts, a database, orbital paths, a grid and floating satellites. Signal lines move gently. No external images, scripts or services are loaded for these covers.

Hover or focus a card with the keyboard to reveal a golden frame and glow, a light sweep, a brighter scene, a circular launch arrow and a gold action. Pressing gives immediate visual feedback without delaying navigation. Enter/Space still activate the same tool. Windows/browser reduced-motion preferences stop movement while keeping static highlights and visible focus. Titles and actions remain outside the artwork and follow the selected language. These screenshots show static normal/hover states, not video.

## 1.8.0

**Refresh Analysis** — Measure native refresh. Compare timings and rows.

Connect to the intended open PBIX, open Refresh Analysis and select Refresh and analyze. Confirm the file name. The trace starts before the native Home > Refresh button is invoked; tables are not refreshed sequentially through TOM. Keep Power BI open and resolve source credentials, errors or cancellation there. A BIM backup cannot restore refreshed data.

Observed activity is the union of engine intervals mapped exactly to each table, avoiding double counting of nested phases. It is not pure source-query time or a proven critical path. The observed total runs from launch until completion is detected, includes UI/polling overhead, and excludes the later row counts. Missing table mappings are reported separately.

Automatic completion requires observed refresh-command completion and a ready Power BI window. Close native result dialogs. Manual Finish capture is always incomplete, not evidence of success and not a cancellation of refresh. Engine/trace errors are explicit. If capture is interrupted, no completed analysis is claimed.

Rows are counted after capture, outside the timer. DirectQuery/DirectLake are not queried. Missing events do not mean zero time. Up to 30 analyses per model are kept on this computer; none are sent to the portal.

## 1.7.5

- Relationship map is now immediately after TV Tool in the sidebar and home gallery.
- The generic Real model data block is removed from Calendar generator and Component library. Their own read/write controls remain; the real-period button uses the calendar selected inside the tool.
- Home covers are redrawn as local vector illustrations without embedded text. Titles, descriptions and actions remain outside the artwork and follow the selected language.
- Drag a source column onto another table to open a real-relationship dialog and choose its destination column. Dropping on a column preselects it. Review cardinality, filter direction and active state, then Validate and Apply with native confirmation and BIM backup.

### Assets

- `PowerPortal-Setup-1.7.5-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

## 1.7.4

- The animated Power Portal header now contains the file name, connection status and all five read/import/discovery/update buttons. The separate toolbar below the banner has been removed to free workspace. Content wraps inside the header on smaller windows and in all eight languages, including Arabic. Connection confirmations, notices and update behavior are unchanged.

### Assets

- `PowerPortal-Setup-1.7.4-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

## 1.7.3

- Relationship arrows now sit directly on the curve and rotate along its local direction, including diagonal and reversed links.
- Larger 36 × 26 SVG arrowheads are always black with a 3-unit white outline, independently of the relationship line color.
- Single-direction filtering remains destination to source; bidirectional filtering shows two opposite arrows. Automatic filtering retains its question-mark indicator. This is a visual-only change.

### Assets

- `PowerPortal-Setup-1.7.3-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

## 1.7.2

- The group introduction opens on the first diagram visit of each app session. Reopen it with **How to organize with groups**. SAP and Excel are illustrative system examples, not new connectors or official logos. Empty groups are visible drop zones. Dropping on a highlighted group assigns the table; dropping outside keeps its current group.
- Separate tables by system, subject, facts or dimensions. Create a group and drag a table by its title into it. The destination group is highlighted.
- Your diagram is automatically saved on this computer for the same model: groups, images, colors and positions. Export JSON to keep a copy or import it later. Check the diagram-saved message.
- Visual organization does not change tables, data sources or the native Power BI layout. To remove a table from its group, select No group in the inspector.

### Assets

- `PowerPortal-Setup-1.7.2-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

## 1.7.1

- Prepare relationships by clicking or dragging exact column endpoints; review an orange dashed draft and apply with confirmation/backup. Existing pairs open for editing instead of creating duplicates.
- Right-click line menu for editing, local colors and confirmed deletion.
- More than 30 table/group icons, local PNG/JPEG group images and group-background dragging. Images are normalized and embedded in saved/exported diagrams.
- Automatic Power BI date/time tables are hidden by default with a saved visibility toggle; ordinary hidden business tables remain visible. Expand any table to select all columns.
- Refresh the diagram from Power BI after external edits while preserving surviving visual customization.
- Native Desktop autodetection with prior confirmation/BIM backup and an explicit finish/review flow; concurrent model writes, switching and updates remain blocked until completion.
- Eight-language documentation and all 19 application screenshots per language refreshed for 1.7.1. Genuine Power BI ribbon image remains shared in Portuguese.

### Assets

- `PowerPortal-Setup-1.7.1-x64.exe`
- `SHA256SUMS.txt`
- `install.ps1`

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
