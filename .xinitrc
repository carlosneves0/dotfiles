#!/bin/sh

export HOME=/home/neves
export PATH="$HOME/.bin:$PATH"
export LANG=zh_TW.UTF-8
export TERMINAL=alacritty
export EDITOR=atom
export ATOM_HOME="$HOME/.config/atom"

# TODO: auto detect secondary display + auto config
export DISPLAY0=eDP-1-1 DISPLAY1=HDMI-1-2
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --dpi 150 --output "$DISPLAY0" --mode 1920x1080 --primary --output "$DISPLAY1" --mode 1920x1080 --right-of "$DISPLAY0"
xrandr --dpi 150 --output "$DISPLAY0" --mode 1920x1080 --primary

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

wallpaper &

export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'
fcitx &

exec i3
