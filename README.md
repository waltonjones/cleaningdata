This repo comprises my submission for the final project of the "Getting and Cleaning Data" course on Coursera. It contains the following 4 files:

1. `README.md` - This file
2. `run_analysis.R` - An R script that downloads a motion analysis data set from the web and reformats it as "tidy" data
    - Can be run as is to download and produce the final data set 
    - Requires the plyr and dplyr packages
3. `tidydata.txt` - A copy of the final reformatted data set
4. `CodeBook.md` - An explanation of the variables in tidydata.txt

For a full explanation of the code itself, please see the inline comments in `run_analysis.R`. Briefly, `run_analysis.R` does the following:

1. Downloads the dataset from the web and unzips it
2. Loads the movement data from the test and training sets and merges them
3. Makes the variable names more descriptive than just generic R column names
4. Subsets the activity data to only include mean() and std() columns
5. Cleans up the variable names by removing hyphens, parentheses, and changing them to CamelCase
6. Loads the activity data from the test and training sets and merges them
7. Re-maps the numbered activities to more descriptive values
8. Changes the variable name for the activity data
9. Loads the subject data from the test and training sets and merges them
10. Changes the variable name for the subject data
11. Merges the subject, activity, and subsetted activity data to create tidy1
12. Creates tidy2 containing averages for each variable, subject, and activity
13. Writes the tidy dataset to a file
