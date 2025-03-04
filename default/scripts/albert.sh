#!/usr/bin/env bash

KALB=$(killall -SIGUSR2 albert)
ALBIN="/usr/bin/albert &>/dev/null"
PIDALBERT=$(pidof albert >/dev/null)

# start waybar if not started
if ! pgrep -x "albert" > /dev/null; then
	hyprctl keyword exec albert
fi


if [[ $PIDALBERT ]]; then
	$KALB
fi

$ALBIN
