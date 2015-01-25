
##my steps are unique to this script and don't match 100% with project steps. I noted more steps than project instructions in order to provide more information.

##load appropriate packages
library(dplyr)

##Read the data sets into variables
Features <- read.table("features.txt", header = FALSE, stringsAsFactors = FALSE)
Test_Y <- read.table("test/y_test.txt", header = FALSE)
Test_X <- read.table("test/x_test.txt", header = FALSE)
Subject_Test <- read.table("test/subject_test.txt", header = FALSE)
Train_Y <- read.table("train/y_train.txt", header = FALSE)
Train_X <- read.table("train/x_train.txt", header = FALSE)
Subject_Train <- read.table("train/subject_train.txt", header = FALSE)
Activity_labels <- read.table("activity_labels.txt", header = FALSE)

##Combine the training and test sets to create one set, set colnames to be descriptive using the Features.txt file in zipped raw data package
##which is stored in the Features variable.

x <- rbind(Test_X, Train_X)
y <- rbind(Test_Y, Train_Y)
colnames(y) <- "Activity"
Subjects <- rbind(Subject_Test, Subject_Train)
colnames(Subjects) <- "Subject"

names_vector <- Features[,2] 
names_vector <- make.names(names_vector, unique=TRUE)
## tidy up names a bit by removing parenthesis. This is important here to support the cbind function
names_vector <- sub("()", "", names_vector, fixed = TRUE)
colnames(x) <- names_vector

##bind all data together into one large data set including subjects, activity(numeric values), and measurements
MergedData <- cbind(Subjects, y, x)

##Extract only the measurements on the mean and standard deviation for each measurement into a
##new data set.

MergedData_DF <- tbl_df(MergedData)
names(MergedData_DF) <- make.names(names(MergedData_DF), unique = TRUE)
## This keeps only measurements for mean (.mean.) and standard deviation (std), intentially excluding meanfrequency measurements
mean_std_data <- select(MergedData_DF, Subject, Activity, contains(".mean."), contains("std"))


##Use descriptive activity names to name the activities in the data set

##creates a vector we can add to our data set so that we have proper activity names. 
activity <- c(mean_std_data$Activity)
activity <- gsub(1, "walking", activity)
activity <- gsub(2, "walking_upstairs", activity)
activity <- gsub(3, "walking_downstairs", activity)
activity <- gsub(4, "sitting", activity)
activity <- gsub(5, "standing", activity)
activity <- gsub(6, "laying", activity)

named_data <- cbind(activity, mean_std_data, stringsAsFactors = FALSE)
DATA_DF <- tbl_df(named_data)

##no need for two activity columns. This removes the numeric activity column.
DATA_DF <- select(DATA_DF, -Activity)

##Appropriately label the data set with the descriptive variable names. (Note: unclean variable names were added earlier in the script and partially cleaned
##This script takes those variable names and finally cleans them by removing all punctuation.
cols <- names(DATA_DF)
cols <- gsub("[[:punct:]]", "", cols)

names(DATA_DF) <- cols

##From the data set above, create a second, independent tidy data set with the average of
##each variable for each activity and each subject.

TidyData <- DATA_DF %>% group_by(Subject, activity) %>% summarise_each(funs(mean))


##Write final tidy data set to file
write.table(TidyData, "TidyData.csv", row.names = FALSE)
