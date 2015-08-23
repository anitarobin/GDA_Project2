#set the working directory  
setwd("c:\\Anita\\Coursera Videos\\Getting and Cleaning Data")

##use this to read back the Tidy data into R 
data <- read.table("TidyData.txt", header = TRUE) 

##read the column names
column_name<-names(data)
#create a vector to store descriptions
column_desc<-column_name

#define a function for the pattern matching and replacing with descritions
text_replace<-function(x){
  
  x<-gsub("time","Time Domain ",x)
  x<-gsub("frequency","Frequency Domain ",x)
  x<-gsub("AccelerationJerk"," Acceleration Jerk Signal",x)
  x<-gsub("AccelerationMagnitude"," Acceleration Signal Magnitude",x)
  x<-gsub("BodyAcceleration"," Body Acceleration Signal",x)
  x<-gsub("BodyAngularSpeed"," Body Angular Speed Signal",x)
  x<-gsub("SpeedMagnitude"," Speed Signal Magnitude ",x)
  x<-gsub("JerkMagnitude"," Jerk Signal Magnitude ",x)
  x<-gsub("SpeedJerk"," Speed Jerk Signal",x)
  x<-gsub("GravityAcceleration"," Gravity Acceleration",x)
  x<-gsub("MEANX"," x axis- mean value",x)
  x<-gsub("MEANY"," y axis- mean value",x)
  x<-gsub("MEANZ"," z axis- mean value",x)
  x<-gsub("MEAN","- mean value",x)
  
  x<-gsub("STDX"," x axis - standard deviation",x)
  x<-gsub("STDY"," y axis - standard deviation",x)
  x<-gsub("STDZ"," z axis- standard deviation",x)
  x<-gsub("STD","- standard deviation",x)
}
#call the function
column_desc<-sapply(column_desc,text_replace)

#combine name with description
codebook <- paste("* ",column_name,"  ::  ",column_desc,"\n")

#write to file
write.table(codebook,"codebook_basis.md", 
            quote = FALSE, row.names = FALSE, col.names = FALSE)

