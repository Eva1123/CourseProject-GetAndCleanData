## This script is to collect, work with and clean data from a number of files and produces 
## a tidy data set that can be used for further analysis.
## The input data come from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, 
## which are build from the recordings of 30 subjects performing activities of daily living (ADL) 
## while carrying a waist-mounted smartphone with embedded inertial sensors.

##check for required packages
if (!("reshape2" %in% rownames(installed.packages())) ) {
        print("Please install required package \"reshape2\" before proceeding")
} else {
        # load library reshapes
        library(reshape2)
        
        # read in train as well as test data
        trainData <- read.table("./train/X_train.txt")
        testData <- read.table("./test/X_test.txt")
        
        # label the data with descriptive variable names
        featurenames <- read.table("./features.txt")
        colnames(trainData) <- featurenames[,2]
        colnames(testData) <- featurenames[,2]
        
        # read in subject id for both train and test data
        trainSubjectId <- read.table("./train/subject_train.txt")
        testSubjectId <- read.table("./test/subject_test.txt")
        colnames(trainSubjectId) <- c("subject_id")
        colnames(testSubjectId) <- c("subject_id")
        
        # read in activity id for both train and test data
        trainActivityId <- read.table("./train/y_train.txt")
        testActivityId <- read.table("./test/y_test.txt")
        colnames(trainActivityId) <- c("activity_id")
        colnames(testActivityId) <- c("activity_id")
        
        # combine subject id, activity id with train data as well as test data respectively
        trainData <- cbind(trainSubjectId, trainActivityId, trainData)
        testData <- cbind(testSubjectId, testActivityId, testData)
        
        # append test data to train data
        totalData <- rbind(trainData, testData)
        
        # read in activity names
        activityNames <- read.table("./activity_labels.txt")
        colnames(activityNames) <- c("activity_id", "activity_name")
        
        # combine activity names with our data set
        totalData <- merge(activityNames, totalData, by.x = "activity_id", by.y = "activity_id")
        
        # subset columns whose names contain either "mean" or "std"
        meanColumnIdxs <- grep("mean",names(totalData),ignore.case=TRUE)
        meanColumnNames <- names(totalData)[meanColumnIdxs]
        stdColumnIdxs <- grep("std",names(totalData),ignore.case=TRUE)
        stdColumnNames <- names(totalData)[stdColumnIdxs]
        subsetData <-totalData[, c("subject_id", "activity_name", meanColumnNames, stdColumnNames)]
        
        # creates a second, independent tidy data set with the average of each variable for each activity and 
        # each subject
        tempMeltData <- melt(subsetData, id = c("subject_id", "activity_name"))
        tidyMeanData <- dcast(tempMeltData, subject_id + activity_name ~ variable, mean)
        write.table(tidyMeanData,"./tidyMeanData.txt")
}

