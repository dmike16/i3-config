#!/usr/bin/env bash
# Manage logout with rofi

dir="$HOME/.config/rofi/launchers/type-1"
theme='style-1'
option=`echo "home_valle\nhome_rm" | rofi -width 600 -dmenu -theme ${dir}/${theme}.rasi -p monitor:`

dir_xrand="$HOME/.config/i3/script"

case $option in
    home_valle)
        sh "$HOME/home1.sh"
        ;;
    home_rm)
        sh echo -e "TODO"
        ;;
esac
