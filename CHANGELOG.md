# Release notes

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
