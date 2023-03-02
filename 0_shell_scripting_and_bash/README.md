# From GUI to CLI

## What is a GUI?
A graphical user interface (GUI) allows users to execute actions on a computer/device through interacting with icons, menus, and other visual representations/symbols.

GUIs make computer software user-friendly. Rather than having to execute specific commands in the command line, users can simply interact with elements of the interface to perform a task

[Techopedia](https://www.techopedia.com/definition/5435/graphical-user-interface-gui)

## What is a CLI?
A command line interface (CLI) is a text-based interface that users can utilize to operate computer software.

As opposed to GUIs, CLIs do not have icons/symbols that users can interact with to operate software. Instead, users must enter text (commands) into a command line to execute an operation. The CLI will then return text in response to the command.

## Pros and Cons of using CLI
PROS:
- CLIs provide greater flexibility of use. Users can adjust the system's functionality using a CLI, while only preprogrammed commands can be executed using a GUI.
- A CLI usually executes operations faster than a GUI as GUIs require more time to load visual components and take up more memory space.
- Using CLIs, scripts can be created that execute multiple operations at once. GUIs often require the user to manually repeat actions to execute a task - this can become time-consuming.

CONS:
- CLIs are less user-friendly than GUIs as knowledge of exact commands is required to use this type of interface. CLIs can be confusing to users who have little to no knowledge of commands.
- If commands are incorrectly entered into a CLI, the desired task will fail to execute. Moreover, undesired tasks may be accidentally executed if the wrong command is entered into the command line. This is not as much of a problem with GUIs as interacting with a given component of the interface should execute the same action every time.

[TablePlus](https://tableplus.com/blog/2018/08/cli-vs-gui-which-one-is-better.html#:~:text=Advantages%20and%20disadvantages%20of%20CLI%20and%20GUI&text=So%20the%20CLI%20provides%20greater,to%20do%20with%20a%20GUI.&text=A%20GUI%20needs%20to%20use,than%20using%20the%20command%20line.)

# The terminal
The terminal is a CLI that allows a user to directly interact with their computer's operating system. Standard input text entered by the user can execute a command/operation and produce standard output/standard error text in the terminal. 

# What is Bash?
Bash is a CLI shell program used in many operating systems (Bash = Bourne Again Shell). It allows users to directly interact with their computer's operating system using the command line.

Bash allows users to carry out tasks efficiently - multiple operations can be executed at once using a Bash script. Instead of having to navigate through multiple menus to complete a task using a GUI, a single script containing multiple commands can be run in Bash to complete the same task.

[Codecademy](https://www.codecademy.com/resources/blog/what-is-bash-used-for/)

# Some basic commands to test using the terminal and Bash

Open the terminal in MacOS and type the following commands:

## List files and sub-directories inside a directory (ls - command)

```bash
$ ls
```

## Changing directories (cd - command)

```bash
$ cd /path/to/{directory}
```

## Current dir, Parent dir and Previous dir shortcuts
Current Directory Shortcut:
```bash
$ cd ./
```

Parent Directory Shortcut:
```bash
$ cd ../
```

Previous Directory Shortcut:
```bash
$ cd -
```

## Create a new dir (mkdir - command)
```bash
$ mkdir {directory-name}
```

## Create a new file (touch - command)
```bash
$ touch {filename}
```

## Editing a file (nano - text editor)
```bash
$ nano {filename}
```

## Viewing a file (cat - command)
```bash
$ cat {filename}
```

## Print command (echo - command)
```bash
$ echo "{message}"
```

## stdin, stdout and stderr
stdin, stdout, and stderr are 3 types of data streams created when executing a command. They can be used to tell if a script is being piped or redirected. stdin is the standard input stream (input text). stdout is the text output from the command to the shell. Error output messages from the command are sent through the stderr (standard error) stream. 

[How-To Geek](https://www.howtogeek.com/435903/what-are-stdin-stdout-and-stderr-on-linux/)

## Writing and appending to a file (> and >>)
Typing
```bash
$ echo "{message}" >> {file}
```
appends the message to the preexisting {file}, or creates a new file with the message if the {file} does not already exist. 

Typing
```bash
$ echo "{message}" > {file}
```
overwrites anything within the existing {file} with the message, or creates a new file with the message if the {file} does not already exist.

## Copying files from an external link (wget command)
Within a src directory, type
```bash
$ wget {file-link}
```
to copy the file from the external link.

**Task: Copy and save the files provided by this link: https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh**
```bash
$ wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh 
```

# Automating your commands using a script

**Task: Write a script that creates a newfile named test.txt and adds the line "This is a test file" to it**

```bash
touch test.txt
echo "This is a test file." >> test.txt
```

# Running a script using bash
To run a script file using bash, enter the directory in which the script resides in the terminal, then type

```bash
$ bash {file}
```

# Relative and absolute path
The relative path is the path to a directory from the directory you are currently in. The absolute path is the path to a directory from the root directory. 

**Task: Write a script that creates a newfile named /path/to/data/test.txt and adds the line "This is a test file" to it**
```bash
touch /path/to/data/test.txt
echo "This is a test file." >> /path/to/data/test.txt
```
This script will create a file named test.txt in the data directory and add the message "This is a test file." to it. 

# Variables and arguments
Arguments (usually denoted by $@) can be supplied to script in order to perform operations on a corresponding variable in the command line. 

For example,
```bash
{file}=$1
touch ${file}
```
assigns a variable (the file) to the first argument, then creates the file entered into the first argument when running the script in the command line. 

**Task: Write a script (test.sh) that takes in a file path as first argument, and a string as second argument, creates a new file using the touch command in the specified filepath, and appends the string to that file.**
```bash
test_file=$1 
touch $test_file 

test_output=$2
echo $test_output >> $test_file
```

To execute this script, enter the src directory where the script resides and type
```bash
$ bash test.sh /path/to/data/{file} "{string}"
```

# HOME and PWD variables
In the terminal, typing
```bash
$ echo $HOME
```
will output your home directory.

Typing
```bash
$ echo $PWD
```
will output the absolute path to the directory you are currently in. 
