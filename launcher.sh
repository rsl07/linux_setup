#!/bin/bash

unset id_focus
unset id_launcher

if wmctrl -l | grep -q "rsl launcher"
then

	id_focus=$(xdotool getwindowfocus)
	id_launcher=$(xdotool search --name "rsl launcher")
	
	if [ "$id_focus" -eq "$id_launcher" ]
	then

		xdotool windowclose $id_launcher

	else

	    echo "launcher opened but not focus"
	    
	    wmctrl -a "rsl launcher"

	fi

else 

	search=$(xrandr | grep "+1920+")

	if [[ "$search" != "" ]]
    then

    	#dual screen
    	terminator --geometry=960x200+2400+720 -T "rsl launcher" -p "launcher"


	else
		# monoscreen
		terminator --geometry=960x200+480+360 -T "rsl launcher" -p "launcher"

	fi
fi

