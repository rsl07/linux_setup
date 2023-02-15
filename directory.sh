#!/bin/bash

source $HOME/config/linux/scope.sh

unset pattern

for arg in "$@"
do
     pattern=$pattern"*$arg"
done

len=$((${#pattern}-1))

pattern=${pattern:1:$len}

# echo "${pattern//+/*}"


# Rercherche dans le scope et plus bas qui prends pas ne compte le HOME
find $SCOPE -type d -name "*${pattern//+/*}*" 2>&1 | grep -v "$EXCLUDE_SCOPE"
