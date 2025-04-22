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

	N_scr=$(xrandr | grep " connected" | wc -l)

	echo $N_scr
	
	if [[ $N_scr == 3 ]]
	then 
    	terminator --geometry=960x200+500+700 -T "rsl launcher" -p "launcher"


	elif [[ $N_scr == 2 ]]
    then

    	#dual screen
    	terminator --geometry=960x200+2400+360  -T "rsl launcher" -p "launcher"


	elif [[ $N_scr == 1 ]]
	then

		# monoscreen
		terminator --geometry=960x200+480+360 -T "rsl launcher" -p "launcher"

	fi
fi

