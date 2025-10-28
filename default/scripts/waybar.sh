#!/usr/bin/env bash

CONFIG="$HOME/.config/hypr/waybar"
WAYCONFIG="$CONFIG/config"
WAYSTYLE="$CONFIG/style.css"
EXECWAYBAR=$(hyprctl keyword exec "waybar -b bar --config ${WAYCONFIG}")

# start waybar if not started
if ! pgrep -x "waybar" > /dev/null; then
	$EXECWAYBAR
fi

# current checksums
current_checksum_config=$(md5sum "$WAYCONFIG")
current_checksum_style=$(md5sum "$WAYSTYLE")

# loop forever
while true; do
	# new checksums
	new_checksum_config=$(md5sum "$WAYCONFIG")
	new_checksum_style=$(md5sum "$WAYSTYLE")

	# if checksums are different
	if [ "$current_checksum_config" != "$new_checksum_config" ] || [ "$current_checksum_style" != "$new_checksum_style" ]; then
		# kill waybar
		killall waybar

		# start waybar
		$EXECWAYBAR

		# update checksums
		current_checksum_config=$new_checksum_config
		current_checksum_style=$new_checksum_style
	fi
done
