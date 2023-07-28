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
s
else



	echo "Not Launched, proceed to launch another app"

	url1="https://mail.google.com/mail/"
	url3="https://keep.google.com/u/0/"
	url2="https://webmail.ens-paris-saclay.fr/imp/dynamic.php?page=mailbox#mbox:SU5CT1g"

	google-chrome --new-window $url1 $url2 $url3 $url4 & disown

	sleep 2

	export id_chrome=$(xdotool getwindowfocus)

	rm $HOME/.pid_main_chrome

	echo $id_chrome > $HOME/.pid_main_chrome


fi
