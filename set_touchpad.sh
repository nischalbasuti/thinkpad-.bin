touchpad_id=$(xinput list | grep 'SynPS/2 Synaptics TouchPad' | awk -F'=' '{print $2}' | awk '{print $1}')

speed_property_id=$(xinput list-props $touchpad_id | grep 'libinput Accel Speed (' | awk -F'[()]' '{print $2}')

tap_property_id=$(xinput list-props $touchpad_id | grep 'libinput Tapping Enabled (' | awk -F'[()]' '{print $2}')

xinput --set-prop $touchpad_id $speed_property_id 0.9
xinput --set-prop $touchpad_id $tap_property_id 1

