#!/bin/bash

echo ".pid_loc : "
id_loc=`cat $HOME/.pid_loc`
echo $id_loc
echo

echo "pid_loc classname"
class_loc=$(xprop WM_CLASS -id $id_loc )
echo $class_loc
echo 


if [[ $class_loc == *"loc"*"firefox"* ]];
then

	echo "web loc launched"

	id_focus=$(xdotool getwindowfocus)


	if [ "$id_focus" -eq "$id_loc" ]
	then

	    echo "   web loc focus -> minimize"

		xdotool windowminimize $id_loc

	else

	    echo "   web loc not focus -> focus"
	    
	    xdotool windowactivate $id_loc

	fi
	
else

	echo "Not Launched, proceed to launch another app"

    url1="https://www.leboncoin.fr/"
	url2="https://www.jinka.fr/"
	url3="https://al-in.fr/#/HomeSalarie"
	url4="https://www.inli.fr/"
	url5="https://keep.google.com/#NOTE/1WuYmZm4UoQ3UnkzFR1-eVd0F8_sEaeoY-hsOek2S7yhb7VSCpR11z5GrKIEcgeTfRpw"

	firefox $url1 $url2 $url3 $url4 $url5 & disown

	# bring web loc main to the front ----------------------------------------

	sleep 0.5

	wmctrl -l | grep "Mozilla Firefox" | sort -r  

	last_firefox=$(wmctrl -l | grep "Mozilla Firefox" | sort -r | head -n 1 | cut -d " " -f 1) 


	echo "last web loc main opened: "$last_firefox
    
	wmctrl -i -a $last_firefox

	# --------------------------------------------------------------------------
	      
	export id_loc=$(xdotool getwindowfocus)

	xdotool set_window --classname "loc" $id_loc

	echo $id_loc > $HOME/.pid_loc

fi
