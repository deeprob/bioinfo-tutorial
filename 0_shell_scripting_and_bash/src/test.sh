# File: test.sh
# Date: 2 March 2023
# Author: Maria Ratnasamy
# Purpose: A script that takes in a file path as the first argument and a string as second argument, creates a new file using the touch command in the specified filepath, and appends the string to that file.

# Create a new file in the specified filepath
test_file=$1
touch $test_file

# Append a string to the new file
test_output=$2
echo $test_output >> $test_file