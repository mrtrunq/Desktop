xinput set-prop 12 "libinput Natural Scrolling Enabled" 1
xinput --set-prop 12 "Coordinate Transformation Matrix" 0.7 0 0 0 0.7 0 0 0 1

feh --bg-max ~/Unix/sharing_data/share_gallery/backgrounds_jpg/wallpaperflare.com_wallpaper.jpg
picom &
sxhkd &
slstatus &

wezterm &
sleep 1 && google-chrome &
sleep 1.4 && pcmanfm &
sleep 1.6 && xdotool key super+alt+f &
sleep 1.8 && xdotool key super+alt+b &

exec dwm
