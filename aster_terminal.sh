#!/bin/bash

if wmctrl -l | grep -q "rsl aster terminal"
then

	id_focus=$(xdotool getwindowfocus)
	id_terminal=$(xdotool search --name "rsl aster terminal")
	
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
    
    terminator --geometry=960x1200+1800+0 -T "rsl aster terminal" -p aster
	
	#set up dual screen home
	#terminator --geometry=960x1200+2880+0 -T "python terminal"

fi
