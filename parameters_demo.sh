#!/bin/bash

USER=$1 # The first parameter iis the user.

echo "Executing script: $0 "
echo "Archiving user: $USER"

#Lock the account

#passwd -l $USER