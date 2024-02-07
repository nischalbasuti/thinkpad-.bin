#!/bin/bash

if [[ "$XDG_SESSION_TYPE" == "wayland" ]]; then
  swaybg -i ~/Pictures/digital_ocean/tux-terminal.jpg -m fit
else
  ~/.fehbg
fi

