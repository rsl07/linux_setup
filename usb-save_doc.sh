#!/bin/zsh


# usb-rsl save

cd $HOME

time=$(date +"%F_%H-%M-%S")

USB=/media/d51680/usb_rsl
LOG=/media/d51680/usb_rsl/save_d51680/log_save

if [ -d "$USB" ];
then

    echo "usb_rsl connected"

	if [ -d "$LOG" ];
	then

		echo "log in $LOG"

	else

		mkdir $LOG

		echo "log created in $LOG\n"

	fi

	mv $LOG $USB/log_save	

	rsync -av --delete Documents Litterature Photos Projets Archive Presentation $USB/save_d51680/ >&1 | tee $USB/log_save/save_$time.txt

	mv $USB/log_save $LOG 


else
	echo "usb_rsl not connected"
fi



