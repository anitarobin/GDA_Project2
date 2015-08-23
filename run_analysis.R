#set the working directory  
  setwd("c:\\Anita\\Coursera Videos\\Getting and Cleaning Data")
  
#load required packages
  library(dplyr)
  library(data.table)
  
#read the training set
    train_set<-read.table(".\\UCI Har Dataset\\train\\X_train.txt",header=FALSE)
#read the test ser
    test_set<-read.table(".\\UCI Har Dataset\\test\\X_test.txt",header=FALSE)
#read the training set y variables
    train_set_y<-read.table(".\\UCI Har Dataset\\train\\y_train.txt",header=FALSE)
#read the test set y variables
    test_set_y<-read.table(".\\UCI Har Dataset\\test\\y_test.txt",header=FALSE)
#read the test set subjects data
    test_subjects<-read.table(".\\UCI Har Dataset\\test\\subject_test.txt",header=FALSE)
#read the training set subjects data
    train_subjects<-read.table(".\\UCI Har Dataset\\train\\subject_train.txt",header=FALSE)

 #merge all the training data
    train_df<-cbind(train_set,train_set_y,train_subjects)
  
#merge all the test data
    test_df<-cbind(test_set,test_set_y,test_subjects)
  
#merge training and test data sets into a single data frame
   merged_data<-rbind(train_df,test_df)

#read the features data for column names
    features<-read.table (".\\UCI Har Dataset\\features.txt",header=FALSE)
    cnames<-as.character(features[,2])
    colnames(merged_data)<-c(cnames,"Activity","Subject")

#pattern matching for column with mean and std deviation
    to_match<-c("*\\bmean()\\b*","*std()*")
    matches<-grep(paste(to_match,collapse="|"),colnames(merged_data),ignore.case=T)
  
#select only the cols that matched as also activity and subject
    matches<-c(matches,562,563)
    tidy_data<-merged_data[,matches]
  

  #get the labels for activities
  #read the activity labels
    activity_labels<-read.table (".\\UCI Har Dataset\\activity_labels.txt",header=FALSE)
    activity_label<-as.character(activity_labels[,2])
    activity_code<-as.character(activity_labels[,1])
  
#replace the activity code with the appropriate label 
    tidy_data$Activity <- factor(tidy_data$Activity,levels=activity_code,
                              labels=activity_label)
  
#convert subject to factor variable
     tidy_data$Subject <- factor(tidy_data$Subject,levels=unique(tidy_data$Subject),
                              labels=unique(tidy_data$Subject))
  
#Replace column names with more meaningful names  
    names(tidy_data)<-gsub("^t","time",names(tidy_data))
    names(tidy_data)<-gsub("^f","frequency",names(tidy_data)) 
    names(tidy_data)<-gsub("mean()","MEAN",names(tidy_data)) 
    names(tidy_data)<-gsub("std()","STD",names(tidy_data))
    names(tidy_data)<-gsub("Acc","Acceleration",names(tidy_data))
    names(tidy_data)<-gsub("Gyro","AngularSpeed",names(tidy_data))
    names(tidy_data)<-gsub("Mag","Magnitude",names(tidy_data))
    names(tidy_data)<-gsub("BodyBody","Body",names(tidy_data))
    names(tidy_data)<-gsub("\\(|\\)|-","",names(tidy_data))



#calculating mean of variables for each subject for each activity
    means=group_by(tidy_data,Subject,Activity)
    tidy_data %>% group_by(Subject,Activity) %>% summarise_each(funs(mean))
    
    final_data<-tidy_data %.%
    group_by(Subject,Activity) %.%
    summarise_each(funs(mean))
  

  
#write the result to create the Tidy Data Set
    write.table(final_data,"TidyData.txt",row.names = FALSE)
  

##use this to read back the Tidy data into R and view it -commented presently
##data <- read.table("TidyData.txt", header = TRUE) 
##View(data)