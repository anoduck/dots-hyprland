#!/usr/bin/env bash

KALB=$(killall -SIGUSR2 albert)
ALBIN="/usr/bin/albert &>/dev/null"
PIDALBERT=$(pidof albert >/dev/null)

if [[ $PIDALBERT ]]; then
	$KALB
fi

$ALBIN
