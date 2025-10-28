#!/usr/bin/env bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Scripts for refreshing ags waybar, rofi, swaync, wallust

SCRIPTSDIR=$HOME/.config/hypr/default/scripts
# UserScripts=$HOME/.config/hypr/local/scripts
WAYBAR=$("${SCRIPTSDIR}/waybar.sh")

kill_waybar () {
	WB_PS=$(pgrep -u $UID -f "bash $SCRIPTSDIR/waybar.sh")
	for ps in "${WB_PS[@]}"; do
		pkill "$ps"
	done
}

# Kill already running processes
kill_ps () {
	_ps=(rofi)
	for _prs in "${_ps[@]}"; do
    	if pidof "${_prs}" >/dev/null; then
      	pkill "${_prs}"
    	fi
	done
}

kill_waybar
kill_ps

sleep 0.3
#Restart waybar

$WAYBAR
# relaunch swaync

exit 0
