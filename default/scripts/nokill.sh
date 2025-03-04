#!/usr/bin/env bash

if [ "$(hyprctl activewindow -j | jq -r ".class")" = "RetroShare" ]; then
    xdotool getactivewindow windowunmap
else
    hyprctl dispatch killactive ""
fi
