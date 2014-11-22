RCleaningData_project
=====================

#Getting and Cleaning Data - Course project

## Assignment description from Coursera
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement. 
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names. 
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Code structure

Code consists of only one file - run_analysis.R

## Dependencies

run_analysis.R requires reshape2 in order to run.

## Instructions to run the code

1. Download the original data zip file and unpack it to your working directory
2. run the file run_analysis.R, it will produce data file - tidy.csv from original data
3. Load data with the following command : read.table("tidy.csv")


