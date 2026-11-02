# インストールガイド

<!-- language-selector -->
[🇺🇸 English](../INSTALLATION.md) · [🇧🇷 Português](../pt-BR/INSTALLATION.md) · [🇪🇸 Español](../es/INSTALLATION.md) · [🇨🇳 简体中文](../zh-CN/INSTALLATION.md) · [🇫🇷 Français](../fr/INSTALLATION.md) · [🇯🇵 日本語](INSTALLATION.md) · [🇮🇳 हिन्दी](../hi/INSTALLATION.md) · [🇸🇦 العربية](../ar/INSTALLATION.md)
<!-- /language-selector -->

[ホームに戻る](../../README.ja.md)

<a name="requirements"></a>
## 必要条件

Windows 10/11 x64、インストール用の管理者権限、外部ツールに対応する Power BI Desktop のエディションが必要です。アプリは自己完結型の Windows インストーラーとして配布されます。エンドユーザーに PHP、Node.js、.NET SDK、Git、GitHub アカウントは不要です。

ダウンロードとインストールするランタイムファイルのために約 1 GB の空きディスク容量を確保し、自分のエクスポートやバックアップ用に追加の容量も確保してください。

<a name="simple-installation"></a>
## 簡単なインストール

1. [最新 Release](https://github.com/luisgnserra/powerportaldesktop/releases/latest) を開きます。
2. **Assets（添付ファイル）**から、このリリースの `PowerPortal-Setup-1.7.3-x64.exe` をダウンロードします。自動生成のソースアーカイブをインストーラーとしてダウンロードしないでください。
3. 必要に応じて [SHA-256 を検証](#verify-the-installer)します。
4. 実行ファイルを起動し、ユーザーアカウント制御を承認します。
5. 表示される依存コンポーネントの条件を承諾し、フォルダーを選び、国旗で既定の言語を選択します。Windows の UI 言語が提案され、未対応の言語は英語になります。
6. ウィザードを完了します。
7. Power BI Desktop を閉じて開き直します。PBIX を開き、**外部ツール > Power Portal** を選びます。

インストールはコンピューター全体に適用され、デスクトップ/スタートメニューのショートカットと外部ツール登録を含みます。アプリの通常の使用時には権限の昇格は不要です。

![Power BI Desktop の外部ツールリボンにある Power Portal アイコン](../images/powerbi-external-tools.png)

PBIX を開いた状態で**外部ツール > Power Portal** をクリックしてください。画像の **Ferramentas externas** はポルトガル語のリボンラベルです。アイコンは**独立した補助ウィンドウ**を起動し、開いているファイルのローカルモデル接続を渡します。埋め込みビジュアルや内部レポートペインではありません。

![すでに Power BI で開いているファイルへの接続を提示する起動通知](../images/ja/connect-open-model.png)

Windows ショートカットから起動した場合は、開いているモデルの検出時に通知を表示します。**開いているモデルを検索**を選び、ファイル名を確認して接続してください。検出や接続だけでは変更しません。[図解手順を参照](SCREENSHOTS.md)してください。

**未署名のリリース：**Windows が SmartScreen や発行元不明の警告を表示する場合があります。SHA-256 は公開ファイルと一致することを確認するもので、発行元のデジタル署名ではありません。企業の制限を回避しないでください。承認が必要なら IT 部門に相談してください。

<a name="command-line-installation"></a>
## コマンドラインでのインストール

<a name="download-the-helper-and-review-it"></a>
### 補助スクリプトをダウンロードして確認

```powershell
$script = Join-Path $env:TEMP 'Install-PowerPortal.ps1'
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -UseBasicParsing 'https://raw.githubusercontent.com/luisgnserra/powerportaldesktop/v1.7.3/install.ps1' -OutFile $script
Get-Content -LiteralPath $script
& $script
```

このバージョン付き URL は補助スクリプトを 1.7.3 リリースに固定します。将来のリリースへ無断で追従しません。補助スクリプトはインストーラー名と SHA-256 チェックサムも固定し、HTTPS でダウンロードして実行前に検証し、インストーラーが正常終了した後にインストール登録を確認します。

TLS の行は、古い Windows PowerShell の既定設定に対し、この PowerShell プロセスで HTTPS TLS 1.2 を有効にします。Windows のセキュリティや実行ポリシーは変更しません。

<a name="unattended-installation"></a>
### 無人インストール

PowerShell を**管理者として**開き、次を実行します。

```powershell
& "$env:TEMP\Install-PowerPortal.ps1" -Silent
```

補助スクリプトは同じインストーラーをダウンロード/検証し、NSIS の `/S` スイッチを指定します。サイレントモードでは言語選択画面は表示されません。Windows の UI 言語を使用し、対応していなければ英語になります。保存済みのユーザー設定は引き続き優先されます。補助スクリプトは PBIX を開いたり編集したりしません。

サイレントモードには、すでに昇格済みの PowerShell セッションが必要です。UAC、Windows のセキュリティ制御、スクリプト実行ポリシー、アプリの制限を回避しません。展開前に Power Portal を閉じてください。[更新](#updates-and-downgrades)を参照してください。

<a name="download-only-or-choose-a-download-folder"></a>
### ダウンロードのみ、または保存先フォルダーの指定

```powershell
& "$env:TEMP\Install-PowerPortal.ps1" -DownloadOnly -DownloadDirectory "$env:USERPROFILE\Downloads\PowerPortal"
```

`-DownloadOnly` はチェックサムを検証しますが、インストーラーは実行せず、管理者権限も不要です。以前のダウンロードはチェックサムが一致する場合にのみ再利用します。既存ファイルが無効な場合は明示的にエラーになり、実行や無断の上書きはしません。

補助スクリプトのパラメーター：

| パラメーター | 既定値 | 目的 |
|---|---|---|
| `-Silent` | オフ | NSIS の無人インストールスイッチを使用。ダウンロードのみの場合を除き、管理者の PowerShell が必要。 |
| `-DownloadOnly` | オフ | 実行ファイルをダウンロード/キャッシュして検証し、インストールしない。 |
| `-DownloadDirectory` | `%TEMP%\PowerPortalDownloads` | 検証済みインストーラーの保存先。アプリのインストール先ではない。 |

未確認のスクリプトを `Invoke-Expression` に貼り付けないでください。ダウンロードしたスクリプトが実行ポリシーでブロックされる場合は、IT 部門に相談するか、実行形式のウィザードを使用してください。補助スクリプトは意図的に実行ポリシーを変更しません。

<a name="use-the-verified-executable-directly"></a>
### 検証済み実行ファイルを直接使用

チェックサムの検証後、管理者は次を実行できます。

```powershell
$setup = "$env:USERPROFILE\Downloads\PowerPortal-Setup-1.7.3-x64.exe"
$process = Start-Process -FilePath $setup -ArgumentList '/S' -Wait -PassThru
if ($process.ExitCode -ne 0) { throw "Installer failed: $($process.ExitCode)" }
```

ダウンロードとインストール後の外部ツール登録の両方を確認するため、PowerShell 補助スクリプトを推奨します。

<a name="verify-the-installer"></a>
## インストーラーの検証

**1.7.3 x64** の想定 SHA-256：

```text
CE8D4A1B88DC70F35827F5EBAEFED93E3DC92E6253560F601198D6F5F9CB1511
```

```powershell
$file = "$env:USERPROFILE\Downloads\PowerPortal-Setup-1.7.3-x64.exe"
$expected = 'CE8D4A1B88DC70F35827F5EBAEFED93E3DC92E6253560F601198D6F5F9CB1511'
if ((Get-FileHash -LiteralPath $file -Algorithm SHA256).Hash -ne $expected) {
    throw 'Checksum mismatch. Do not run this installer.'
}
```

チェックサムは [SHA256SUMS.txt](../../SHA256SUMS.txt) にも公開され、Release に添付されています。チェックサムは整合性を検査するもので、発行元への信頼の代わりにはなりません。

<a name="updates-and-downgrades"></a>
## 更新とダウングレード

新しい公式インストーラーをダウンロードし、既存のインストールに上書き実行してください。ファイル置換前に、インストーラーは対象の正確な実行ファイルパスにある Power Portal のみを終了しようとします。Power BI Desktop やほかの外部ツールは閉じません。終了できない場合はインストールを中止します。

無人更新の前に Power Portal を自分で閉じてください。インストール後に Power BI Desktop を再起動し、外部ツール登録を再読み込みしてください。ユーザーごとの言語/サイドバー設定とローカルバックアップは保持されます。

**1.6.2** 以降は、起動時チェックと**更新を確認**が新しい公式リリースを通知します。**今すぐ更新**はクリック後にのみインストーラーをダウンロード/検証し、現在のフォルダーで昇格したサイレント更新を開始します。Power BI は閉じません。インストール完了後に Power Portal を開き直してください。[更新の詳細](UPDATES.md)。

**1.6.1 以前は、1.6.2 への一度限りの手動アップグレードが必要です。**ダウングレードは認証されていません。旧インストーラーを使う前に作業を保存し、サポートに連絡してください。

<a name="uninstall"></a>
## アンインストール

**Windows の設定 > アプリ > インストールされているアプリ > Power Portal > アンインストール**を使用します（Windows 10 では**アプリと機能**）。

アンインストールはアプリと自身の `PowerPortal.pbitool.json` 登録を削除します。他のツールには影響しません。ユーザーごとの設定、テーマ、バックアップ、変更ログは意図的に保持します。保持データを手動削除する前に[データの保存場所](CONFIGURATION.md#data-locations)を確認してください。

<a name="offline-and-enterprise-deployment"></a>
## オフラインと企業向け展開

IT 部門は Release のインストーラーを一度ダウンロード/検証し、その同一ファイルを承認されたソフトウェア配布システムで配布して、管理者権限で `/S` を実行できます。公開 GitHub からのダウンロードにはインターネットが必要ですが、取得済み実行ファイルからのインストールに GitHub 認証は不要です。

このリポジトリは Microsoft Store パッケージ、MSI、winget カタログ登録、Chocolatey パッケージを提供しません。対応する配布形式は NSIS EXE と PowerShell 補助スクリプトです。

[設定](CONFIGURATION.md) · [トラブルシューティング](TROUBLESHOOTING.md)
