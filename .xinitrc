setxkbmap -model abnt2 -layout br -variant abnt2 
feh --bg-scale ~/pictures/blue-dark-full.jpg
xmobar -x 0 ~/.config/xmobar/.xmobarrc &
picom &
exec xmonad
