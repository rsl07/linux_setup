#!/usr/bin/zsh


for file in $HOME/.pid_*
do

	id_file=$(cat $file)

	xdotool windowkill $id_file

	rm $file

done
