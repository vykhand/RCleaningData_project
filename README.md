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
2. run the file run_analysis.R, it will produce data file - tidy.txt from original data
3. Load data with the following command : read.table("tidy.txt")

## Inside the script

the following steps are performed in the run_analysis.R script:

1. The data is read from the original files - features.txt, activity_labels.txt, and datafiles inside the test and train directories
2. Varianble Names are replaced with names available in features.txt
3. Only columns related to std and mean are kept for further processing
4. X_*, Y_*, subject_* text files from test and train directories are merged together in a single dataset
5. Activity column transformed to a factor with activity names
6. Aggregated dataset, grouping by activity and subject and averaging all other variables. 
7. Output file is written





