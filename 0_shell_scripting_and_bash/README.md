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

## Open up the terminal app in MacOS
When you open the terminal app, it defaults to an user's home directory. Inside the home dir, you should find various other files and sub dirs. 

## List files and sub-directories inside a directory (ls - command)
To take a look at the files and folders in your the current dir where you are at, type:
```bash
$ ls
```

## Changing directories (cd - command)
To go to a directory of your choice use the cd command, for example to go to the "Documents" sub dir located inside your current dir, type:
```bash
$ cd Documents/
```

## Home dir, Current dir, Parent dir and Previous dir shortcuts
In bash, the home dir is denoted by "~", current directory is denoted by "./", the parent dir is denoted by "../" and the previous dir is denoted by "-". You can use these shortcuts to move around your filesystem. For example from your "Documents" dir, if you would like to go back to your home dir, type:
```bash
$ cd ../
```

or

```bash
$ cd -
```

Both will work since you previous dir is also your parent dir. 

## Create a new dir (mkdir - command)
Let's create a new dir named "bioinfo-tutorial-{yourname}" inside your home dir. To do that type:
```bash
$ mkdir test_dir
```
Note: Make sure you are in your home dir while creating the "bioinfo-tutorial-{yourname}" dir. If you feel lost, type:
```bash
$ cd ~
```
to go back to your home dir from any location.

## Create a new blank file (touch - command)
Go inside the newly created "bioinfo-tutorial-{yourname}" dir using the "cd" command and create a blank file named test.txt. To do that type:
```bash
$ cd bioinfo-tutorial-{yourname}
$ touch test.txt
```

## Editing a file (nano - text editor)
To edit the newly created blank file, we will use a default text editor named "nano". To use nano, type:
```bash
$ nano test.txt
```
Write the line "This is a test file" to it. Then press *CTRL+X* followed by *Y* to give it permission to save the file.

## Viewing a file (cat - command)
To view whether your changes took effect, type:
```bash
$ cat test.txt
```

## Print command (echo - command)
To print a random message to the terminal, type:
```bash
$ echo "{message}"
```
Note: The echo command is very useful for code debugging.

## stdin, stdout and stderr
stdin, stdout, and stderr are 3 types of data streams created when executing a command. They can be used to tell if a script is being piped or redirected. stdin is the standard input stream (input text). stdout is the text output from the command to the shell. Error output messages from the command are sent through the stderr (standard error) stream. 

[How-To Geek](https://www.howtogeek.com/435903/what-are-stdin-stdout-and-stderr-on-linux/)

## Writing and appending the standard output to a file (> and >>)
The echo command used above prints the message to the standard output which can then be redirected to a file. To append the message to the file test.txt, type:
```bash
$ echo "{message}" >> test.txt
```
On the other hand to overwrite the existing file with the message, type

```bash
$ echo "{message}" > test.txt
```
Note: This will also create a new file named test.txt with the message if the file does not already exist.

## Removing a file (rm command)
To remove the test.txt file type:
```bash
$ rm test.txt
```

## Copying files from an external link (wget command)
To copy a file from an external link and store it as "filename", type
```bash
$ wget -O {filename} {link}
```

**Task: Copy and save the file provided by this link: https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh** as miniconda.sh
```bash
$ wget -O miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh 
```

# Automating your commands using a bash script
A bash script is a collection of multiple bash commands. We can automate the steps we followed earlier using a bash script. Bash scripts have the following naming convention: "{filename}.sh" i.e. it ends with the *sh* extension. 

**Task 1: Create an empty bash script named test.sh inside your tutorial directory.**

**Task 2: Edit the script using nano text editor so that it creates a newfile named test.txt and appends the line "This is a test file" to it**

Example script is present here: *https://github.com/deeprob/bioinfo-tutorial/blob/master/0_shell_scripting_and_bash/src/test.sh*

# Running a script using bash
To run a bash script, enter the directory in which the script resides in the terminal, then type

```bash
$ bash {filename}.sh
```

You can also run it from anywhere else using the absolute path of the bash file. For example:

```bash
$ bash /path/to/{filename}.sh
```

# Relative and absolute path
All file/directory locations can be specified wither using their absolute path or their relative path. The relative path of a file/directory is its path relative to the directory you are currently in. The absolute path is the path to the file/directory from the root directory. For example, if we created a file named test.sh inside the tutorial dir, then its relative path with respect to the tutorial dir will be "./test.sh" whereas it's absolute path will most probably be "/Users/{username}/tutorial/test.sh" depending on where you created the tutorial directory.

**Task 1: Create a data dir inside tutorial dir**
**Task 2: Write a script named test_with_absolute_path.sh that creates a newfile named test.txt inside the data dir using absolute path of the file and adds the line "This is a test file" to it**

# Variables and arguments

## Variables
In the above example, we have been using test.txt filepath twice, once to create the file and then again to append the message to that file. Filepaths can be long and cumbersome. Instead if we store the filepath as a variable and use the variable twice, it will be easier. It especially becomes easier when we need to change the filepath since instead of changing it twice we now only need to change it once. 
Note: Imagine if we had referenced the filepath 10 times in our script!  

To create a new variable type the variable name and assign it to its value using the "=" sign in bash. To call that variable use the "$" sign followed by the variable name.
For example:

```bash
# assign filepath to filename
filename={/path/to/file}
# print out the filepath using it's assigned variable name
echo $filename
```

**Task: Write a script named test_with_variable.sh that creates a newfile named test.txt inside the data dir using absolute path of the file and adds the line "This is a test file" to it. Store the filepath to test.txt in a variable named test_file. Call that variable while creating the file and appending a line to it.**

## Arguments

Arguments (usually denoted by $@) can be supplied to script in order to perform operations on a corresponding variable in the command line. 

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
