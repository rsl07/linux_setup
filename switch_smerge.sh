#!/bin/bash

id_smerge=`cat $HOME/.pid_smerge`
echo $id_smerge



name=$(xdotool getwindowname $id_smerge)
echo $name


if xdotool getwindowname $id_smerge && [ "$name" != "" ];
then

	echo "Already Launched"

	id_focus=$(xdotool getwindowfocus)

	echo $id_focus
	echo $id_smerge
	
	if [ "$id_focus" -eq "$id_smerge" ]
	then

		xdotool windowminimize $id_smerge

	else

	    echo "ndc_ac opened but not focus"
	    
		xdotool windowsize $id_smerge 100% 120%
		xdotool windowactivate $id_smerge

	fi

else

	echo "Not Launched, proceed to launch another app"

	smerge & disown

	sleep 0.5

	export id_smerge=$(xdotool getwindowfocus)

	rm $HOME/.pid_smerge

	echo $id_smerge > $HOME/.pid_smerge


fi