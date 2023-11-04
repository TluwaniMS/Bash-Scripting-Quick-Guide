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
VAR_1="The first variable!"

VAR_2="The second variable!"
```

(Retrieving the value stored in a variable)

```
echo $VAR_1

echo $VAR_2
```
