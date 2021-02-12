
# Last.fm Scrobbler for iTunes on Retroactive

- For English README, please see README_en.md

## スクリーンショット
![スクリーンショット](screenshot.png)

## 使う前に
- Last.fmのホームページでAPIキーを申請してください。
	- [リンク](https://www.last.fm/api)
- スクリプト内部の`{YOUR_LASTFM_USERNAME}`を，Last.fmのユーザー名に書き換えてください。
- `scrobbler add-user`でアカウントを追加してください。

## 依存関係
- `pip3`
	- `scrobbler`: [Link](https://pypi.org/project/scrobblerh/)
- `brew`
	- `terminal-notifier` (デスクトップ通知が必要ない場合，インストールは不要です。スクリプトの使用前に`terminal-notifier`の行を削除することを忘れないでください。)

## 今後の更新予定
- 音楽の再生中にスキップをしたときの処理
- `terminal-notifier`の依存関係を，`oscascript`に書き換えることを通じて，解消する。
- もうちょっと詳細にインストール方法の解説をする+もうちょっとユーザーフレンドリーなスクリプト/アプリケーションにする
- Automatorアプリケーションを追加する。

## テスト環境
- 以下の環境で動作することを確認しています。
	- MacBook Pro 2016 13inch (Intel)
	- macOS Big Sur 11.2.1 (x86_64)
	- iTunes 10.7 64bit
		- Installed using Retroactive 1.9
