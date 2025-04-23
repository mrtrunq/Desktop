xinput set-prop 12 "libinput Natural Scrolling Enabled" 1
xinput --set-prop 12 "Coordinate Transformation Matrix" 0.7 0 0 0 0.7 0 0 0 1

picom &
sxhkd &
slstatus &
feh --bg-max ~/Unix/sharing_data/share_gallery/backgrounds_jpg/wallpaperflare.com_wallpaper.jpg

pcmanfm &
wezterm &
google-chrome &
sleep 1.2 && xdotool key alt+shift+c &
sleep 1.4 && xdotool key alt+shift+w &

exec dwm
