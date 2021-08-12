#!/bin/bash

function file_count(){
    for DIRECTORY in $@
    do
        local COUNT=$(ls $DIRECTORY | wc -l)
        echo "${DIRECTORY}:"
        echo $COUNT
    done
    return 0
} 

file_count /etc /var /usr/bin