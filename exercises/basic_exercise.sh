#!/bin/bash

DATE=$( date "+%Y-%M-%d" )
for FILE in *.jpg
do
    $(mv $FILE "$DATE-$FILE")
done
exit 0