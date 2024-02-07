#!/usr/bin/env bash

is_hdmi_connected=$(xrandr | grep -E "HDMI-1.* connected")

if [ -z "$is_hdmi_connected" ]; then
    ~/.screenlayout/only-internal.sh
    echo "HDMI not connected"
else
    ~/.screenlayout/only-external.sh # hacky way to move all workspaces to external display
    ~/.screenlayout/external-and-internal.sh
    echo "HDMI connected"
fi

~/.fehbg
