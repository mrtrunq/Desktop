xinput set-prop 12 "libinput Natural Scrolling Enabled" 1
xinput --set-prop 12 "Coordinate Transformation Matrix" 0.7 0 0 0 0.7 0 0 0 1

feh --bg-max ~/Unix/sharing_data/share_gallery/backgrounds_jpg/wallpaperflare.com_wallpaper.jpg
picom &
sxhkd &
slstatus &

google-chrome &
sleep 0.3 && st &
sleep 0.5 && xdotool key super+Shift+2 &

exec dwm
