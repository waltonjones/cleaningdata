# This script does the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Download the dataset, unzip
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="raw.zip", method="curl")
date_downloaded <- date()
unzip("raw.zip")

# Load the movement data from test and training sets and merge them
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
x <- rbind(xtest, xtrain)

# Make the variable names descriptive
xvar <- read.table("UCI HAR Dataset/features.txt")
names(x)<-xvar$V2

# Subset the activity data to only include mean() and std() columns
x <- subset(x, select=grep("-mean\\(\\)|-std\\(\\)", names(x)))

# Clean up the variable names by removing hyphens, parentheses, and changing to CamelCase.
names <- gsub("-", "", names(x))
names <- gsub("mean", "Mean", names)
names <- gsub("std", "Std", names)
names <- gsub("\\(\\)", "", names)
names(x) <- names

# Load the activity data from test and training sets and merge them
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
y <- rbind(ytest, ytrain)

# Re-map the numbered activities to more descriptive values
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
# install.packages("plyr")
library(plyr)
y <- data.frame(mapvalues(y$V1, from=activities$V1, to=as.character(activities$V2)))

# Change the variable name for the activity data
names(y) <- "activity"

# Load the subject data from test and training sets and merge them
subtest <- read.table("UCI HAR Dataset/test/subject_test.txt")
subtrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
sub <- rbind(subtest, subtrain)

# Change the variable name for the subject data
names(sub) <- "subject"

# Merge the subject, activity, and subsetted activity data to create tidy1
tidy1 <- cbind(sub, y, x)

# Create tidy2 containing averages for each variable, subject, and activity
library(dplyr)
grouped <- tidy1 %>% group_by(subject, activity)
tidy2 <- grouped %>% summarise_each(funs(mean))

# Write the tidy dataset to a file
write.table(tidy2, file="tidydata.txt", sep="\t")