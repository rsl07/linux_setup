#!/bin/zsh

DIR_WS=/home/d51680/Code/
DIR_CODE=/home/d51680/Config/subl
setopt extendedglob


# file=$(find $DIR_WS -name "*$@*-workspace")
# replaced by:

unset pattern

for arg in "$@"
do
     pattern=$pattern"*$arg"
done

len=$((${#pattern}-1))

pattern=${pattern:1:$len}

# echo "INPUT PATTERN: $pattern"
# echo "PATH PATTERN : *${pattern//+/*}*.sublime-worspace"


# Rercherche dans le scope et plus bas qui prends pas ne compte le HOME
file=$(find $DIR_WS -type f -path "*${pattern//+/*}*.sublime-workspace" 2>&1 )


if [[ "$file" == "" ]]
then
	file=$(find $DIR_CODE -type f -path "*${pattern//+/*}*.sublime-workspace" 2>&1 )

fi

echo "FILES FOR PATH PATTERN *${pattern//+/*}*.sublime-worspace:\n$file"




if [[ "$file" == "" ]]
then

	echo "ERROR - NO FILE FOUND"


elif echo $file | grep -n / | grep -q 2:/
then

	echo "ERROR - TWO RESULTS OR MORE"


else 
	name=$(basename $file .sublime-workspace)

	echo opening sublime workspace : $name

	if wmctrl -l | grep \($name\)
	then

		id_ws=$(xdotool search --name "\($name\)")
		id_focus=$(xdotool getwindowfocus)


		if [ "$id_focus" -eq "$id_ws" ];
		then

			echo "$name WORKSPACE OPENED AND FOCUS"

			xdotool windowminimize $id_ws

		else

		    echo "$name WORKSPACE OPENED AND UNFOCUSED"
		    
		    xdotool windowactivate $id_ws

		fi


	else

		xdg-open $file

		sleep 2

		# id_ws=$(xdotool getwindow focus)

		# wmctrl -r :ACTIVE: -b toggle,maximized_vert,maximized_horz

		# if xdotool search --name "untitled -" | grep -q 
		# then 

		# 	id_unt=$(xdotool search --name "untitled -")

		# 	xdotool windowclose $id_unt

		


	fi

fi

