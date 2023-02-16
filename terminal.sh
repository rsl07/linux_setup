#!/bin/bash

search=$(xrandr | grep "+1920+")

# Check if screen connected 
if [[ "$search" != "" ]]
then
	
    	#set up dual screen
		terminator --geometry=960x1200+1920+0 -T "terminal"
		


else
	# monoscreen
	terminator --geometry=960x1200+0+0 -T "terminal"
fi