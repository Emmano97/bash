# FIILE                                                                    

| Syntax | Description |                                            
|--------|-------------|
| -d FIILE | **True** if file *is directory* |
| -e FIILE | **True** if file *exist* |
| -f FIILE | **True** if file *exists and is a regular file* | 
| -r FIILE | **True** if file *is readable by you* |
| -s FIILE | **True** if file *exist and is not empty* |
| -w FIILE | **True** if file *is writable by you* |
| -x FIILE | **True** if file *is executable by you* |

# STRING

| Syntax | Description |
|--------|-------------|
| -z STRING | **True** if string *is empty* |
| -n STRING | **True** if string *is not empty* |
| STRING1 == STRING2 | **True** if *string1 equals to string2* | 
| STRING1 != STRING2 | **True** if *striing1 is not equals to string2* |

# ARITHMETIC OPERATORS (tests)

| Syntax | Description |
|--------|-------------|
| arg1 -eq arg2 | **True** if arg1 *is equals to arg2 directory* |
| arg1 -ne arg2 | **True** if arg1 *is not equals to arg2 directory* |
| arg1 -lt arg2 | **True** if arg1 *is less than to arg2 directory* |
| arg1 -le arg2 | **True** if arg1 *is is less or equals to arg2 directory |
| arg1 -gt arg2 | **True** if arg1 *is greater to arg2 directory* |
| arg1 -ge arg2 | **True** if arg1 *is greater or equals to arg2 directory* |

# Making Decisions - *The if statement*

<pre>
if [ condition is true]
then 
    commands
elif [ conditiion is true]
then
    commands
else
    commands
fi
</pre>

# For loop

<pre>
for VARIABLE_NAME in ITEM_1 ITEM_N
do
    something here
done
</pre>

# Positional parameters

<pre>
prompt $> ./script.sh parameter1, parameter2, parameter3
</pre>

| Positiion | Element |
|--------|-------------|
| $0 | **script.sh** |
| $1 | **parameter1** |
| $2 | **parameter2** |
| $3 | **parameter3** |
| $@ | **All parameters** we can use for loop to work iterate  through them |

# Accepting User Input (STDIN)

read -p "PROMPT" VARIABLE
<pre>read -p "Enter your username" USERNAME</pre>



