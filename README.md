GettingAndCleaningDataAssessment
================================

R scripts to clean data and make it tidy.

run_analysis.R
==============

This R script performs the following steps, as per the project assignment instructions:

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive activity names.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
how to download the original data

This script assumes that you have already downloaded and unzipped the original Samsung data in a folder called UCI HAR Dataset.

how to run the analysis

In your R enviroment (in the same folder where the data files are), load the script:

source('run_analysis.R')
The end result will be a file called tidyDataset.txt' in the same folder.

The final tidy dataset
======================

Each row in the final, clean dataset contains subject, activity, and measures for all required features (i.e., mean or standard deviation grouped on the subject id and the activity).
