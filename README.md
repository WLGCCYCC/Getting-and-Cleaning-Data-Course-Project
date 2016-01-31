# Getting-and-Cleaning-Data-Course-Project

## run_analysis.R
### The R script performs the following five steps.
*Merges the training and the test sets to create one data set.
*Extracts only the measurements on the mean and standard deviation for each measurement.
*Uses descriptive activity names to name the activities in the data set.
*Appropriately labels the data set with descriptive activity names.
*Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Information about the data.
### The raw data is from 
*http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
### The raw data can be downloaded from
*https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## How to correctlly run the script
###1.Download the data from the above link.
###2.Unzip the file.
###3.Copy/Move the entire folder "UCI HAR Dataset" to your R working directory. 
	*Please don't rename the folder because that will cause the script to throw an error.
###4.Download and put "run_analysis.R" in the R working directory.
###5.Open R and use the following code to source the scrpit.
	*source("run_analysis.R")
###6.The outcome will be in the "UCI HAR Dataset" saved as "tidy_dataset.txt"
###7.Use the following code to see the tidy data set
	*read.table("./UCI HAR Dataset/tidy_dataset.txt")

##Details about the variables are included in the CodeBook.md

*--Jingjing(Shawn) Yu 31st Jan. 2016
