#!/bin/bash


# Check if screen connected 
if xrandr | grep -q "HDMI-1 connected"
then

	#set up dual screen home 
	terminator --geometry=960x1200+1920+0 -T "terminal"

else
	# monoscreen
	terminator --geometry=960x1200+0+0 -T "terminal"
fi