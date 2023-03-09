#!/bin/bash

source $HOME/Config/linux/scope.sh



unset pattern

for arg in "$@"
do
     pattern=$pattern"*$arg"
done

len=$((${#pattern}-1))

pattern=${pattern:1:$len}



# Rercherche dans le scope et plus bas qui prends pas ne compte le HOME
find $SCOPE -path "*${pattern//+/*}*" 2>&1 | grep -wv "$EXCLUDE_SCOPE"

# Recherche dans le $HOME 
find $HOME -maxdepth 1 -path "*${pattern//+/*}*" 2>&1 | grep -wv "$EXCLUDE_SCOPE"