# Disable DPMS turning off the screen
xset -dpms
xset s off

# Disable bell
xset -b

# Set background color
# blue-grey dark
#xsetroot -solid "#263238"
# blue very dark
xsetroot -solid "#0d1117"

# Merge terminal configuration
xrdb -merge ~/.Xresources

exec i3
