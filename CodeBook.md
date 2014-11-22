---
title: "Codebook - Human Activity Recognition Using Smartphones Data Set"
author: "Andrey Vykhodtsev"
date: "22 Nov 2014"
output: html_document
---


## General information
This is a cleaned up and aggregated data, initially obtained from [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](UCI Machine Learning Repository).
This data represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

## Original data link

Original data is taken from here :

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Description of original data available in README.txt, that is present in the root of the archive.

##Data Set information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

After obtaining original dataset, I applied number of transformations, as stated in the next section

##Transformations performed on the dataset

1. Merged the training and the test sets to create one data set.
2. Extracted only the measurements on the mean and standard deviation for each measurement. 
3. Used descriptive activity names to name the activities in the data set
4. Appropriately labeled the data set with descriptive variable names. 
5. From the data set in step 4, created a second, independent tidy data set with the average of each variable for each activity and each subject.

##Cleaned up data set description

Dataset consists of one file - tidy.csv

This file contains the following variables:

1. **Activity** -  name of the activity performed while the data was measured. The values can be one of the following:
    + WALKING
    + WALKING_UPSTAIRS
    + WALKING_DOWNSTAIRS
    + SITTING
    + STANDING
    + LAYING
1. **Subject** - identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

All the other variables are averaged over activity and subject.
Detailed description of collection method is available in original README.txt

*  tBodyAcc-mean()-X
*  tBodyAcc-mean()-Y
*  tBodyAcc-mean()-Z
*  tBodyAcc-std()-X
*  tBodyAcc-std()-Y
*  tBodyAcc-std()-Z
*  tGravityAcc-mean()-X
*  tGravityAcc-mean()-Y
*  tGravityAcc-mean()-Z
*  tGravityAcc-std()-X
*  tGravityAcc-std()-Y
*  tGravityAcc-std()-Z
*  tBodyAccJerk-mean()-X
*  tBodyAccJerk-mean()-Y
*  tBodyAccJerk-mean()-Z
*  tBodyAccJerk-std()-X
*  tBodyAccJerk-std()-Y
*  tBodyAccJerk-std()-Z
*  tBodyGyro-mean()-X
*  tBodyGyro-mean()-Y
*  tBodyGyro-mean()-Z
*  tBodyGyro-std()-X
*  tBodyGyro-std()-Y
*  tBodyGyro-std()-Z
*  tBodyGyroJerk-mean()-X
*  tBodyGyroJerk-mean()-Y
*  tBodyGyroJerk-mean()-Z
*  tBodyGyroJerk-std()-X
*  tBodyGyroJerk-std()-Y
*  tBodyGyroJerk-std()-Z
*  tBodyAccMag-mean()
*  tBodyAccMag-std()
*  tGravityAccMag-mean()
*  tGravityAccMag-std()
*  tBodyAccJerkMag-mean()
*  tBodyAccJerkMag-std()
*  tBodyGyroMag-mean()
*  tBodyGyroMag-std()
*  tBodyGyroJerkMag-mean()
*  tBodyGyroJerkMag-std()
*  fBodyAcc-mean()-X
*  fBodyAcc-mean()-Y
*  fBodyAcc-mean()-Z
*  fBodyAcc-std()-X
*  fBodyAcc-std()-Y
*  fBodyAcc-std()-Z
*  fBodyAcc-meanFreq()-X
*  fBodyAcc-meanFreq()-Y
*  fBodyAcc-meanFreq()-Z
*  fBodyAccJerk-mean()-X
*  fBodyAccJerk-mean()-Y
*  fBodyAccJerk-mean()-Z
*  fBodyAccJerk-std()-X
*  fBodyAccJerk-std()-Y
*  fBodyAccJerk-std()-Z
*  fBodyAccJerk-meanFreq()-X
*  fBodyAccJerk-meanFreq()-Y
*  fBodyAccJerk-meanFreq()-Z
*  fBodyGyro-mean()-X
*  fBodyGyro-mean()-Y
*  fBodyGyro-mean()-Z
*  fBodyGyro-std()-X
*  fBodyGyro-std()-Y
*  fBodyGyro-std()-Z
*  fBodyGyro-meanFreq()-X
*  fBodyGyro-meanFreq()-Y
*  fBodyGyro-meanFreq()-Z
*  fBodyAccMag-mean()
*  fBodyAccMag-std()
*  fBodyAccMag-meanFreq()
*  fBodyBodyAccJerkMag-mean()
*  fBodyBodyAccJerkMag-std()
*  fBodyBodyAccJerkMag-meanFreq()
*  fBodyBodyGyroMag-mean()
*  fBodyBodyGyroMag-std()
*  fBodyBodyGyroMag-meanFreq()
*  fBodyBodyGyroJerkMag-mean()
*  fBodyBodyGyroJerkMag-std()
*  fBodyBodyGyroJerkMag-meanFreq()