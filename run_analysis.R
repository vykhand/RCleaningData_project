# One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
#         
#         http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
# 
# Here are the data for the project: 
#         
#         https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# 
# You should create one R script called run_analysis.R that does the following. 
#         1. Merges the training and the test sets to create one data set.
#         2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#         3. Uses descriptive activity names to name the activities in the data set
#         4. Appropriately labels the data set with descriptive variable names. 
#         5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# 
# Good luck!

require(reshape2)

# reading data
feature.names <- read.table("UCI HAR Dataset/features.txt")
activity.labels <- read.table("UCI HAR Dataset/activity_labels.txt")
x.test <- read.table("UCI HAR Dataset/test/X_test.txt")
y.test <- read.table("UCI HAR Dataset/test/Y_test.txt")
subj.test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x.train <- read.table("UCI HAR Dataset/train/X_train.txt")
y.train <- read.table("UCI HAR Dataset/train/Y_train.txt")
subj.train <- read.table("UCI HAR Dataset/train/subject_train.txt")

#fixing names
names(x.train) <- names(x.test) <- feature.names[,2]
names(y.train) <- names(y.test) <- c("activity")
names(subj.train) <- names(subj.test) <- c("subject")

#selecting only columns related to std and mean
x.train <- x.train[,grepl("mean|std", feature.names[,2])]
x.test <- x.test[,grepl("mean|std", feature.names[,2])]

#merging it all together
dt.merged <- rbind(cbind(y.test,subj.test,x.test), cbind(y.train,x.train,subj.train))

#transforming activity to a factor with activity names
fc <- as.factor(dt.merged$activity)
levels(fc)  <- activity.labels[,2]
dt.merged$activity <- fc

#now we are going to melt and cast back the dataset, aggregating the values 
#with reshape2

dt.molten <- melt(dt.merged,id.vars = names(dt.merged)[1:2], measure.vars = names(dt.merged)[3:length(names(dt.merged))])
dt.tidy <- dcast(dt.molten, activity + subject ~ variable, mean)

#writing file
write.table(dt.tidy,"tidy.txt",row.names=FALSE)
#dt <- read.table("tidy.txt")

