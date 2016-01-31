# Getting-and-Cleaning-Data-Course-Project

## run_analysis.R
### The R script performs the following five steps.
1.Merges the training and the test sets to create one data set. <br /> 
2.Extracts only the measurements on the mean and standard deviation for each measurement. <br /> 
3.Uses descriptive activity names to name the activities in the data set. <br /> 
4.Appropriately labels the data set with descriptive activity names. <br /> 
5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. <br /> 

## Information about the data.
### The raw data is from 
####http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
### The raw data can be downloaded from
####https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## How to correctlly run the script
1.Download the data from the above link. <br /> 
2.Unzip the file. <br /> 
3.Copy/Move the entire folder "UCI HAR Dataset" to your R working directory.  <br /> 
	*Please don't rename the folder because that will cause the script to throw an error. <br /> 
4.Download and put "run_analysis.R" in the R working directory. <br /> 
5.Open R and use the following code to source the scrpit. <br /> 
	*source("run_analysis.R") <br /> 
6.The outcome will be in the "UCI HAR Dataset" saved as "tidy_dataset.txt" <br /> 
7.Use the following code to see the tidy data set <br /> 
	*read.table("./UCI HAR Dataset/tidy_dataset.txt")

##Details about the variables are included in the CodeBook.md

--Jingjing(Shawn) Yu 31st Jan. 2016
