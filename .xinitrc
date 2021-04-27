# Disable DPMS turning off the screen
xset -dpms
xset s off

# Disable bell
xset -b

# Set background color
xsetroot -solid "#263238"

# Merge terminal configuration
xrdb -merge ~/.Xresources

exec i3
