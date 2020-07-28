setxkbmap -model thinkpad60 -layout br
export _JAVA_AWT_WM_NONREPARENTING=1 
feh --bg-scale ~/Pictures/pacwall.png
picom &
dwmstatus 2>&1 >/dev/null &
exec dwm
