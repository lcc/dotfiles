setxkbmap -model abnt2 -layout br -variant abnt2 
export _JAVA_AWT_WM_NONREPARENTING=1
feh --bg-scale /home/lucas/Pictures/croc-dad.jpg
xrandr --output DisplayPort-0 --mode 1920x1080 --rate 144.00
xrandr --output DisplayPort-1 --mode 1920x1080 --rate 60.00
xrandr --output DisplayPort-1 --left-of DisplayPort-0
dwmstatus 2>&1 >/dev/null &
picom &
exec dwm
