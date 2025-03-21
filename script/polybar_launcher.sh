#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g')
# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log
polybar i3bar --config=$HOME/.config/polybar/config.ini 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."
