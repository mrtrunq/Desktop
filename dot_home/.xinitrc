xinput set-prop 12 "libinput Natural Scrolling Enabled" 1
xinput --set-prop 12 "Coordinate Transformation Matrix" 0.7 0 0 0 0.7 0 0 0 1
feh --bg-max ~/Dotfiles/sharing_data/gallery_data/backgrounds_jpg/road-mountains-tarmac-sunrise-morning-macos-big-sur-stock-5k-3840x2160-3996.jpg
st &
picom &
slstatus &

exec dwm
