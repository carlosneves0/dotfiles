#!/bin/sh

export HOME=/home/neves
export PATH="$PATH:$HOME/.bin"
export LANG=zh_TW.UTF-8
export TERMINAL=alacritty
export EDITOR=atom

# TODO: auto detect secondary display + auto config
display0=eDP-1
display1=HDMI-2
xrandr --dpi 150 --output "$display0" --mode 1920x1080 --primary --output "$display1" --mode 1920x1080 --right-of "$display0"
xrandr --dpi 150 --output "$display0" --mode 1920x1080 --primary

touchpad='FocalTechPS/2 FocalTech Touchpad'
xinput set-prop "$touchpad" 'libinput Tapping Enabled' 1
xinput set-prop "$touchpad" 'libinput Natural Scrolling Enabled' 1
# Accel Speed == Sensitivity (1.0 is the max value)
xinput set-prop "$touchpad" 'libinput Accel Speed' 1.0

mxmaster='MX Master 2S Mouse'
xinput set-prop "$mxmaster" 'libinput Accel Profile Enabled' 0, 1
xinput set-prop "$mxmaster" 'libinput Accel Speed' 1.0

# disable screen blanking
xset s off; xset -dpms

unclutter --timeout 1 --ignore-scrolling &

# wallpaper &

export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'
fcitx &

exec i3
