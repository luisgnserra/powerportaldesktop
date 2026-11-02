# Distribution release maintenance

<!-- language-selector -->
[🇺🇸 English](RELEASING.md) · [🇧🇷 Português](pt-BR/RELEASING.md) · [🇪🇸 Español](es/RELEASING.md) · [🇨🇳 简体中文](zh-CN/RELEASING.md) · [🇫🇷 Français](fr/RELEASING.md) · [🇯🇵 日本語](ja/RELEASING.md) · [🇮🇳 हिन्दी](hi/RELEASING.md) · [🇸🇦 العربية](ar/RELEASING.md)
<!-- /language-selector -->

[Back to home](../README.md)

This is a distribution-only repository. **Every application adjustment must ship with an updated installer Release and corresponding documentation**, so download links, screenshots and behavior do not drift.

## Required release checklist

1. Build/test the application in its private working tree. Never copy or push that source tree into this repository.
2. Increment the application/installer version. Use a new immutable tag such as `v1.6.2`; do not replace an old release's executable with different bytes.
3. Compute SHA-256 and size of the **final tested installer**.
4. Update `release.json`, `SHA256SUMS.txt`, and the version/hash pinned in `install.ps1`.
5. Update README and installation commands, relevant usage/configuration/troubleshooting instructions, and CHANGELOG in all eight documentation languages. Keep English as the main README, with flag links to `README.pt-BR.md`, `README.es.md`, `README.zh-CN.md`, `README.fr.md`, `README.ja.md`, `README.hi.md` and `README.ar.md`. Localized guides live under the matching `docs/<locale>/` directory. Do not translate commands, hashes, file names, model identifiers or API enum values.
6. Capture the affected application screens from the new package in all eight languages with synthetic, non-confidential data. English images live in `docs/images/`; other language images live in `docs/images/<locale>/`. Refresh each illustrated guide and set `screenshotsVersion` in `release.json` to the application version. The original genuine Power BI ribbon image stays Portuguese; explain this rather than falsely relabeling Power BI. Never publish real model names/data or screenshots exposing credentials.
7. Review the exact tracked-file allowlist. Allowed content is documentation, screenshot PNGs, installation helper/configuration and distribution validation. No application source, project files, model files, credentials or developer dependencies.
8. Run distribution validation locally. GitHub Actions also validates the allowlist/metadata, when hosted execution is available for the account.
9. Commit/push the distribution-only changes and create a **draft** Release with the new installer, checksum and helper as assets.
10. Compare uploaded asset size/hash against the local installer, then publish as the latest release.
    The built-in updater requires the matching versioned EXE asset with an `uploaded` state, positive bounded size and GitHub `sha256:` digest. Never omit these checks or publish a prerelease/draft as the stable update channel.
11. Test the public versioned helper with `-DownloadOnly`, without credentials. Verify the resulting SHA-256 and latest-release URL before announcing completion.
12. Validate all eight language selectors, local links/heading anchors and localized PNGs. Documentation-only translations can be published on `main` without changing installer bytes or creating a new application version; never move an existing release tag.

End users download the EXE from **Release assets**. Large installer binaries do not belong in the Git tree. The automatic source archives contain only the distribution repository, not application source.

Keep older releases and version-pinned helper URLs available. `releases/latest` directs new visitors to the current release; older versioned commands intentionally retain their original version.

## If hosted validation is unavailable

Do not claim the GitHub Actions job passed. Run the same PowerShell validation step locally, report the hosted-runner restriction honestly and preserve the workflow for later use. A hosted-runner restriction does not by itself block downloading public Release assets.
