# What is an Integrated Development Environment (IDE)?
An integrated development environment (IDE) facilitates the development of scripts/programs. In an IDE, users can create/modify source code with the help of various features that are a part of the IDE. These features include syntax highlighting, autocomplete, debugging tools, and more. 

When you download Python, an IDE called IDLE is usually installed as well. IDLE is an IDE that is specific to Python. 

# Why do we need IDEs?
The development of source code in IDEs is much more convenient than development in the terminal as a result of the aforementioned tools. 

**Syntax highlighting** 

IDEs recognize the syntax of a given programming language and guide the development of code through visual cues. This usually involves color coding of key elements in a program. 

**Autocomplete** 

Since IDEs recognize the programming language that is being utilized, they can anticipate what a user is going to enter next in a script and suggest additions. This convenient shortcut saves the user time when creating a program, and helps to avoid errors when scripting. 

**Debugging tools**

Debugging tools built into IDEs help the user avoid making errors when scripting. Usually, while scripting, visual cues will indicate that the source code contains errors that will prevent it from running properly. If a completed script still contains errors and does not run properly, debugging tools also allow the user to examine specific components of the script that may be problematic. 

[Codecademy](https://www.codecademy.com/article/what-is-an-ide)

# What is VSCode?
Visual Studio Code (VSCode) is a specific open-source IDE/source code editor. 

# Why do we need VSCode?
Unlike language-specific IDEs like IDLE, VSCode is a versatile IDE that can be used to create/edit source code in multiple languages (Python, JavaScript, C++, etc.).

VSCode also allows users to download third-party extensions with additional source code editing features/debugging tools. This allows the user to customize their programming experience and enhance their workflow.

VSCode also has a built in feature known as *source control*. Using this feature, users can view the source code's version history and can pull/commit changes from/to remote repositories in version control systems (Git, etc.) directly in VSCode. 

[Microsoft](https://visualstudio.microsoft.com/vs/features/extend/#:~:text=Extensions%20are%20add%2Dons%20that,and%20cater%20to%20your%20workflow.)

# Setting up VSCode
You can download VSCode by following this link:
https://code.visualstudio.com/download

Once it is installed on your device, you can open a new window of VSCode by typing
```bash
$ code -n
```
in the terminal. 

Typing 
```bash
$ code
```
without the -n marker will open a previous session of VSCode.

If you would like to open VSCode in a specific directory, you can do this by navigating to the directory in the terminal and typing
```bash
code -r
```

[Educative](https://www.educative.io/answers/what-is-visual-studio-code)

# Creating scripts in VSCode
Scripting in VSCode is performed almost exactly the same as scripting in the shell. Instead of using nano as a text editor like we did previously, we are simply using the VSCode text editor here. 

When you open VSCode, you have the option to either create a new file or open a preexisting file. Depending on what you would like to edit, click on one of these options. 


Once you are in your desired directory, new files/folders can be created within this directory directly in VSCode. To do this, right click on a directory in the activity bar (the menu on the left side of the screen) and click "New file." Similarly, new folders/directories can be created by clicking on "New folder."

## **Task:** 
In VSCode, open the src folder and create a new bash script file called first_vscode_script.sh. This script should create a newfile test.txt in the data folder and append the message "This is a test file." to the file. 

*Tip*: When creating scripts, it is useful to create a header containing the following information
```bash
# File: {filename}
# Date: {date that file is created}
# Author: {name}
# Purpose: {purpose of the file}
```
This will allow you to keep track of the contents of each script that you create. 

Additionally, when scripting, it is useful to make **comments** denoting the purpose of each statement/group of statements in a section of code. 

For example,
```bash
# Create a new file named test.txt in the data folder
touch test.txt /path/to/data
```
This comment explains the function of the statement below it. This helps to organize and keep track of code within a script. This is especially useful in longer scripts. 