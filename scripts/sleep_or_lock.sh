#!/usr/bin/env bash

choices="suspend\nlock"
chosen=$(echo -e "$choices" | dmenu )

case "$chosen" in
	suspend) systemctl suspend && slock;;
	lock) slock;;
esac

