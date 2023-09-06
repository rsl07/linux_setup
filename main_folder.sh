#!/bin/zsh


folder=/home/rsl/Projets/site_calibration/data_load

id_folder=`cat $HOME/.pid_folder`
echo $id_folder

name=$(xdotool getwindowname $id_folder)
echo $name

if xdotool getwindowname $id_folder && [ "$name" != "" ];
then

	echo "Already Launched"

	id_focus=$(xdotool getwindowfocus)

	echo $id_focus
	echo $id_folder
	
	if [ "$id_focus" -eq "$id_folder" ]
	then

		xdotool windowminimize $id_folder

	else

	    echo "folder opened but not focus"
	    
		xdotool windowactivate $id_folder

		sleep 0.5

		/home/rsl/Config/linux/left_view.sh


	fi

else
    echo "folder not opened"
    
    
	nautilus -w $folder & disown

	sleep 0.5

	/home/rsl/Config/linux/left_view.sh

	export id_folder=$(xdotool getwindowfocus)

	echo $id_folder

	rm $HOME/.pid_folder

	echo $id_folder > $HOME/.pid_folder 



fi