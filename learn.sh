#!/bin/bash

function greeting(){
    for NAME in $@
    do
        echo "Hello world! ${NAME}"
    done
}
greeting Jason emmano
echo "${?}"