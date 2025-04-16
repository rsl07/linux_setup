#!/bin/bash

if wmctrl -l | grep -q  "smeca terminal (smeca -- shell)"
then

	id_focus=$(xdotool getwindowfocus)
	id_terminal=$(xdotool search --name "smeca -- shell")

	echo $id_terminal
	
	if [ "$id_focus" -eq "$id_terminal" ];
	then

		echo "smeca terminal opened but focus"

		xdotool windowminimize $id_terminal

	else

	    echo "smeca terminal opened"
	    
	    wmctrl -a "smeca terminal (smeca -- shell)"
	fi

else 
    echo "smeca terminal not opened"
    
    terminator --geometry=960x1200+1000+0 -T "smeca terminal (smeca -- shell)" -p smeca
	

fi
