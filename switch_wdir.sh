#!/bin/zsh

wdir="/home/d51680/Code/ac3d/poc51"


id_wdir=`cat $HOME/.pid_main_wdir`
echo $id_wdir

name=$(xdotool getwindowname $id_wdir)
echo $name


if xdotool getwindowname $id_wdir && [ "$name" != "" ];
then

	echo "Already Launched"

	id_focus=$(xdotool getwindowfocus)

	echo $id_focus
	echo $id_wdir
	
	if [ "$id_focus" -eq "$id_wdir" ]
	then

		xdotool windowminimize $id_wdir

	else

	    echo "wdir opened but not focus"
	    
		xdotool windowactivate $id_wdir


	fi

else

	echo "Not Launched, proceed to launch another app"


	nautilus -w $wdir & disown

	sleep 0.3

	/home/d51680/Config/linux/left_view.sh


	export id_wdir=$(xdotool getwindowfocus)

	rm $HOME/.pid_main_wdir

	echo $id_wdir > $HOME/.pid_main_wdir


fi










