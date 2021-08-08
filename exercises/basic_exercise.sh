#!/bin/bash

ELEMENTS=$@
for ELEMENT in $ELEMENTS
do
    if [ -d $ELEMENT ]
    then
        echo "This is a folder, the content: "
        echo ""
        echo $(ls -l $ELEMENT)
    elif [ -f $ELEMENT ]
    then
        echo "This is a file the content"
        echo ""
        echo $(cat $ELEMENT)
    else
        echo "This file or directory not exits"
    fi
done