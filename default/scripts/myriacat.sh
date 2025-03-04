#!/usr/bin/env bash
MCATDIR="$HOME/Sandbox/myriacat"
MCATBIN="$MCATDIR/myriacat"

$MCATBIN & hyprctl dispatch tagwindow +myriacat
