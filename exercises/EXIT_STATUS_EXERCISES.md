# EXAMPLE 1
### *Write a shell script that displays "This script will return a 0 exit status" and return success return code*

<pre>
#!/bin/bash

echo "This script will return a 0 exit status"
exit 0
</pre>

# EXAMPLE 2
### *Write a shell script that accepts a file or a directory name as an argument.*
### *Have the script report if it's a regular file a directory, or other type of type of file*
### *if it's a regular file exit with a 0 exit status*
### *if it's a  diirecregulartory exit with a 1 exit status*
### *if it's some other file type exit with a 2 exit status*

# EXAMPLE 3
### *Write a script that executes the command "cat/etc/shadow". If the command return a 0 exiit status*
### *report "Command succeeded" and exit with a 0 exit status. If the command returns a non zero exiit status*
### *report "Command failed" and exit with 1 exiit status*

<pre>
#!/bin/bash

COMMAND="cat/etc/shadow"

$($COMMAND)

if [ "$?" -eq "0" ]
then
    echo "Command succeeded"
    exit 0
else
    echo "Command failed"
    exit 1
fi
</pre>