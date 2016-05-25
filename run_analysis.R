#Getting and Cleaning Data Course Project
##This code will clean and tidy data collected from accelerometers from the Samsung Galaxy S smartphone

#Loads packages
library(data.table)
library(dplyr)
library(tidyr)

#Read in files for Activity, Subject, and Features
##Activity
ActivityTest  <- read.table("./test/y_test.txt")
ActivityTrain <- read.table("./train/y_train.txt")

##Subject
SubjectTest  <- read.table("./test/subject_test.txt")
SubjectTrain <- read.table("./train/subject_train.txt")

##Features
FeaturesTest <- read.table("./test/X_test.txt")
FeaturesTrain <- read.table("./train/X_train.txt")


#Merges the training and test sets to create one data set
##Merges rows and rename variables for subject and activity data
ActivityData <- rbind(ActivityTrain, ActivityTest)
setnames(ActivityData, "V1", "ActivityNum")
SubjectData <- rbind(SubjectTrain, SubjectTest)
setnames(SubjectData, "V1", "Subject")

##Merges and renames variables for features data
FeaturesData <- rbind(FeaturesTrain, FeaturesTest)
FeaturesNames <- read.table("features.txt")
setnames(FeaturesNames, names(FeaturesNames), c("FeatureNum", "FeatureName"))
colnames(FeaturesData) <- FeaturesNames$FeatureName

##Renames columns for activity labels
ActivityLabels <- read.table("activity_labels.txt")
setnames(ActivityLabels, names(ActivityLabels), c("ActivityNum","ActivityName"))

##Merges columns
AllData <- cbind(SubjectData, ActivityData)
Data <- cbind(FeaturesData, AllData)


#Extracts the mean and standard deviation for each measurement
##Extracting mean and standard deviation
MeanStd <- grep("mean\\(\\)|std\\(\\)", FeaturesNames$FeatureName,value=TRUE)
MeanStd <- union(c("Subject", "ActivityNum"), MeanStd)
Data <- subset(Data, select = MeanStd) 


#Uses descriptive activity names for the activities in the data set
##Adds activity labels
Data <- merge(ActivityLabels, Data, by = "ActivityNum", all.x=TRUE)
Data$ActivityName <- as.character(Data$ActivityName)
AggregateData <- aggregate(. ~ Subject - ActivityName, data = Data, mean)
Data <- arrange(AggregateData, Subject, ActivityName)


#Labels the data set with descriptive variable names
names(Data) <- gsub("std()", "SD", names(Data))
names(Data) <- gsub("mean()", "Mean", names(Data))
names(Data) <- gsub("^t", "Time", names(Data))
names(Data) <- gsub("^f", "Frequency", names(Data))
names(Data) <- gsub("Acc", "Accelerometer", names(Data))
names(Data) <- gsub("Gyro", "Gyroscope", names(Data))
names(Data) <- gsub("Mag", "Magnitude", names(Data))
names(Data) <- gsub("BodyBody", "Body", names(Data))


#Creates a second, independent tidy data set with the average of each variable for each activity and subject
write.table(Data, "TidyData.txt", row.name=FALSE)
