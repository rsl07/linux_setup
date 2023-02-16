#!/bin/bash

search=$(xrandr | grep "HDMI-1 connected")

# Check if screen connected 
if [[ "$search" != "" ]]
then
	
    	if echo $search | grep -q "primary"
    	then

    		# monocreen on hdmi
			terminator --geometry=960x1200+0+0 -T "terminal"


    	else

	    	#set up dual screen home 
			terminator --geometry=960x1200+1920+0 -T "terminal"
		
		fi


else
	# monoscreen
	terminator --geometry=960x1200+0+0 -T "terminal"
fi