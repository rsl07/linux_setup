#!/bin/bash


folder=/home/rsl/Projets/site_calibration/data_load

id_nautilus=`cat $HOME/.pid_nautilus`
echo $id_nautilus

name=$(xdotool getwindowname $id_nautilus)
echo $name

if xdotool getwindowname $id_nautilus && [ "$name" != "" ];
then

	echo "Already Launched"

	id_focus=$(xdotool getwindowfocus)

	echo $id_focus
	echo $id_nautilus
	
	if [ "$id_focus" -eq "$id_nautilus" ]
	then

		xdotool windowminimize $id_nautilus

	else

	    echo "folder opened but not focus"
	    
		xdotool windowactivate $id_nautilus

		sleep 0.5

 
	fi

else
    echo "folder not opened"
    
    
	nautilus $folder & disown

	# subl toto.sh
	sleep 0.5


	$LINUX/left_view.sh

	export id_folder=$(xdotool getwindowfocus)

	echo $id_folder

	export id_nautilus=$(xdotool getwindowfocus)

	rm $HOME/.pid_nautilus

	echo $id_nautilus > $HOME/.pid_nautilus 



fi