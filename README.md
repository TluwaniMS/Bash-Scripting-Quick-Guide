# Bash Scripting Quick Guide

Fundamental knowledge of Computers:

In the sphere of Linux (and computers in general), we encounter the concept of programs and processes.

A program represents a block of binary data comprising a sequence of instructions for the CPU, and potentially other resources such as images and sound files, bundled together and typically saved on your hard disk.

When we mention running a program, we are actually not directly executing the program itself, but rather a duplicate of it, referred to as a process.

What we essentially do is replicate these instructions and resources from the hard disk into the working memory (or RAM).

Furthermore, we assign a portion of space in RAM for the process to store variables (for holding temporary working data) and a few indicators to enable the operating system (OS) to oversee and monitor the process during its execution.

Note:

In essence, a process stands as a live iteration of a program.

# What is a Bash Script?

A bash script is a document comprising a set of instructions that the bash program executes sequentially. It empowers you to carry out a sequence of tasks, like changing to a designated directory, generating a directory, and initiating a procedure via the command line.

## Basic example of a bash script:

```
#!/bin/bash
# This is a basic Hello World! Bash script.

echo "Welcome to the world of scripting!"
```

Note:

The character sequence consisting of a hash and exclamation mark ( #! ) is commonly known as the Shebang. It is followed by the path to the interpreter (or program) intended to execute (or interpret) the remaining lines within the text file.

#### To run the script:

* Create a file with a .sh suffix.
* Copy the code snippet above
* Grant user(s) permissions to exexute the xcript:
  `chmod 755 <filename>`
* Run the script:
  `./<flename>`

# Creating a variable.

A variable serves as a temporary container for holding information. Two fundamental operations associated with variables include:

* Assigning a value to a variable.
* Retrieving the value stored in a variable.

Example:

(Assigning a value to a variable)

```
VAR_1='The first variable!'

VAR_2='The second variable!'
```

(Retrieving the value stored in a variable)

```
echo $VAR_1

echo $VAR_2
```

Note:

Variable names can consist of uppercase letters, lowercase letters, or a combination of both. However, it's essential to maintain consistency in the usage of uppercase and lowercase letters when referencing variables in the case-sensitive environment of Bash.

# Quotes

Placing our content within quotation marks in Bash signifies that the enclosed text should be treated as a unified entity. 
You can utilize either single quotes ( ' ) or double quotes ( " ):

* Single quotes interpret each character exactly as it appears.
* Double quotes enable variable substitution, allowing you to include variables within the value setting.

Example:

```
NAME='John'
SURNAME='Doe'

# Single Quote example:
echo 'Hello my name is $NAME and my surname is $SURNAME'

# Double Quote example:
echo "Hello my name is $NAME and my surname is $SURNAME"
```

# Command line arguments

When executing a program via the command line, you may be accustomed to providing additional arguments afterwards in order to manage its functionality.

E.g:

`ls -l /etc`

In the command `ls`, both `-l` and `/etc` are utilized as command line arguments.

A similar process can be implemented within bash scripts.
To achieve this, we employ the variables `$1` to denote the first command line argument, `$2` to represent the second command line argument, and so forth.

### Other Special Variables

* $0 - The name of the Bash script.
* $1 - $9 - The first 9 arguments to the Bash script.
* $# - How many arguments were passed to the Bash script.
* $@ - All the arguments supplied to the Bash script.
* $? - The exit status of the most recently run process.
* $$ - The process ID of the current script.
* $USER - The username of the user running the script.
* $HOSTNAME - The hostname of the machine the script is running on.
* $SECONDS - The number of seconds since the script was started.
* $RANDOM - Returns a different random number each time is it referred to.
* $LINENO - Returns the current line number in the Bash script.

# User input

If we desire to request input from the user, we utilize a command known as "read." This command accepts the input and stores it in a variable.

e.g 

`read <options> <var_name>`

You have the capability to modify how the read function operates by utilizing a range of command line choices.

Nevertheless, two frequently employed choices are -p, which enables you to designate a prompt, and -s, which ensures that the input is silent.

`read -p “Username: ”<var_name>`

`read -sp “Password: ”<var_name>`

# Let

The "let" command in Bash is a built-in function that enables us to perform basic arithmetic operations.

`let <arithmetic expression>`

e.g

`let <var_name>=x+x`

 OR
 
`let “<var_name> = x + x”`

# Expr

expr is akin to let, but instead of storing the outcome in a variable, it directly displays the answer.

Double Parentheses

`$(( expression ))`

e.g

`<var_name>=$(( x + x ))`

# Getting the length of a variable

If you aim to determine the length of a variable (the number of characters it contains)

`${#variable}`

# Basic `If statements`

An elementary if statement essentially operates by performing a designated set of tasks if a specific condition is determined to be true. Conversely, if the condition is not satisfied, the tasks are not carried out.

```
if [ <some test> ]
then
	<commands>
fi
```

### Conditional operators:

* ! EXPRESSION  The EXPRESSION is false.
* -n STRING  The length of STRING is greater than zero.
* -z STRING  The lengh of STRING is zero (ie it is empty).
* STRING1 = STRING2  STRING1 is equal to STRING2
* STRING1 != STRING2  STRING1 is not equal to STRING2
* INTEGER1 -eq INTEGER2  INTEGER1 is numerically equal to INTEGER2
* INTEGER1 -gt INTEGER2  INTEGER1 is numerically greater than INTEGER2
* INTEGER1 -lt INTEGER2  INTEGER1 is numerically less than INTEGER2
* -d FILE  FILE exists and is a directory.
* -e FILE  FILE exists.
* -r FILE  FILE exists and the read permission is granted.
* -s FILE  FILE exists and it's size is greater than zero (ie. it is not empty).
* -w FILE  FILE exists and the write permission is granted.
* -x FILE  FILE exists and the execute permission is granted.

### If Else:

```
if [ <some test> ]
then
	<commands>
else
	<other commands>
fi
```

### If Elif Else:

```
if [ <some test> ]
then
	<commands>
elif [ <some test> ]
then
	<different commands>
else
	<other commands>
fi
```

### Case Statements:

```
case <variable> in
<pattern 1>)
	<commands>
	;;
<pattern 2>)
	<other commands>
	;;
esac
```

# Loops

For loops

For each item within a specified list, execute the provided set of instructions using the following syntax.

```
for var in <list>
do
	<commands>
done
```

Functions

```
function_name () {
	<commands>
}
```

OR

```
function function_name {
	<commands>
}
```

# Variable Scope

The term "scope" pertains to the sections of a script that have visibility of particular variables. By default, a variable is considered to be global.

`local var_name=<var_value>`
