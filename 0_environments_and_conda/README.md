# What is a virtual environment?
A virtual environment is a place where code can be developed/executed. Environments also allow the user to compartmentalize the installation of project dependencies instead of installing them system-wide. ([GeeksforGeeks](https://www.geeksforgeeks.org/python-virtual-environment/) and [FreeCodeCamp](https://www.freecodecamp.org/news/python-virtual-environments-explained-with-examples/))


# Why do we need virtual environments?
The creation of isolated environments prevents the pollution of the operating system's global environment. If packages are installed directly to the global environment, they may interfere with the operating system's normal function.

Isolated environments also keep dependencies for different projects separate so that they do not conflict. This prevents system errors and makes it much easier to identify packages used for a specific project, rather than having to manually search for them within a single environment. Creating and using virtual environments ultimately organizes the global system. [(Real Python)](https://realpython.com/python-virtual-environments-a-primer/#why-do-you-need-virtual-environments)


# What is Conda?
Conda is an open source environment and package manager that can run on Windows, macOS, and Linux. It runs, installs, and updates packages and their dependencies. It can also be used to create, save, load, and switch between environments on a computer. [(Conda)](https://docs.conda.io/en/latest/)


# Why do we need Conda?
Conda allows the user to find and install packages within an environment. As a package manager, its distinguishing feature is that it can also be used to create/switch between environments. This is especially useful when the user runs packages requiring different versions of Python than the normal environment.

As opposed to the Python-specific package manager Pip, Conda can package and distribute software for any language, making it a versatile tool. Unlike Pip, Conda also uses a satisfiability solver to ensure that package requirements/dependencies do not conflict. This prevents the creation of broken environments. [(Anaconda)](https://www.anaconda.com/blog/understanding-conda-and-pip)

Conda and miniconda come with many packages required for data analysis/data science. This makes working on projects in these fields much easier. 

[Conda Explanation Video](https://www.youtube.com/watch?v=23aQdrS58e0)


# Setting up Conda
TODO: create a bash script to download and setup conda
[Miniconda Download](https://docs.conda.io/en/latest/miniconda.html)

After using the download above, you can verify that Conda is installed on your system by typing **$ conda info**

A list of Conda commands can be found [here](https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf).


# How do you create an environment?

```bash
$ conda create -n {environment_name} -c {*channels} python={version} {*packages}
```


# How to view already created conda environments?

```bash
$ conda env list
```


# How do you activate/deactivate a Conda environment?

```bash
$ conda activate {environment_name}
$ conda deactivate {environment_name}
```


# How to list the packages installed in a conda environment?

```bash
$ conda list
```


# Task: Create a conda environment with the following set of packages.

## Packages
1. python=3
2. trimmomatic
3. star
4. htseq
5. bioconductor-deseq2 
6. pandas 
7. scikit-learn 
8. seaborn

## Channels
1. conda-forge
2. anaconda
3. bioconda

**Result:**

```bash
$ conda create -n firstenvironment -c conda-forge -c anaconda -c bioconda python=3 trimmomatic star htseq bioconductor-deseq2 pandas scikit-learn seaborn
```
