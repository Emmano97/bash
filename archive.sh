#!/bin/bash

echo "EXECUTING THE SCRIPT: $0 "

for USER in $@
do
#CREATE ARCHIVE OF THE HOME DIRECTORY
    echo "USER: $USER "
    #tar cf /archives/${USER}.tar.gz /home/${USER}
done