#!/usr/bin/env bash

choices="working\ngaming"
chosen=$(echo -e "$choices" | dmenu )

case "$chosen" in
	working) picom& ;;
	gaming) kill $(pidof picom);;
esac

