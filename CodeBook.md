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
All the following feature names are extracted from "features.txt" that in the original "UCI HAR Dataset" folder<br /> 
Details about those virables can be found in "features_info.txt" in "UCI HAR Dataset" folder<br />
|column id|Feature Name|
|--:|:----------------------|
|3|tBodyAcc-mean()-X|
|4|tBodyAcc-mean()-Y|
|5| tBodyAcc-mean()-Z |
|6| tBodyAcc-std()-X |
|7| tBodyAcc-std()-Y |
|8| tBodyAcc-std()-Z |
|9| tGravityAcc-mean()-X |
|10| tGravityAcc-mean()-Y |
|11| tGravityAcc-mean()-Z |
|12| tGravityAcc-std()-X |
|13| tGravityAcc-std()-Y |
|14| tGravityAcc-std()-Z |
|15| tBodyAccJerk-mean()-X |
|16| tBodyAccJerk-mean()-Y |
|17| tBodyAccJerk-mean()-Z |
|18| tBodyAccJerk-std()-X |
|19| tBodyAccJerk-std()-Y |
|20| tBodyAccJerk-std()-Z |
|21| tBodyGyro-mean()-X |
|22| tBodyGyro-mean()-Y |
|23| tBodyGyro-mean()-Z |
|24| tBodyGyro-std()-X |
|25| tBodyGyro-std()-Y |
|26| tBodyGyro-std()-Z |
|27| tBodyGyroJerk-mean()-X |
|28| tBodyGyroJerk-mean()-Y |
|29| tBodyGyroJerk-mean()-Z |
|30| tBodyGyroJerk-std()-X |
|31| tBodyGyroJerk-std()-Y |
|32| tBodyGyroJerk-std()-Z |
|33| tBodyAccMag-mean() |
|34| tBodyAccMag-std() |
|35| tGravityAccMag-mean() |
|36| tGravityAccMag-std() |
|37| tBodyAccJerkMag-mean() |
|38| tBodyAccJerkMag-std() |
|39| tBodyGyroMag-mean() |
|40| tBodyGyroMag-std() |
|41| tBodyGyroJerkMag-mean() |
|42| tBodyGyroJerkMag-std() |
|43| fBodyAcc-mean()-X |
|44| fBodyAcc-mean()-Y |
|45| fBodyAcc-mean()-Z |
|46| fBodyAcc-std()-X |
|47| fBodyAcc-std()-Y |
|48| fBodyAcc-std()-Z |
|49| fBodyAccJerk-mean()-X |
|50| fBodyAccJerk-mean()-Y |
|51| fBodyAccJerk-mean()-Z |
|52| fBodyAccJerk-std()-X |
|53| fBodyAccJerk-std()-Y |
|54| fBodyAccJerk-std()-Z |
|55| fBodyGyro-mean()-X |
|56| fBodyGyro-mean()-Y |
|57| fBodyGyro-mean()-Z |
|58| fBodyGyro-std()-X |
|59| fBodyGyro-std()-Y |
|60| fBodyGyro-std()-Z |
|61| fBodyAccMag-mean() |
|62| fBodyAccMag-std() |
|63| fBodyBodyAccJerkMag-mean() |
|64| fBodyBodyAccJerkMag-std() |
|65| fBodyBodyGyroMag-mean() |
|66| fBodyBodyGyroMag-std() |
|67| fBodyBodyGyroJerkMag-mean() |
|68| fBodyBodyGyroJerkMag-std() |
###brief description of the R script
1.Read in "subject_train.txt","y_train.txt", and "X_train.txt".<br />
2.Creat a data frame that binds the above tables in the order of subject,y(activity), and x(features).<br />
3.Read in "subject_test.txt","y_test.txt", and "X_test.txt".<br />
4.Creat a data frame that binds the above tables in the order of subject,y(activity), and x(features).<br />
5.Row-wisely bind the data frame from step 4 and the data frame  from step 3. Save the result to a variable named "dataset".<br />
6.Read in ¡°features.txt¡± and search the key worlds "mean()" and "std()".<br />
7.Extract all the wanted features and extract "subject" column, "activity" column, and the corresponding feature columns from "dataset".<br />
8.Save the result from step 7 to a varibale named "meanStdDataset".<br />
9.Now the activiy column contains intergers. Convert it into a factor type column..<br />
10.Set the levels of the activity column into the appropriate activity names according to "activity_labels.txt".<br />
11.Since there are 30 participants and 6 activities, there are 180 combinations.<br />
12.Use a nested for loop to calculate the means of the wanted features of each combination.<br />
13.Column-wisely bind the subject, activity, and all the means into one data frame.<br />
14.Save the result from step 13 to the variable named summeryTable.<br />
15.Output ¡°summeryTable" to the folder "UCI HAR Dataset" with the name "tidy_dataset".<br />
