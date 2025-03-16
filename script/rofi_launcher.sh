#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers/type-1"
theme='style-1'

## Run
rofi -combi-modi drun,ssh \
     -show combi   \
     -theme ${dir}/${theme}.rasi
