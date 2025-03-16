#!/usr/bin/env bash
# Manage logout with rofi

dir="$HOME/.config/rofi/launchers/type-1"
theme='style-1'
option=`echo "suspend\nlock screen\nlogout\nreboot\npoweroff\nKill user $USER" | rofi -width 600 -dmenu -theme ${dir}/${theme}.rasi -p system:`

case $option in
    suspend)
        sudo  /usr/bin/systemctl syspend
        ;;
    'lock screen')
        sh $HOME/.config/i3/script/lock.sh
        ;;
    logout)
        i3-nagbar -t warning -m 'Are you sure you  want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'
        ;;
    reboot)
        /usr/bin/systemctl reboot
        ;;
    poweroff)
        /usr/bin/systemctl poweroff
        ;;
    'kill user $USER')
        loginctl kill-user $USER
        ;;
esac
