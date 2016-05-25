# Getting-and-Cleaning-Data

##R Code
run_analysis.R is a code written to tidy the data set obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following steps are performed in the code:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names
5. Creates a second, independent tidy data set with the average of each variable for each activity and subject

run_analysis.R requires the following packages: data.table, dplyr, and tidyr

The code works by merging the test and train data sets and applying the features and activity labels. The mean and standard deviation column names and data are then extracted. Finally, the original activity names are replaced with more descriptive names before the data is exported as a .txt file.
