#xrandr --output DVI-I-0 --mode "1600x900"
setxkbmap -model abnt2 -layout br -variant abnt2 
export _JAVA_AWT_WM_NONREPARENTING=1 
feh --bg-scale /home/lucas/Pictures/croc-dad.jpg
compton --corner-radius 15 --blur-background &
exec dwm
