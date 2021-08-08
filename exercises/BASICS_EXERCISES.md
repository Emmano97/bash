# EXAMPLE 1

### *Write a shell that prints "Shell scripting is Fun !" to the screen.*

<pre>
#!/bin/bash

echo "Shell scripting is Fun !"
</pre>

# EXAMPLE 2

### *Modify the shell script from the previous EXAMPLE to include a variable.* 
### *The variable will hold the contents of the message "Shell Scripting is Fun!"*

<pre>
#!/bin/bash

MESSAGE="Shell Scripting is Fun!"
echo $MESSAGE
</pre>

# EXAMPLE 3

### *Store the output of the command "hostname" in a variable.*
### *Display "This script is running on" ______."where"_______"is the output of the "hostname" command.*

<pre>
#!/bin/bash

OUTPUT=$(hostname)

echo "This script is running on ${OUTPUT}. Where ${OUTPUT} is the output of the \"hostname\" command."
</pre>

# EXAMPLE 4

### *Write a shell script to check if the file "/etc/shadow" exists. if it does exist, display*
### *"Shadow passwords are enabled." Next, check to see if you can write to the file. If you can write to the file, display*
### *"You have the permissions to edit the file" if you cannot display "You don't have permisions to edit"*

<pre>
#!/bin/bash

if [ -e /etc/shadow ]
then
    echo "Shadow passwords are enabled."
fi

if [ -w /etc/shadow ]
then
    echo "You have the permissions to edit the file"
else
    echo You don't have permisions to edit"
fi
</pre>

# EXAMPLE 5
### *Write a shell script that displays "man", "bear", "pig", "dog", "cat", "sheep" to the screen*
### *with each appearing on a separate line. Try to do this in few lines as possible.*

<pre>
#!/bin/bash

for VALUE in "bear" "pig" "dog" "cat" "sheep"
do
    echo "${VALUE}"
done
</pre>

# EXAMPLE 6
### *Write a shell script that prompts the user for a name of a file or directory*
### *and report if it's a regular file, a directory, or other type of file*
### *Also perform an ls command against the file or directory with the long listing option*

<pre>
#!/bin/bash

read -p "Enter the element name: " ELEMENT

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
</pre>

# EXAMPLE 7
### *Modify the previous script so that  it accepts the file or directory name as an argument instead of prompting the user to enter*

<pre>
#!/bin/bash

ELEMENT=$1

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
</pre>

# EXAMPLE 8
### *Modify the previous script so that  you can accept multiple arguments*

<pre>
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
</pre>


