#!/bin/bash

id_manuscript=`cat $HOME/.pid_manuscript`
echo $id_manuscript



name=$(xdotool getwindowname $id_manuscript)
echo $name


if xdotool getwindowname $id_manuscript && [ "$name" != "" ];
then

	echo "Already Launched"

	id_focus=$(xdotool getwindowfocus)

	echo $id_focus
	echo $id_manuscript
	
	if [ "$id_focus" -eq "$id_manuscript" ]
	then

		xdotool windowminimize $id_manuscript

	else

	    echo "ndc_ac opened but not focus"
	    
		xdotool windowsize $id_manuscript 52.9% 120%
		xdotool windowactivate $id_manuscript

	fi

else

	echo "Not Launched, proceed to launch another app"

	xdg-open /home/d51680/Code/manuscript/master.pdf & disown

	sleep 1

	export id_manuscript=$(xdotool getwindowfocus)

	rm $HOME/.pid_manuscript

	echo $id_manuscript > $HOME/.pid_manuscript


fi