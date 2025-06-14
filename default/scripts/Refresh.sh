#!/usr/bin/env bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Scripts for refreshing ags waybar, rofi, swaync, wallust

SCRIPTSDIR=$HOME/.config/hypr/default/scripts
UserScripts=$HOME/.config/hypr/local/scripts

# Kill already running processes
_ps=(waybar rofi qclip)
for _prs in "${_ps[@]}"; do
    if pidof "${_prs}" >/dev/null; then
        pkill "${_prs}"
    fi
done

sleep 0.3
#Restart waybar
WAYCONFIG="$HOME/.config/hypr/waybar/config"
hyprctl keyword exec waybar -b "bar" --config "$WAYCONFIG"
# relaunch swaync

exit 0
