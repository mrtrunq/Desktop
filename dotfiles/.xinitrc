xinput set-prop 12 "libinput Natural Scrolling Enabled" 1
xinput --set-prop 12 "Coordinate Transformation Matrix" 0.7 0 0 0 0.7 0 0 0 1

feh --bg-max ~/Unix/sharing_data/share_gallery/backgrounds_jpg/wallpaperflare.com_wallpaper.jpg
picom &
sxhkd &
slstatus &

google-chrome &
sleep 0.5 && st &
code &
sleep 1.0 && xdotool key super+Shift+2 &
sleep 1.2 && xdotool key super+Shift+3 &

exec dwm
