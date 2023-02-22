# What is version control?
Version control systems track changes made to a project. Earlier versions of projects can be recovered at any time by reviewing the project history. This includes what changes were made, who made the changes, when the changes were made, and why the changes were needed. It also allows users to branch and merge code for editing ([GitHub Docs](https://docs.github.com/en/get-started/using-git/about-git)). 

# Why do we need it?
Version control systems allow developers to maintain a timeline of all changes made to a project. This helps with identifying/fixing errors between versions, etc. 

Version control also allows users to branch code from and later merge it to the main source code (the remote repository). Branching allows the user to duplicate the source code to their local repository, make any desired edits, check its functionality, and subsequently merge the code back to the remote repository. This works to minimize errors when making changes to a project.  ([Kinsta](https://kinsta.com/knowledgebase/what-is-github/)). 

# What is Git?
Git is an open-source version control and collaboration platform for software development. Git tracks changes made to software projects and allows individuals to share/collaborate on projects. It is a distributed version control system, meaning that each developer working on a project can have access to the entire codebase and history ([GitHub Docs](https://docs.github.com/en/get-started/using-git/about-git)). 

# Why do we need it?
As a version control software, Git allows developers to branch and merge code for editing, thereby minimizing errors in software development. Git repositories also allow for collaboration among members working on a single project. It allows users to view all changes made to the source code, making it much easier to identify and fix errors in code. 

**GitHub** is a specific cloud-based Git repository hosting service that can be used for version control and collaboration.

# Creating a personal token
## Why is it required?
Personal access tokens are required for authentication to GitHub when using the GitHub API or the command line. They are an alternative to using passwords ([GitHub](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)).

## How to create it?
The steps to create a personal access token to authenticate to GitHub can be found [here](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token). 

# What is a git repository?
Git repositories contain all files and folders associated with a project as well as the file's version history. Repositories allow users to interact with the version history, clone the repository for editing, merge/commit changes to the remote repository, compare changes across versions, etc. 

# Task: Create a new git repository.
A new repository can be created using the GitHub website. 

# Remote and local
The remote repository is the "main" repository that all collaborators in a project have access to. An individual's local repository resides on their own computer only. 

Local repositories can be used to make changes to source code which can then be merged to the remote repository. 

# Cloning your repo to local
Make a directory for the repository
```bash
$ mkdir repositories
```
Once in this directory, type
```bash
$ git clone {repository-link}
```
Then, ls to check that the repository has been added to the directory. 

# Making changes to local version
Type
```bash
$ nano {filename}
```
to edit the desired file in the local repository. 

# Uploading your changes to remote

## How to check what changes you have made
Type
```bash
$ git status
```
to check for untracked files/changes made.

## Track newly added files
Type 
```bash
$ git add -A
```
to track all untracked files.

OR

Type 
```bash
$ git add {filename}
```
to track a specific file.

## Commit new changes
Type 
```bash
$ git commit -m <"message">
```
to commit new changes. The message denotes the new commits. 

## Origin and Master
Any remote repository found on GitHub is known as the origin. 

"Master" is the name of the default branch (independent version) of a repository - this is used to make edits to the origin. 

[GeeksforGeeks](https://www.geeksforgeeks.org/git-origin-master/)

## Pushing the changes to remote
Type
```bash
$ git push origin master
```
to push the changes made to the remote repository (i.e. merging the master to the origin).

# Forking someone else's repo

# Task: Fork 

# References
https://www.atlassian.com/git/tutorials

[Git Cheat Sheet](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet)
