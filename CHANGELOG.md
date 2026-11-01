# Release notes

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
