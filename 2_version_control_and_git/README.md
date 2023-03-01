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

**Task**: Create a new git repository.
1. Go to *{your_github_account}* -> *Repositories* ->  *New*
2. Type in a repository name of your choice 
3. Choose a license for example: *MIT License*
4. Click *Create repository*


# Remote and local
Remote repository is the project version hosted in github website. 
Local repository is the version stored in an individuals local machine. 

Local repositories are used to make changes to the files associated with the project. Thereafter the changes are uploaded to the remote version. 


# Cloning your newly created git repo to local
To create a local version of the newly created repository, 
1. Get the repository link from GitHub:
Go to *{your_github_account}* -> Repositories -> Click on the desired repository -> Click *Code* dropdown bar -> Copy the repository link

2. Type:
    ```bash
    $ git clone {repository-link}
    ```


# Making changes to the local version
1. Change directory to the repository path:
    ```bash
    $ cd /path/to/repo
    ```

2. Make any change to the local version for example, create a new file named README.md and make changes to that file using the text editor *nano*:
    ```bash
    $ nano README.md
    ```


# Uploading your changes to the remote version

## Step 1: Checking/verifying what changes you have made
To check for untracked files/changes made, type
```bash
$ git status
```


## Step 2: Tell git to start tracking the changes
Changes made to a file need to be tracked by Git in order to later commit these changes to the local/remote repository. Untracked changes cannot be committed to these repositories. 

To track all untracked files, type 
```bash
$ git add -A
```

OR

To track a specific file, type 
```bash
$ git add {filename}
```

## Step 3: Commit the new changes with a descriptive commit message
Saving changes to a repository is known as making a *commit*. Commit messages should describe the changes that were made to the file in order to keep track of what was modified. 

To commit new changes, type 
```bash
$ git commit -m "{message}"
```

EXAMPLE: Committing changes to a README file
```bash
$ git commit -m "README-updated"
```

## Step 4: Pushing the changes to remote

### *Origin* and *Master*
Any remote repository found on GitHub is known as the *origin*. Each repository may have multiple branches. Branches are multiple versions of the same repository. *Master* is usually the name of the default branch (independent version) of a repository. [GeeksforGeeks](https://www.geeksforgeeks.org/git-origin-master/)


To upload changes made locally to the *Master* branch of the remote repository, type
```bash
$ git push origin master
```

# Collaborating on github
Forking and pull requests allow users to easily collaborate on projects using GitHub. This process allows individuals to propose changes to the main code without officially changing the main code. These changes can later be reviewed and incorporated into the main code by other collaborators. 

To collaborate:

## Step 1: Fork someone else's repo
A fork is a copy of an original (upstream) repository. A forked repository allows the user to propose changes to the upstream repository's code without *actually* affecting the upstream repository. 

**Task**: Fork repo: https://github.com/deeprob/bioinfo-tutorial

In order to fork a repository...
1. Go to the desired repository in GitHub 
2. Click the *Fork* button in the top right hand corner of the screen. 

This will create a new fork of the repository in your repositories menu. 

## Step 2: Create a local clone of the forked repo
Follow: [Cloning your newly created git repo to local]

## Step 3: Make changes to your local clone
Follow: [Making changes to the local version]

## Step 4: Add the changes made locally to remote
Follow: [Uploading your changes to the remote version]

## Step 5: Submit a pull request
Once local changes are uploaded to the remote repository, pull requests are used to share these proposed changes to other project collaborators. Thereafter, feedback can be received on the code/the changes can be merged to the main branch. 

To submit a pull request...
1. Go to *{your_github_account}* -> Repositories -> Go to the desired repository -> Click *Pull requests* -> Click *New pull request*.
2. In the dropdown menus, ensure that the *base* repository is the upstream repository to which you are merging your remote repository to. Also ensure that the *head* repository is the repository that you are merging to the upstream repository. 

# Pulling changes from remote
When edited by other collaborators, your remote repository may be ahead of your local repository in terms of commits. In order to pull these changes to your local repository to edit the updated version...

1. Sync changes from other collaborators to your remote repository by pressing the *Sync fork* button in the repository in GitHub. This will fetch any new commits from the upstream file. 
2. In the terminal, type

```bash
$ git pull origin master
```

to pull the changes from the remote repository to your local repository. Your local repository should now be up to date with the remote repository. 

# References
https://www.atlassian.com/git/tutorials

[Git Cheat Sheet](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet)
