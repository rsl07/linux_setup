#!/bin/zsh
# ssd-rsl save


cd $HOME

time=$(date +"%F_%H-%M-%S")

MNEMO=/data/rd/users/D51680
SAVE=$MNEMO/Save/calibre
LOG=$MNEMO/Save/calibre/log_save

if [ -d "$MNEMO" ];
then

    echo "mnemo connected"

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

	elif [ -d "$MNEMO/log_save" ]
	then

		mv $MNEMO/log_save $LOG

		echo "log in $LOG"

	else

		mkdir $LOG

		echo "log created in $LOG\n"

	fi

	mv $LOG $MNEMO/log_save	

	rsync -av --delete --exclude="*.git" Documents Litterature Images Projets Archive Presentation $SAVE/ >&1 | tee $MNEMO/log_save/save_$time.txt

	mv $MNEMO/log_save $LOG 


else
	echo "mnemo not connected"
fi



