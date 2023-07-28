#!/bin/bash

source $HOME/Config/linux/scope.sh

unset pattern

for arg in "$@"
do
     pattern=$pattern"*$arg"
done

len=$((${#pattern}-1))

pattern=${pattern:1:$len}

# echo "${pattern//+/*}"

# echo "${pattern: -1}"

if [ "/" = "${pattern: -1}" ];
then
     # echo "pattern finishes with slash"
     # echo "look for top directory"

     # echo "pattern=$pattern"

     pattern=$(echo $pattern | sed "s/\///")

     # Rercherche dans le scope et plus bas qui prends pas ne compte le HOME
     find $SCOPE -type d -path "*${pattern//+/*}" 2>&1 | grep -v "$EXCLUDE_SCOPE"


else
     # echo "pattern does not finish with slash"
     # echo "looking for any directory"

     # echo "pattern=$pattern"

     # Rercherche dans le scope et plus bas qui prends pas ne compte le HOME
     find $SCOPE -type d -path "*${pattern//+/*}*" 2>&1 | grep -v "$EXCLUDE_SCOPE"

fi


