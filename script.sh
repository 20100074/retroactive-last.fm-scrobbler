#!/usr/bin/env bash

function get_info(){
export ALBUM=$(osascript -e 'tell application "iTunes" to get album of current track')
export ARTIST=$(osascript -e 'tell application "iTunes" to get artist of current track')
export SONG=$(osascript -e 'tell application "iTunes" to get name of current track')
export DATE=$(date +%Y-%m-%d.%H:%M)

export DURATION=$(echo $(osascript -e 'tell application "iTunes" to return the duration of current track' \/ 1) | bc)
export CURRENT_POSITION=$(echo $(osascript -e 'tell application "iTunes" to return the player position') \/ 1 | bc)
}

while true; do 
	proc_info=$(/usr/bin/pgrep -x "iTunes" > /dev/null 2>&1; echo $?)
	playerstate=$(osascript -e 'tell application "iTunes" to return player state as string')
	if [[ $proc_info -ne 0 ]] || [[ $playerstate = 'paused' ]] || [[ $playerstate = 'stopped' ]]; then
	# iTunes is not running or paused. exit.
		/usr/local/bin/terminal-notifier -title "Last.fm scrobbler" -message "iTunes is not running or paused. exiting."
		break
	fi
	
	# iTunes is playing music.
	get_info
	/usr/local/bin/terminal-notifier -title "Last.fm scrobbler" -message "$SONG by $ARTIST [$CURRENT_POSITION : $DURATION]"
	/usr/local/bin/scrobbler scrobble --album "$ALBUM" {YOUR_LASTFM_USERNAME} "$ARTIST" "$SONG" $DATE
	/bin/sleep $(/bin/echo $DURATION \- $CURRENT_POSITION \+ 1 | bc);
done

/usr/local/bin/terminal-notifier -title "Last.fm scrobbler" -message "End of this Application. Exiting."

