#!/bin/bash

if wmctrl -l | grep -q  "aster terminal (smeca --shell)"
then

	id_focus=$(xdotool getwindowfocus)
	id_terminal=$(xdotool search --name "smeca --shell")

	echo $id_terminal
	
	if [ "$id_focus" -eq "$id_terminal" ];
	then

		echo "aster terminal opened but focus"

		xdotool windowminimize $id_terminal

	else

	    echo "aster terminal opened"
	    
	    wmctrl -a "aster terminal (smeca --shell)"
	fi

else 
    echo "aster terminal not opened"
    
    terminator --geometry=960x1200+1000+0 -T "aster terminal (smeca --shell)" -p aster
	

fi
