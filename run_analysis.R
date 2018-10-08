#load required packages
library(dplyr)
library(tidyr)

#load relevant files into R
features <- read.table("./UCI HAR Dataset/features.txt")
act_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

#function for relabeling activity names
activityrename <- function (x) {
  x <- act_labels[x,2]
}

#turns factor values into character values for later labeling use
features[2] <- lapply(features[2], as.character)

#combine train subject and y tables
sytrain <- cbind(subject_train, y_train)
colnames(sytrain) <- c("subject","activity")

#combine test subject and y tables
sytest <- cbind(subject_test, y_test)
colnames(sytest) <- c("subject","activity")

#combine train and test subject and y tables
sytraintest <- rbind(sytrain, sytest)

#combine train and test x tables
xtraintest <- rbind(x_train, x_test)

#select only mean and standard deviation measurements from xtraintest table
meanstd <- xtraintest %>% select(grep("mean|std", features[[2]]))

#renames column names of meanstd table to more descriptive terms
colnames(meanstd) <- features[grep("mean|std", features[[2]]), 2]

#combines sytraintest table and meanstd table to give tidy table with required labels and information
cleantable <- cbind(sytraintest, meanstd)
cleantable$activity <- lapply(cleantable$activity, activityrename)
cleantable$activity <- as.vector(unlist(cleantable$activity))
cleantable <- data.frame(cleantable, stringsAsFactors = TRUE)


#creates a new table with the average of each variable for each activity and each subject
tblclean <- tbl_df(cleantable)
cleanaverage <- tblclean %>% group_by(subject, activity) %>% summarize_all(funs(mean))

#prints out summary table of averages to check work
head(cleanaverage[1:3])

#saves summary table of averages to .txt
write.table(cleanaverage, file = "gettingandcleaningdataprojectVINSON.txt", row.names = FALSE)
