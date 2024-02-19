#!/bin/bash

source $HOME/Config/linux/scope_archive.sh

unset pattern

for arg in "$@"
do
     pattern=$pattern"*$arg"
done

pattern=$pattern"*"


# -----------------------------------------------------------------------------
# Exclue les sous dossiers grace a un grep inversé


find $SCOPE_ARCHIVE -type d -path "$pattern" -not -path "$pattern/*" | grep -v "$EXCLUDE_SCOPE"