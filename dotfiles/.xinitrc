xinput set-prop 12 "libinput Natural Scrolling Enabled" 1
xinput --set-prop 12 "Coordinate Transformation Matrix" 0.7 0 0 0 0.7 0 0 0 1

feh --bg-max ~/Dotfiles/sharing_data/gallery_data/backgrounds_jpg/wallpaperflare.com_wallpaper.jpg
picom &
slstatus &

st &
code &
google-chrome &
sleep 1 && xdotool key super+Shift+2 &
sleep 1.5 && xdotool key super+Shift+3 &

exec dwm
