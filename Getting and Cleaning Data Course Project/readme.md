
# Getting and Cleaning Data Course Project

This activity is a course project for cleaning and tidying raw data for a further analysis

## Requirements
1. Getting involve with the data and how is collected [General info](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
2. Getting the data [Data for the project](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
3. Prepare data for analysis with teh following instructions

|No.|Instruction|
|---|---|
|1.|Merges the training and the test sets to create one data set.|
|2.|Extracts only the measurements on the mean and standard deviation for each measurement.|
|3.|Uses descriptive activity names to name the activities in the data set|
|4.|Appropriately labels the data set with descriptive variable names.|
|5.|Create an independent tidy data set with the average of each variable for each activity and each subject|


## Summary

- Keeping just the variables of interest mean() and std()  (saving ram memory)
- Structuring the data frame and setting names for all variables
- Combine the activities classification and subjects IDs
- Putting activities labels
- Tidying the table_DataFrame summary
- "Writing" the output file
