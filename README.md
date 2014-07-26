Get_clean_data_project
======================

Repository for "course project", Coursera "Getting and cleaning data"
```
AUTHOR: Isabel M. Izquierdo Martin (imim@tid.es)

DATE: 07/26/2014

CONTENT:

     run_analysis.R script
     codebook explaining the variables generated in the output
```
```
PURPOSE:
 R script that load a train and a test dataset, and some "axiliary" files,
 select only mean and std variables, and generates a merged and tidy new dataset,
 that calculates he average of each variable for each activity and each subject

INPUT: (See "LIMITATIONS")
       subject_train.txt
       X_train.txt")
       y_train.txt")
       subject_test.txt")
       X_test.txt")
       y_test.txt")
       features.txt

OUTPUT: A file "aggData.txt" in the working directory, containing the average 
        of each variable for each activity and each subject, after having selected
        only mean and std variables, with describing variables in the names

       Plese see the "codebook" for more details
       
       In order to load this output tidy dataset into R, please execute:
       aggData <- read.table("aggData.txt", header = TRUE, sep ="|")
```
```
LIMITATIONS:
 Both the current script run_analysis.R and the data source directory
 must be in the working directory.
 The source directory must be "/UCI HAR Dataset", with the same structure it has
 when this zip:
 "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
 is downloaded un unzipped in the working directory
```
```
EXECUTION COMMAND EXAMPLE (mac terminal):
 In the working directory, where we must have "run_analysis.R" script,
 and the directory "/UCI HAR Dataset" as mentioned in "LIMITATIONS", execute:
 R CMD BATCH --no-save --no-restore run_analysis.R
 and the output "aggData.txt" will be created in the same working directory
```

SCRIPT DESCRIPTION STEP BY STEP:
* First, reading train and test input data

* In order to accomplish " 4. Appropriately labels the data set with descriptive variable names: 
  * Reading features.txt and substituing special characters in features
  * Assigning features as "column names" in the input datasets

* In order to accomplish "  Extracts only the measurements on the mean and standard deviation
 for each measurement", subset, only those columns 

* In order to accomplish "  Uses descriptive activity names to name the activities in the data set:
  * Substituing numbers by descriptions in "activity" labels
     * 1 WALKING
     * 2 WALKING_UPSTAIRS
     * 3 WALKING_DOWNSTAIRS
     * 4 SITTING
     * 5 STANDING
     * 6 LAYING
  * Adding a column with activity labels to the datasets
  * Adding a column with the subjects to the datasets

* In order to accomplish "Merges the training and the train sets to create one data set", joining
 train and test datasets with rbind

*  In order to accomplish "Creates a second, independent tidy data set with the average of each
 variable":
   * Executing "aggregate" by subject and activity and mean as FUN
   * Renaming the mean columns with the prefix "mean_"
   * Saving the final tidy dataset in order to submit the course project


