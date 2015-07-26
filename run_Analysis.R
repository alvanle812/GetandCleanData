setwd("./data")

library(data.table)
library(dplyr)

# 1. Merges the training and the test sets to create one data set:

# Read both train and test sets 
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

# Read activity & feature variables into data tables
features <- read.table("./UCI HAR Dataset/features.txt")
activity <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)

# Merge activity, subject & feature train and test data sets by rows 
x <- rbind(x_train,x_test)
y <- rbind(y_train,y_test)
s <- rbind(subject_train, subject_test)

# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
index_features <- grep("-mean\\(\\)|-std\\(\\)", features$FeatureName) 
x <- x[, index_features]
names(x) <- gsub("\\(|\\)", "", (features[index_features, 2]))

# 3. Uses descriptive activity names to name the activities in the data set:
# 4. Appropriately labels the data set with descriptive activity names:

# Assign friendly column names in all the data tables
colnames(features) <- c("FeatureId", "FeatureName")
colnames(activity) <- c("ActivityId","ActivityName")
colnames(y) <- "Activity"
colnames(s) <- "Subject"
y[,1] <- activity[y[,1],2]

# Combine activity, subject & feature variables into one data set
data <- cbind(s,y,x)

# Calculate average grouped by subject & activity
avgData <- data[, 3:dim(data)[2]]
tidyData <- aggregate(avgData,list(data$Subject, data$Activity),mean)
names(tidyData)[1] <- "Subject"
names(tidyData)[2] <- "Activity"

# Save result to a text file in the working directory
write.table(tidyData, file="tidyData.txt", row.names= FALSE)





