##only source this script after you make sure that the folder "UCI HAR Dataset"
##is in your current working directory.

##set wd to "UCI HAR Dataset" where holds the dataset.
setwd("./UCI HAR Dataset")

##1.Merges the training and the test sets to create one data set.

createDatasetTrain<-function(){
	subject<-read.table(file = "./train/subject_train.txt")
	
	y<-read.table(file = "./train/y_train.txt")
	
	X<-read.table(file = "./train/X_train.txt")
	
	datasetTrain<-data.frame(subject,y,X)
	
	names(datasetTrain)[1]<-"subject"
	
	names(datasetTrain)[2]<-"y"
	
	datasetTrain
}

createDatasetTest<-function(){
	subject<-read.table(file = "./test/subject_test.txt")
	
	y<-read.table(file = "./test/y_test.txt")
	
	X<-read.table(file = "./test/X_test.txt")
	
	datasetTest<-data.frame(subject,y,X)
	
	names(datasetTest)[1]<-"subject"
	
	names(datasetTest)[2]<-"y"
	
	datasetTest
}

dataset<- rbind(createDatasetTest(),createDatasetTrain())

##2.Extracts only the measurements on the mean and standard deviation for each measurement. 

createMeanStdDataset<-function(){
	variables<-as.character(read.table("features.txt",sep = " ")[[2]])

	index<-grep('mean\\(\\)|std\\(\\)',variables)

	variables<-variables[index]
	##in dataSet, first and second coloum are subject id and y, so we need to add 2
	##to the index inorder to extract what we want.
	
	index<-index+2

	meanStdDataset<-dataset[,c(1,2,index)]

	names(meanStdDataset)[c(3:68)]<-variables
	
	meanStdDataset
}

meanStdDataset<-createMeanStdDataset()

##3.Uses descriptive activity names to name the activities in the data set

activities<-as.character(read.table("activity_labels.txt")[[2]])

meanStdDataset[,2]<-as.factor(meanStdDataset[,2])

levels(meanStdDataset[,2])<-activities


##4.Appropriately labels the data set with descriptive variable names.

##the majority of the variables have been appropriately named in step 2
##only the second column "y" is needed to be changed into "activity"

names(meanStdDataset)[2]<-"activity"

##5.From the data set in step 4, creates a second, independent tidy data set
##with the average of each variable for each activity and each subject.

meanStdDataset[,1]<-as.factor(meanStdDataset[,1])

id<-levels(meanStdDataset[,1])

combination<-data.frame(subject=rep(id,each=6),activities=rep(activities,times=30))

##create an empty matrix to catch the result
summeryTable<-matrix(ncol = 66)


##go over every possible combination
for (i in 1:30){
	
	for (j in 1:6){
		index<-which(meanStdDataset[,1]==id[i]&	meanStdDataset[,2]==activities[j])
		
	
		temp<-meanStdDataset[index,c(3:68)]

		
		summeryTable<-rbind(summeryTable,sapply(temp,FUN = mean))
	}
			
}

summeryTable<-summeryTable[-1,]

summeryTable<-cbind(combination,summeryTable)

##create a tidy data set in folder "UCI HAR Dataset"
write.table(summeryTable,"tidy_dataset.txt",row.name=FALSE)

setwd("../")
