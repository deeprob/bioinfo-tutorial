# File: miniconda_download.sh
# Date: 2 March 2023
# Author: Maria Ratnasamy
# Purpose: A script that downloads and sets up conda

miniconda_link=$1
miniconda_filepath=$2

# Save the miniconda file to the src folder
wget -O $miniconda_filepath $miniconda_link

# Run the miniconda installer 
bash $miniconda_filepath
