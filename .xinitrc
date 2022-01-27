setxkbmap -model abnt2 -layout br -variant abnt2 
feh --bg-scale /home/lcc/Pictures/blue-dark-full.jpg
# xrandr --output DP-1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-2 --off --output HDMI-1 --off --output HDMI-2 --mode 1920x1080 --pos 0x0 --rotate normal --output DVI-D-1 --off
# dwmstatus 2>&1 >/dev/null &
# xrandr --output DP-1 --primary --mode 1920x1080 --pos 1080x0 --rotate normal --output DP-2 --off --output HDMI-1 --off --output HDMI-2 --mode 1920x1080 --pos 0x0 --rotate right --output DVI-D-1 --off
xmobar -x 0 $HOME/.config/mydotfiles/.xmobarrc &
picom &
exec xmonad
