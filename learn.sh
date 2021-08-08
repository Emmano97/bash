#!/bin/bash

#for COLOR in red green blue
#do
#    echo "COLOR: $COLOR"
#done

PICTURES=$(ls *jpeg)
DATE=$(date +%F)

for PICTURE in $PICTURES
do
    echo "Renaming ${PICTURE} TO ${DATE} - ${PICTURE}"
    mv ${PICTURE} ${DATE} -${PICTURE}
done






