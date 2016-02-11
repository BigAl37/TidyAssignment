## Required package to perform piping
library(magrittr)

## read all the files
xTest <- read.table("UCI HAR Dataset/test/X_test.txt")
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
yTest <- read.table("UCI HAR Dataset/test/y_test.txt")
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
subjTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
subjTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")


## Merge 
xMerge <- rbind(xTest, xTrain)
yMerge <- rbind(yTest, yTrain)
subjMerge <- rbind(subjTest, subjTrain)


## Spring Cleaning
rm(list = c("xTrain", "xTest", "yTrain", "yTest", "subjTest", "subjTrain"))


## Extract Measurements
measure <- read.table("UCI HAR Dataset/features.txt")
### Clean up column names
measure[,2] <- tolower(gsub("*-*|\\(|\\)|\\,", "", measure[,2]))
meanStd <- grep("mean|std", measure[,2])
xMeanStd <- xMerge[, meanStd]


## Naming Stuff
names(xMeanStd) <- measure[meanStd, 2]
activityLabels[,2] <- gsub("_", "", activityLabels[,2]) %>%
    as.character() %>%
    tolower() 

yMerge[,1] <- activityLabels[yMerge[,1], 2]
names(yMerge) <- "activity"
names(subjMerge) <- "subject"

result <- cbind(subjMerge, yMerge, xMeanStd)

## Create a new tidy data set with averages for subj and activity
resultAverage <- aggregate(result, by = list("activities" = result$activity, "subjects" = result$subject), FUN = mean, simplify = T)
resultAverage <- resultAverage[, -(3:4)]
write.table(resultAverage, file = "tidy.txt")
