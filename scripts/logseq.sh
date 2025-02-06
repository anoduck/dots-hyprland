#!/usr/bin/env bash
LSDIR="$HOME/logseq"
LSBIN="$LSDIR/Logseq"

$LSBIN & hyprctl dispatch tagwindow +logseq
