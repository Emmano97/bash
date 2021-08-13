<style>

body{
}

pre{
    max-height: 500px;
    width: 100%;
    margin: 20px 0;
    font-size: 1.2em;
    overflow: auto;
    background-color: white;
    color: #9e9e9e;
}
</style>

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

# Logical operators

- && = AND
- || = OR

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


# EXIT Status / Return code
- Code return by a command
- Range from 0 to 255
- 0 means success
- Use for error checking
- Use man or infoto find meaning of exit status

| Syntax | Description |
|--------|-------------|
| "$?" | **Return the exit status(return code) of the previous command** |
| "$$" | **Return the PID (process ID) of the current process** |

# Exit command
- Explicitly define the return code
    exit 0 **success code**
    exit n (0 > n <= 255) **error code**
- The default value is the return code of the last executed command

# Command chaining

| Syntax | Description |
|--------|-------------|
| **command1 && command2** | **command2** will be executed only if the **command1** return 0 as return code |
| **command1 \|\| command2** | **command2** will be executed only if the **command1** don't return  0 as return code |
| **command1 ; command2** | *Return the exit status(return code) of the previous command* |

# Functions
*Two ways* 

function function-name(){
    \# code goes here.
}

*OR*

function-name(){
    \# code goes here.
}

# Wilcard

| Syntax | Description |
|--------|-------------|
| * | **matches zero or more characters** |
| ? | **matches exactly one character** |
| [] | **Character class, match exactly one character** |
| [!] | **Exclude Character in the bracket** |

ca[nt]* => can or cat, candy, catch...

pop[!aiue] => exclude popa, popi, popu, pope

| Syntax | Description |
|--------|-------------|
| [a-g]* | **matches every word start with a character between a and g** |
| [3-6]* | **matches every word start with number between 3 and 6** |
| [] | **Character class, match exactly one character** |
| [!] | **Exclude Character in the bracket** |

## Named Character classes

| Syntax | Description |
|--------|-------------|
| [\[:alpha:]] | **Match alphabetic characters** |
| [\[:alnum:]] | **Match alphanumeric characters** |
| [\[:digit:]] | **Match digits, numbers and decimal from 0 to 9** |
| [\[:lower:]] | **Match lowercase letters** |
| [\[:upper:]] | **Match uppercase letters** |
| [\[:space:]] | **Match space, tab and new line characters** |




