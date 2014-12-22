# R script for tidying data

# 1) Merges the training and the test sets to create one data set.

#Loading the training Dataset:
trainingDataX <- read.table('UCI HAR Dataset/train/X_train.txt') 
trainingDataY <- read.table('UCI HAR Dataset/train/Y_train.txt')
trainingSubjects <- read.table('UCI HAR Dataset/train/subject_train.txt')
trainingData <- cbind(trainingSubjects,trainingDataY,trainingDataX)

#Loading the test Dataset:
testDataX <- read.table('UCI HAR Dataset/test/X_test.txt') 
testDataY <- read.table('UCI HAR Dataset/test/Y_test.txt')
testSubjects <- read.table('UCI HAR Dataset/test/subject_test.txt')
testData <- cbind(testSubjects,testDataY,testDataX)

#Merging the train and test Datasets:
mergedData <- rbind(trainingData, testData) 

features <- read.table('UCI HAR Dataset/features.txt', header=FALSE, col.names=c('id', 'featureName'))
featureNames <- as.character(features$featureName)
names(mergedData) <- c("subjectId", "Activity", featureNames)

# 2) Extracts only the measurements on the mean and standard deviation for each measurement. 

requiredColumns <- grep("mean\\(\\)|std\\(\\)|subjectId|Activity",names(mergedData))
filteredDataset <- mergedData[,requiredColumns]

# 3) Uses descriptive activity names to name the activities in the data set.
activityLabels<-read.table("UCI HAR Dataset/activity_labels.txt",header=FALSE, col.names=c('id', 'activityName'))
filteredDataset[, 2] = activityLabels[filteredDataset[, 2], 2]

# 4) Appropriately labels the data set with descriptive variable names.

names(filteredDataset)<-gsub("mean\\(\\)","mean",names(filteredDataset))
names(filteredDataset)<-gsub("std\\(\\)","stddeviation",names(filteredDataset))
names(filteredDataset)<-gsub("-X"," on X axis",names(filteredDataset))
names(filteredDataset)<-gsub("-Y"," on Y axis",names(filteredDataset))
names(filteredDataset)<-gsub("-Z"," on Z axis",names(filteredDataset))
names(filteredDataset)<-gsub("tBodyAcc","time domain Body Acceleration signal ",names(filteredDataset))
names(filteredDataset)<-gsub("tGravityAcc","time domain Gravity Acceleration signal ",names(filteredDataset))
names(filteredDataset)<-gsub("tBodyGyro","time domain Body Gyroscope signal",names(filteredDataset))
names(filteredDataset)<-gsub("Mag","Magnitude ",names(filteredDataset))
names(filteredDataset)<-gsub("Jerk","Jerk ",names(filteredDataset))
names(filteredDataset)<-gsub("fBodyBodyAcc","frequency domain Body Acceleration signal ",names(filteredDataset))
names(filteredDataset)<-gsub("fBodyBodyGyro","frequency domain Body Gyroscope signal ",names(filteredDataset))

# 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidyDataset <- aggregate(filteredDataset[,3:dim(filteredDataset)[2]], list(filteredDataset$subjectId, filteredDataset$Activity), mean)
names(tidyDataset)[1:2] <- c('subjectId', 'Activity')
write.table(tidyDataset, "tidyDataset.txt", row.name=FALSE)
write.csv(tidyDataset, "tidyDataset.csv")