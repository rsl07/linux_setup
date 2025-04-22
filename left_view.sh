#!/bin/bash
# resizes the window to full height and 50% width and moves into upper right corner

id_window=$(xdotool getwindowfocus)

echo $id_window


N_scr=$(xrandr | grep " connected" | wc -l)

if [[ $N_scr == 1 ]]
then

	#define the height in px of the top system-bar:
	TOPMARGIN=0

	#sum in px of all horizontal borders:
	RIGHTMARGIN=-52

	# get width of screen and height of screen
	SCREEN_WIDTH=$(xwininfo -root | awk '$1=="Width:" {print $2}')
	SCREEN_HEIGHT=$(xwininfo -root | awk '$1=="Height:" {print $2}')

	# echo $SCREEN_WIDTH
	# echo $SCREEN_HEIGHT
	# echo

	# new width and height
	W=$(( $SCREEN_WIDTH / 2 - $RIGHTMARGIN ))
	H=$(( $SCREEN_HEIGHT - 2 * $TOPMARGIN ))


	W=$(( $SCREEN_WIDTH / 2 ))

	# echo $W

	# X, change to move left or right:

	# moving to the right half of the screen:
	# X=$(( $SCREEN_WIDTH / 2 ))
	# moving to the left:
	X=-65; 

	W=1080

	Y=$TOPMARGIN

	wmctrl -r :ACTIVE: -b add,maximized_vert && wmctrl -r :ACTIVE: -e 0,$X,$Y,$W,$H

else

	#define the height in px of the top system-bar:
	TOPMARGIN=0

	#sum in px of all horizontal borders:
	RIGHTMARGIN=0

	# get width of screen and height of screen
	SCREEN_WIDTH=$(xwininfo -root | awk '$1=="Width:" {print $2}')
	SCREEN_HEIGHT=$(xwininfo -root | awk '$1=="Height:" {print $2}')

	# echo $SCREEN_WIDTH
	# echo $SCREEN_HEIGHT
	# echo

	# new width and height
	W=$(( $SCREEN_WIDTH / 2 - $RIGHTMARGIN))
	H=$(( $SCREEN_HEIGHT - 2 * $TOPMARGIN ))

	echo $W

	# X, change to move left or right:

	# moving to the right half of the screen:
	# X=$(( $SCREEN_WIDTH / 2 ))
	# moving to the left:
	X=-26; 

	Y=$TOPMARGIN

	# xdotool windowsize $id_window 50% 50%


	wmctrl -r :ACTIVE: -b add,maximized_vert 

	wmctrl -r :ACTIVE: -e 0,900,-1,1080,-1



fi