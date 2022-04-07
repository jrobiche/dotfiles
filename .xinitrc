# disable DPMS turning off the screen
xset -dpms
xset s off

# disable bell
xset -b

# set background color
# blue-grey 900 dark
xsetroot -solid "#000a12"

# merge terminal configuration
xrdb -merge ~/.Xresources

# start i3
exec i3
