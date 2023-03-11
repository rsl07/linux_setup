#!/bin/zsh


# usb-rsl save

cd $HOME

time=$(date +"%F_%H-%M-%S")

USB=/media/d51680/usb_rsl
SAV=/media/d51680/usb_rsl/save_d51680
LOG=/media/d51680/usb_rsl/save_d51680/log_save

if [ -d "$USB" ];
then

    echo "usb_rsl connected"

    if [ -d "$SAV" ]
    then

    	echo "save in $SAV"

    else

    	mkdir $SAV

    	echo "save made in $SAV"

    fi


	if [ -d "$LOG" ];
	then

		echo "log in $LOG"

	elif [ -d "$USB/log_save" ]
	then

		mv $USB/log_save $LOG

		echo "log in $LOG"

	else

		mkdir $LOG

		echo "log created in $LOG\n"

	fi

	mv $LOG $USB/log_save	

	rsync -av --delete Documents Litterature Images Projets Archive Presentation $USB/save_d51680/ >&1 | tee $USB/log_save/save_$time.txt

	mv $USB/log_save $LOG 


else
	echo "usb_rsl not connected"
fi



