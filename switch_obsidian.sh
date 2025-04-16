#!/bin/bash

wmctrl -l

last_obsidian=$(wmctrl -l | grep "\- Obsidian v1.8.9" | sort -r | head -n 1 | cut -d " " -f 1) 



echo "last_obsidian"
echo $last_obsidian

echo ".pid_obsidian : "
id_obsidian=`cat $HOME/.pid_obsidian`
echo $id_obsidian
echo

# echo "pid_obsidian classname"
# class_obsidian=$(xprop WM_CLASS -id $id_obsidian )
# echo $class_obsidian
# echo 

id_focus=$(xdotool getwindowfocus)


if [ "$id_focus" -eq "$id_obsidian" ];
then

	    echo "   obsidian focus -> minimize"

		xdotool windowminimize $id_obsidian


elif [[ $last_obsidian == "" ]]
then
	/home/d51680/Logiciel/Obsidian-1.8.9.AppImage & disown

else

	xdotool windowactivate $pid_obsidian
	return_val=$?
	echo return_val
	echo $return_val

	if [ $return_val -ne 0 ];
	then

		wmctrl -i -a $last_obsidian

		export id_obsidian=$(xdotool getwindowfocus)

		# xdotool set_window --classname "obsidian" $id_obsidian

		echo $id_obsidian > $HOME/.pid_obsidian
	fi
fi


