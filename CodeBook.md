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
|3| BodyAcc-mean()-X|
|4| timeimeBodyAcc-mean()-Y|
|5| timeBodyAcc-mean()-Z |
|6| timeBodyAcc-stimed()-X |
|7| timeBodyAcc-stimed()-Y |
|8| timeBodyAcc-stimed()-Z |
|9| timeGravitimeyAcc-mean()-X |
|10| timeGravitimeyAcc-mean()-Y |
|11| timeGravitimeyAcc-mean()-Z |
|12| timeGravitimeyAcc-stimed()-X |
|13| timeGravitimeyAcc-stimed()-Y |
|14| timeGravitimeyAcc-stimed()-Z |
|15| timeBodyAccJerk-mean()-X |
|16| timeBodyAccJerk-mean()-Y |
|17| timeBodyAccJerk-mean()-Z |
|18| timeBodyAccJerk-stimed()-X |
|19| timeBodyAccJerk-stimed()-Y |
|20| timeBodyAccJerk-stimed()-Z |
|21| timeBodyGyro-mean()-X |
|22| timeBodyGyro-mean()-Y |
|23| timeBodyGyro-mean()-Z |
|24| timeBodyGyro-stimed()-X |
|25| timeBodyGyro-stimed()-Y |
|26| timeBodyGyro-stimed()-Z |
|27| timeBodyGyroJerk-mean()-X |
|28| timeBodyGyroJerk-mean()-Y |
|29| timeBodyGyroJerk-mean()-Z |
|30| timeBodyGyroJerk-stimed()-X |
|31| timeBodyGyroJerk-stimed()-Y |
|32| timeBodyGyroJerk-stimed()-Z |
|33| timeBodyAccMag-mean() |
|34| timeBodyAccMag-stimed() |
|35| timeGravitimeyAccMag-mean() |
|36| timeGravitimeyAccMag-stimed() |
|37| timeBodyAccJerkMag-mean() |
|38| timeBodyAccJerkMag-stimed() |
|39| timeBodyGyroMag-mean() |
|40| timeBodyGyroMag-stimed() |
|41| timeBodyGyroJerkMag-mean() |
|42| timeBodyGyroJerkMag-stimed() |
|43| frecuencyBodyAcc-mean()-X |
|44| frecuencyBodyAcc-mean()-Y |
|45| frecuencyBodyAcc-mean()-Z |
|46| frecuencyBodyAcc-stimed()-X |
|47| frecuencyBodyAcc-stimed()-Y |
|48| frecuencyBodyAcc-stimed()-Z |
|49| frecuencyBodyAccJerk-mean()-X |
|50| frecuencyBodyAccJerk-mean()-Y |
|51| frecuencyBodyAccJerk-mean()-Z |
|52| frecuencyBodyAccJerk-stimed()-X |
|53| frecuencyBodyAccJerk-stimed()-Y |
|54| frecuencyBodyAccJerk-stimed()-Z |
|55| frecuencyBodyGyro-mean()-X |
|56| frecuencyBodyGyro-mean()-Y |
|57| frecuencyBodyGyro-mean()-Z |
|58| frecuencyBodyGyro-stimed()-X |
|59| frecuencyBodyGyro-stimed()-Y |
|60| frecuencyBodyGyro-stimed()-Z |
|61| frecuencyBodyAccMag-mean() |
|62| frecuencyBodyAccMag-stimed() |
|63| frecuencyBodyBodyAccJerkMag-mean() |
|64| frecuencyBodyBodyAccJerkMag-stimed() |
|65| frecuencyBodyBodyGyroMag-mean() |
|66| frecuencyBodyBodyGyroMag-stimed() |
|67| frecuencyBodyBodyGyroJerkMag-mean() |
|68| frecuencyBodyBodyGyroJerkMag-stimed() |
All the above feature names are extracted from "features.txt" that in the original "UCI HAR Dataset" folder<br /> 
Details about those features can be found in "features_info.txt" in "UCI HAR Dataset" folder<br />
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
15.Output "summeryTable" to the folder "UCI HAR Dataset" with the name "tidy_dataset".<br />
