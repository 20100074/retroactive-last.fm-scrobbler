
# Last.fm Scrobbler for iTunes on Retroactive

## Screenshot
![Screenshot](screenshot.png)

## Before Use
- Register Last.fm application and get API key from them.
	- [Link](https://www.last.fm/api)
- Replace `{YOUR_LASTFM_USERNAME}` to your own last.fm account name.
- Register your account with `scrobbler add-user`.

## Dependencies
- pip(3)
	- `scrobbler`: [Link](https://pypi.org/project/scrobblerh/)
- brew
	- `terminal-notifier` (If you don't need Desktop notification, you don't have to install this. Make sure delete `terminal-notifier` line in the script before use.)

## TODO
- Detection of Skip
- rewrite `terminal-notifier` to `osascript`
- more user-friendly script(s) and application
- Add automater application.

## Tested Environment
- MacBook Pro 2016 13inch (Intel)
	- macOS Big Sur 11.2.1 (x86_64)
	- iTunes 10.7 64bit
		- Installed using Retroactive 1.9
