# EXAMPLE 1
**Write a script that consist of a function that  display the number of files in the present working directory.**
**Name this function file_count and call it in your script.** 

#!/bin/bash

function file_count(){
    local COUNT=$(ls $1 | wc -l)
    echo $COUNT
    return 0
}
file_count /etc

# EXAMPLE 2
**Modify the script from the previous exercise. Make the file_count function accept a directory**
**Next have the function display the name of the directory followed by a colon.**
**Finally, display the number  of files to the screen on the next line.**
**Call the function three times. First, on the "/etc" directory, next onthe "/var" directory and finally on the "/usr/bin"**

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