#Code Book
##Variables
###subject
experiment participant(id):there are total of 30 participants with unique ids.<br /> 
###activity
|id|Activity Name    |
|--:|:----------------|
|01| WALKING          |
|02|WALKING_UPSTAIRS  |
|03|WALKING_DOWNSTAIRS|
|04|SITTING           |
|05|STANDING          | 
|06|LAYING            |
###features
|Column id|Feature Name|
|---------:|:------------------------|
|   3| timeBodyAcc-mean()-X |
|   4| timeBodyAcc-mean()-Y |
|5   | timeBodyAcc-mean()-Z |
|   6| timeBodyAcc-std()-X |
|   7| timeBodyAcc-std()-Y |
|   8| timeBodyAcc-std()-Z |
|  9| timeGravityAcc-mean()-X |
|  10| timeGravityAcc-mean()-Y |
|  11| timeGravityAcc-mean()-Z |
|  12| timeGravityAcc-std()-X |
|  13| timeGravityAcc-std()-Y |
|  14| timeGravityAcc-std()-Z |
|  15| timeBodyAccJerk-mean()-X |
|  16| timeBodyAccJerk-mean()-Y |
|  17| timeBodyAccJerk-mean()-Z |
|  18| timeBodyAccJerk-std()-X |
|  19| timeBodyAccJerk-std()-Y |
|  20| timeBodyAccJerk-std()-Z |
| 21| timeBodyGyro-mean()-X |
| 22| timeBodyGyro-mean()-Y |
| 23| timeBodyGyro-mean()-Z |
| 24| timeBodyGyro-std()-X |
| 25| timeBodyGyro-std()-Y |
| 26| timeBodyGyro-std()-Z |
| 27| timeBodyGyroJerk-mean()-X |
| 28| timeBodyGyroJerk-mean()-Y |
| 29| timeBodyGyroJerk-mean()-Z |
| 30| timeBodyGyroJerk-std()-X |
| 31| timeBodyGyroJerk-std()-Y |
| 32| timeBodyGyroJerk-std()-Z |
| 33| timeBodyAccMag-mean() |
| 34| timeBodyAccMag-std() |
| 35| timeGravityAccMag-mean() |
| 36| timeGravityAccMag-std() |
| 37| timeBodyAccJerkMag-mean() |
| 38| timeBodyAccJerkMag-std() |
| 39| timeBodyGyroMag-mean() |
| 40| timeBodyGyroMag-std() |
| 41| timeBodyGyroJerkMag-mean() |
| 42| timeBodyGyroJerkMag-std() |
| 43| frecuencyBodyAcc-mean()-X |
| 44| frecuencyBodyAcc-mean()-Y |
| 45| frecuencyBodyAcc-mean()-Z |
| 46| frecuencyBodyAcc-std()-X |
| 47| frecuencyBodyAcc-std()-Y |
| 48| frecuencyBodyAcc-std()-Z |
| 49| frecuencyBodyAccJerk-mean()-X |
| 50| frecuencyBodyAccJerk-mean()-Y |
| 51| frecuencyBodyAccJerk-mean()-Z |
| 52| frecuencyBodyAccJerk-std()-X |
| 53| frecuencyBodyAccJerk-std()-Y |
| 54| frecuencyBodyAccJerk-std()-Z |
| 55| frecuencyBodyGyro-mean()-X |
| 56| frecuencyBodyGyro-mean()-Y |
| 57| frecuencyBodyGyro-mean()-Z |
| 58| frecuencyBodyGyro-std()-X |
| 59| frecuencyBodyGyro-std()-Y |
| 60| frecuencyBodyGyro-std()-Z |
| 61| frecuencyBodyAccMag-mean() |
| 62| frecuencyBodyAccMag-std() |
| 63| frecuencyBodyBodyAccJerkMag-mean() |
| 64| frecuencyBodyBodyAccJerkMag-std() |
| 65| frecuencyBodyBodyGyroMag-mean() |
| 66| frecuencyBodyBodyGyroMag-std() |
| 67| frecuencyBodyBodyGyroJerkMag-mean() |
| 68| frecuencyBodyBodyGyroJerkMag-std() |
All the above feature names are extracted from "features.txt" that in the original "UCI HAR Dataset" folder<br /> 
Details about those features can be found in "features_info.txt" in "UCI HAR Dataset" folder<br />
###brief description of the R script
1.Read in "subject_train.txt","y_train.txt", and "X_train.txt".<br />
2.Creat a data frame that binds the above tables in the order of subject,y(activity), and x(features).<br />
3.Read in "subject_test.txt","y_test.txt", and "X_test.txt".<br />
4.Creat a data frame that binds the above tables in the order of subject,y(activity), and x(features).<br />
5.Row-wisely bind the data frame from step 4 and the data frame  from step 2. Save the result to a variable named "dataset".<br />
6.Read in ¡°features.txt¡± and search the key worlds "mean()" and "std()".<br />
7.Extract all the wanted features and extract "subject" column, "activity" column, and the corresponding feature columns from "dataset".<br />
8.Save the result from step 7 to a varibale named "meanStdDataset".<br />
9.Now the activiy column contains intergers. Convert it into a factor type column..<br />
10.Set the levels of the activity column into the appropriate activity names according to "activity_labels.txt".<br />
11.Since there are 30 participants and 6 activities, there are 180 combinations.<br />
12.Use a nested for loop to calculate the means of the wanted features of each combination.<br />
13.Column-wisely bind the subject, activity, and all the means into one data frame.<br />
14.Save the result from step 13 to the variable named summeryTable.<br />
15.Output "summeryTable" to the folder "UCI HAR Dataset" with the name "tidy_dataset".<br />
