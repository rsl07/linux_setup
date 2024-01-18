#!/bin/zsh
# ssd-rsl save


cd $HOME

time=$(date +"%F_%H-%M-%S")

SSD=/media/$USER/ssd-rsl
SAVE=/media/$USER/ssd-rsl/Save/calibre
LOG=/media/$USER/ssd-rsl/Save/calibre/log_save

if [ -d "$SSD" ];
then

    echo "ssd_rsl connected"

    if [ -d "$SAVE" ]
    then

    	echo "save in $SAVE"

    else

    	mkdir $SAVE

    	echo "save made in $SAVE"

    fi


	if [ -d "$LOG" ];
	then

		echo "log in $LOG"

	elif [ -d "$SSD/log_save" ]
	then

		mv $SSD/log_save $LOG

		echo "log in $LOG"

	else

		mkdir $LOG

		echo "log created in $LOG\n"

	fi

	mv $LOG $SSD/log_save	

	rsync -av --delete Documents Litterature Images Projets Notes Archive Presentation $SAVE/ >&1 | tee $SSD/log_save/save_$time.txt

	mv $SSD/log_save $LOG 


else
	echo "ssd_rsl not connected"
fi



