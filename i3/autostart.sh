#!/bin/bash
$HOME/.config/i3/i3_monitor.sh
dunst &
picom --experimental-backends  --config $HOME/.config/i3/picom/picom.conf &
nitrogen --restore &
systemctl --user start pulseaudio &
#xautolock -time 10 -locker "systemctl suspend" -corners 0-00 -cornersize 20 -detectsleep &
dropbox start &
sleep 1 && notify-send "Welcome back, $USER"
