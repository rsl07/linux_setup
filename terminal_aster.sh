#!/bin/bash

if wmctrl -l | grep -q "aster terminal"
then

	id_focus=$(xdotool getwindowfocus)
	id_terminal=$(xdotool search --name "aster terminal")
	
	if [ "$id_focus" -eq "$id_terminal" ];
	then

		echo "aster terminal opened but focus"

		xdotool windowminimize $id_terminal

	else

	    echo "aster terminal opened"
	    
	    wmctrl -a "aster terminal"
	fi

else 
    echo "aster terminal not opened"
    
    terminator --geometry=960x1200+1800+0 -T "aster terminal" -p aster
	

fi
