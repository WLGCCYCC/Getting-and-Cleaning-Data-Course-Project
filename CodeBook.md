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
|   1| timeBodyAcc-mean()-X |
|   2| timeBodyAcc-mean()-Y |
|3| timeBodyAcc-mean()-Z |
|   4| timeBodyAcc-std()-X |
	|   5| timeBodyAcc-std()-Y |
	|   6| timeBodyAcc-std()-Z |
	|  41| timeGravityAcc-mean()-X |
	|  42| timeGravityAcc-mean()-Y |
	|  43| timeGravityAcc-mean()-Z |
	|  44| timeGravityAcc-std()-X |
	|  45| timeGravityAcc-std()-Y |
	|  46| timeGravityAcc-std()-Z |
	|  81| timeBodyAccJerk-mean()-X |
	|  82| timeBodyAccJerk-mean()-Y |
	|  83| timeBodyAccJerk-mean()-Z |
	|  84| timeBodyAccJerk-std()-X |
	|  85| timeBodyAccJerk-std()-Y |
	|  86| timeBodyAccJerk-std()-Z |
	| 121| timeBodyGyro-mean()-X |
	| 122| timeBodyGyro-mean()-Y |
	| 123| timeBodyGyro-mean()-Z |
	| 124| timeBodyGyro-std()-X |
	| 125| timeBodyGyro-std()-Y |
	| 126| timeBodyGyro-std()-Z |
	| 161| timeBodyGyroJerk-mean()-X |
	| 162| timeBodyGyroJerk-mean()-Y |
	| 163| timeBodyGyroJerk-mean()-Z |
	| 164| timeBodyGyroJerk-std()-X |
	| 165| timeBodyGyroJerk-std()-Y |
	| 166| timeBodyGyroJerk-std()-Z |
	| 201| timeBodyAccMag-mean() |
	| 202| timeBodyAccMag-std() |
	| 214| timeGravityAccMag-mean() |
	| 215| timeGravityAccMag-std() |
	| 227| timeBodyAccJerkMag-mean() |
	| 228| timeBodyAccJerkMag-std() |
	| 240| timeBodyGyroMag-mean() |
	| 241| timeBodyGyroMag-std() |
	| 253| timeBodyGyroJerkMag-mean() |
	| 254| timeBodyGyroJerkMag-std() |
	| 266| frecuencyBodyAcc-mean()-X |
	| 267| frecuencyBodyAcc-mean()-Y |
	| 268| frecuencyBodyAcc-mean()-Z |
	| 269| frecuencyBodyAcc-std()-X |
	| 270| frecuencyBodyAcc-std()-Y |
	| 271| frecuencyBodyAcc-std()-Z |
	| 345| frecuencyBodyAccJerk-mean()-X |
	| 346| frecuencyBodyAccJerk-mean()-Y |
	| 347| frecuencyBodyAccJerk-mean()-Z |
	| 348| frecuencyBodyAccJerk-std()-X |
	| 349| frecuencyBodyAccJerk-std()-Y |
	| 350| frecuencyBodyAccJerk-std()-Z |
	| 424| frecuencyBodyGyro-mean()-X |
	| 425| frecuencyBodyGyro-mean()-Y |
	| 426| frecuencyBodyGyro-mean()-Z |
	| 427| frecuencyBodyGyro-std()-X |
	| 428| frecuencyBodyGyro-std()-Y |
	| 429| frecuencyBodyGyro-std()-Z |
	| 503| frecuencyBodyAccMag-mean() |
	| 504| frecuencyBodyAccMag-std() |
	| 516| frecuencyBodyBodyAccJerkMag-mean() |
	| 517| frecuencyBodyBodyAccJerkMag-std() |
	| 529| frecuencyBodyBodyGyroMag-mean() |
	| 530| frecuencyBodyBodyGyroMag-std() |
	| 542| frecuencyBodyBodyGyroJerkMag-mean() |
	| 543| frecuencyBodyBodyGyroJerkMag-std() |
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
