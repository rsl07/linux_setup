#!/bin/bash

id_chrome=`cat $HOME/.pid_main_chrome`
echo $id_chrome



name=$(xdotool getwindowname $id_chrome)
echo $name


if xdotool getwindowname $id_chrome && [ "$name" != "" ];
then

	echo "Already Launched"

	id_focus=$(xdotool getwindowfocus)

	echo $id_focus
	echo $id_chrome
	
	if [ "$id_focus" -eq "$id_chrome" ]
	then

		xdotool windowminimize $id_chrome

	else

	    echo "chrome opened but not focus"
	    
		xdotool windowsize $id_chrome 100% 100%
		xdotool windowactivate $id_chrome

	fi

else

	echo "Not Launched, proceed to launch another app"

	url1="https://teams.microsoft.com/"
	url2="https://outlook.office365.com/mail/"
	url3="https://gitlab.pleiade.edf.fr/rsl"
	url4="https://gitlab.pleiade.edf.fr/salomemeca/modules/salome-gevibus"
	url5="https://gitlab.pleiade.edf.fr/codeaster/"
	url6='https://aster.retd.edf.fr/rex/issue?status=4&@sort=-creation&@search_text=&@columns=priority%2Ctype%2Cid%2Ccreation%2Ctitle%2Ccreator%2Cproduit%2Cversion%2Cassignedto%2Cstatus&@dispname=Vos%20anomalies&@group=type&@filter=status%2Cassignedto&assignedto=792&@pagesize=50&@startwith=0&creator=792'

	google-chrome --new-window $url1 $url2 $url3 $url4 $url5 $url6 $url7 & disown

	sleep 0.1

	wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz

	sleep 1

	export id_chrome=$(xdotool getwindowfocus)

	rm $HOME/.pid_main_chrome

	echo $id_chrome > $HOME/.pid_main_chrome


fi
