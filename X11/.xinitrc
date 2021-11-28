urxvtd -o -q -f
xrdb -merge ~/.config/X11/.Xresources
udiskie &
setxkbmap -option caps:escape


exec i3
