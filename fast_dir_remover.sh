#!/bin/bash

# ┌───────────────────────────────────────────────────────────────────────────┐
# │                            FAST DIR REMOVER                               │
# └───────────────────────────────────────────────────────────────────────────┘
# Made by Jules Baratoux
# Remove directory and all its content fastly using rsync

mkdir -p '/tmp/empty'

for VAR in "$@"
do
    echo 'rsync -a --delete /tmp/empty' $VAR
    rsync -a --delete '/tmp/empty' $VAR
    echo 'rmdir -v' $VAR
    rmdir -v $VAR
done
