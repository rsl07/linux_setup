#!/bin/zsh



nautilus -w /home/d51680 & disown

sleep 0.3

/home/d51680/Config/linux/left_view.sh

	# wmctrl -r :ACTIVE: -b add,maximized_vert && wmctrl -r :ACTIVE: -e 0,$X,$Y,$W,$H