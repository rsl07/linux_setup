#!/bin/bash

if wmctrl -l | grep -q "rsl second terminal"
then

	id_focus=$(xdotool getwindowfocus)
	id_terminal=$(xdotool search --name "rsl second terminal")
	
	if [ "$id_focus" -eq "$id_terminal" ];
	then

		echo "terminal opened but focus"

		xdotool windowminimize $id_terminal

	else

	    echo "second terminal opened"
	    
	    wmctrl -a "second terminal"
	fi

else 
    echo "second terminal not opened"
    
    terminator --geometry=960x1200+1440+0 -T "rsl second terminal"
	
	#set up dual screen home
	#terminator --geometry=960x1200+2880+0 -T "second terminal"

fi
