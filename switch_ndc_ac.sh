#!/bin/bash

id_ndc_ac=`cat $HOME/.pid_ndc_ac`
file=/home/d51680/Projets/ac3d/notes.pdf

echo $id_ndc_ac



name=$(xdotool getwindowname $id_ndc_ac)
echo $name


if xdotool getwindowname $id_ndc_ac && [ "$name" != "" ];
then

	echo "Already Launched"

	id_focus=$(xdotool getwindowfocus)

	echo $id_focus
	echo $id_ndc_ac
	
	if [ "$id_focus" -eq "$id_ndc_ac" ]
	then 

		xdotool windowminimize $id_ndc_ac

	else

	    echo "ndc_ac opened but not focus"
	    
		xdotool windowsize $id_ndc_ac 52.9% 120%
		xdotool windowactivate $id_ndc_ac

	fi

else

	echo "Not Launched, proceed to launch another app"

	xdg-open $file & disown

	sleep 1

	export id_ndc_ac=$(xdotool getwindowfocus)

	rm $HOME/.pid_ndc_ac

	echo $id_ndc_ac > $HOME/.pid_ndc_ac


fi
