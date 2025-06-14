#!/usr/bin/env bash

KALB=$(killall -SIGUSR2 albert)
# ALBIN="/usr/bin/albert &>/dev/null"
PIDALBERT=$(pidof albert >/dev/null)
RUNALB=$(hyprctl keyword exec albert)

checkkill() {
	if "$PIDALBERT"; then
		"$KALB"
		sleep 1
	fi
}

checkkill
$RUNALB
