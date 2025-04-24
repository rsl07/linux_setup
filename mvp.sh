#!/bin/zsh

# SUBL WORKSPACE AND PROJECT RULE:
# If Antoine is main dev : store subl files in code files
# else : store subl files in DIR_SUBL


# Find workspace in Config and Code 
# If None found look in old folder DIR_SUBL
# basename find -> add '.'

DIR_SUBL=/home/d51680/Config/subl
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

echo "INPUT PATTERN: $pattern"
echo "PATH PATTERN : *${pattern//+/*}*/mvp"

# Rercherche dans le scope et plus bas qui prends pas ne compte le HOME

file=$(find /home/d51680/Code/ /home/d51680/Config/ /home/d51680/Images/ /home/d51680/Documents /home/d51680/Presentation /home/d51680/Projets -type d -path "*${pattern//+/*}*/mvp" 2>&1 )


echo $file

if [[ "$file" == "" ]]
then

	echo "NO MVP FILE FOR PATH PATTERN *${pattern//+/*}*/mvp"


elif echo $file | grep -n / | grep -q 2:/
then

	echo "ERROR - TWO RESULTS OR MORE"


else 

	eog $file/* & disown

	sleep 0.2

	wmctrl -r :ACTIVE: -b toggle,maximized_vert,maximized_horz

fi

