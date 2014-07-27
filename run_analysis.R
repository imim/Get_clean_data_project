# AUTHOR: Isabel M. Izquierdo Martin (imim@tid.es)
# DATE: 07/26/2014

# PURPOSE:
## R script that load a train and a test dataset, and some "axiliary" files,
## select only mean and std variables, and generates a merged and tidy new dataset,
## that calculates he average of each variable for each activity and each subject

# INPUT: (See "LIMITATIONS")
##       subject_train.txt
##       X_train.txt")
##       y_train.txt")
##       subject_test.txt")
##       X_test.txt")
##       y_test.txt")
##       features.txt

# OUTPUT: A file "aggData.txt" in the working directory, containing the average 
#         of each variable for each activity and each subject, after having selected
#         only mean and std variables, with describing variables in the names

# Plese see the "code_book.txt" for more details

## In order to load this output tidy dataset into R, please execute:
# aggData <- read.table("aggData.txt", header = TRUE, sep ="|")

#LIMITATIONS:
## Both the current script run_analysis.R and the data source directory
## must be in the working directory.
## The source directory must be "/UCI HAR Dataset", with the same structure it has
## when this zip:
## "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
## is downloaded un unzipped in the working directory.

# EXECUTION COMMAND EXAMPLE (mac terminal):
## In the working directory, where we must have "run_analysis.R" script,
## and the directory "/UCI HAR Dataset" as mentioned in "LIMITATIONS", execute:
## R CMD BATCH --no-save --no-restore run_analysis.R
## and the output "aggData.txt" will be created in the same working directory

# Reading train data
trainSubjectData <- read.table("./UCI HAR Dataset/train/subject_train.txt")
trainDataset <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainLabelsData <- read.table("./UCI HAR Dataset/train/y_train.txt")

# Reading test data
testSubjectData <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testDataset <- read.table("./UCI HAR Dataset/test/X_test.txt")
testLabelsData <- read.table("./UCI HAR Dataset/test/y_test.txt")


## 4. Appropriately labels the data set with descriptive variable names. 
# Reading features
features <- read.table("./UCI HAR Dataset/features.txt")

# Substituing special characters in features
features.renamed <- gsub("\\(", "", features$V2)
features.renamed <- gsub("\\)", "", features.renamed)
features.renamed <- gsub("-", "", features.renamed)
features.renamed

# Features are "column names" in the datasets
colnames(trainDataset) <- features.renamed
colnames(testDataset) <- features.renamed


# # 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

trainDataset.reduced <- trainDataset[, c(1:3, 4:6, 41:46, 81:86, 121:126, 161:166, 201, 202, 214, 215,
                                         227, 228, 240, 241, 253:259, 266, 271, 345:350, 424:429, 503,
                                         504, 516, 517, 529, 530, 542, 543)]

testDataset.reduced <- testDataset[, c(1:3, 4:6, 41:46, 81:86, 121:126, 161:166, 201, 202, 214, 215,
                                         227, 228, 240, 241, 253:259, 266, 271, 345:350, 424:429, 503,
                                         504, 516, 517, 529, 530, 542, 543)]

# # 3. Uses descriptive activity names to name the activities in the data set
# Substituing numbers by descriptions in "activity" labels
# 1 WALKING
# 2 WALKING_UPSTAIRS
# 3 WALKING_DOWNSTAIRS
# 4 SITTING
# 5 STANDING
# 6 LAYING

# train: Substituing numbers by descriptions in "activity" labels
trainLabelsData.renamed <- gsub("1", "walking", trainLabelsData$V1)
trainLabelsData.renamed <- gsub("2", "walking_upstairs", trainLabelsData.renamed)
trainLabelsData.renamed <- gsub("3", "walking_downstairs", trainLabelsData.renamed)
trainLabelsData.renamed <- gsub("4", "sitting", trainLabelsData.renamed)
trainLabelsData.renamed <- gsub("5", "standing", trainLabelsData.renamed)
trainLabelsData.renamed <- gsub("6", "laying", trainLabelsData.renamed)
trainLabelsData.renamed

# test: Substituing numbers by descriptions in "activity" labels
testLabelsData.renamed <- gsub("1", "walking", testLabelsData$V1)
testLabelsData.renamed <- gsub("2", "walking_upstairs", testLabelsData.renamed)
testLabelsData.renamed <- gsub("3", "walking_downstairs", testLabelsData.renamed)
testLabelsData.renamed <- gsub("4", "sitting", testLabelsData.renamed)
testLabelsData.renamed <- gsub("5", "standing", testLabelsData.renamed)
testLabelsData.renamed <- gsub("6", "laying", testLabelsData.renamed)
testLabelsData.renamed

# Adding a column with activity labels to the datasets
trainDataset.reduced$activity <- trainLabelsData.renamed
testDataset.reduced$activity <- testLabelsData.renamed

# Adding a column with the subjects to the datasets
trainDataset.reduced$subject <- trainSubjectData$V1
testDataset.reduced$subject <- testSubjectData$V1

# # 1. Merges the training and the train sets to create one data set.
mergedDataset <- rbind(trainDataset.reduced, testDataset.reduced)

# # 5. Creates a second, independent tidy data set with the average of each variable
# #    for each activity and each subject
#aggdata <-aggregate(mtcars, by=list(cyl,vs),
#                    FUN=mean, na.rm=TRUE)

aggData = aggregate(. ~ subject * activity,
                              data=mergedDataset, FUN=mean)

# Renaming the mean columns with the prefix "avg"
varsNames <- colnames(aggData)[3:69]
varsNamesMean <- lapply(varsNames, function(item) paste("avg", item, sep="" ))
colnames(aggData)[3:69] <- varsNamesMean

# Saving the final tidy dataset in order to submit the course project
write.table(aggData, file = "aggData.txt", sep="|")

# In order to load this tidy dataset into R, please execute:
# aggData <- read.table("aggData.txt", header = TRUE, sep ="|")
