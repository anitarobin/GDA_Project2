# Codebook for Tidy Data Project
********


##Descrition of the raw data
**Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.**

UCI HAR data collected from the accelerometers from the Samsung Galaxy S smartphone.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:
****

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

**Features are normalized and bounded within [-1,1].**
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
*****
##Processing to arive at tidy data

First step was to combine the training data set - train,y,subjects.Next was to
combine the test data set - test,y, subjects.Next,data from the previous two steps was merged to have a single table that has all the training and test data along with information on subject and activity.The merged data set contains 10299 observations of 563 variables.

The first step in making the data tidy is selecting only the columns with calculations      for mean and standard deviations. From the features information that is available in        the data set, this meant selecting only columns with mean() and std() in their names.
Also replaced activity codes with corresponding label. 

Next step was to replace column names with more meaning names using pattern matching. Descriptive labels will indicate whether its a time/frequency signal for Acceleration/Angular Speed (Accelerometer/Gyroscope reading). 

The final steps is to calculate the mean of each measurement for each subject for each      activity.  **This is a data set of 180 observations of 68 variables.**

'''##use this to read back the Tidy data into R and view it 
data <- read.table("TidyData.txt", header = TRUE) 
View(data)'''
   
**********   
#Description of the tidy data set

**A data frame with 180 observations on the following 68 variables.**
**The feature set is a subset of the orginal feature set with only measurements of mean and standard deviations for each measurement which are averaged for each activity and each subject.

*  Subject   ::   Subject 

* Subject - an identifier for the subject who took the experiment reperesented by a id 1:30

*  Activity   ::   Activity 

* Activity - a label that identifies the activity ("WALKING", "WALKING_UPSTAIRS", , "WALKING_DOWNSTAIRS", "SITTING", "STANDING" ,"LAYING" )

*66 - feature vector with mean values for mean or standard devaition values for the respective time and frequency domain variables (numeric)

#The time domain variables with descriptions :


*  timeBodyAccelerationMEANX  :: Time Domain  Body Acceleration Signal x axis- mean value
  

*  timeBodyAccelerationMEANY  :: Time Domain  Body Acceleration Signal y axis- mean value

*  timeBodyAccelerationMEANZ  ::   Time Domain  Body Acceleration Signal z axis- mean value 

*  timeBodyAccelerationSTDX   ::   Time Domain  Body Acceleration Signal x axis - standard deviation 

*  timeBodyAccelerationSTDY   ::   Time Domain  Body Acceleration Signal y axis - standard deviation 

*  timeBodyAccelerationSTDZ   ::   Time Domain  Body Acceleration Signal z axis- standard deviation 

*  timeGravityAccelerationMEANX   ::   Time Domain  Gravity Acceleration x axis- mean value 

*  timeGravityAccelerationMEANY   ::   Time Domain  Gravity Acceleration y axis- mean value 

*  timeGravityAccelerationMEANZ   ::   Time Domain  Gravity Acceleration z axis- mean value 

*  timeGravityAccelerationSTDX   ::   Time Domain  Gravity Acceleration x axis - standard deviation 

*  timeGravityAccelerationSTDY   ::   Time Domain  Gravity Acceleration y axis - standard deviation 

*  timeGravityAccelerationSTDZ   ::   Time Domain  Gravity Acceleration z axis- standard deviation 

*  timeBodyAccelerationJerkMEANX   ::   Time Domain Body Acceleration Jerk Signal x axis- mean value 

*  timeBodyAccelerationJerkMEANY   ::   Time Domain Body Acceleration Jerk Signal y axis- mean value 

*  timeBodyAccelerationJerkMEANZ   ::   Time Domain Body Acceleration Jerk Signal z axis- mean value 

*  timeBodyAccelerationJerkSTDX   ::   Time Domain Body Acceleration Jerk Signal x axis - standard deviation 

*  timeBodyAccelerationJerkSTDY   ::   Time Domain Body Acceleration Jerk Signal y axis - standard deviation 

*  timeBodyAccelerationJerkSTDZ   ::   Time Domain Body Acceleration Jerk Signal z axis- standard deviation 

*  timeBodyAngularSpeedMEANX   ::   Time Domain  Body Angular Speed Signal x axis- mean value 

*  timeBodyAngularSpeedMEANY   ::   Time Domain  Body Angular Speed Signal y axis- mean value 

*  timeBodyAngularSpeedMEANZ   ::   Time Domain  Body Angular Speed Signal z axis- mean value 

*  timeBodyAngularSpeedSTDX   ::   Time Domain  Body Angular Speed Signal x axis - standard deviation 

*  timeBodyAngularSpeedSTDY   ::   Time Domain  Body Angular Speed Signal y axis - standard deviation 

*  timeBodyAngularSpeedSTDZ   ::   Time Domain  Body Angular Speed Signal z axis- standard deviation 

*  timeBodyAngularSpeedJerkMEANX   ::   Time Domain  Body Angular Speed SignalJerk x axis- mean value 

*  timeBodyAngularSpeedJerkMEANY   ::   Time Domain  Body Angular Speed SignalJerk y axis- mean value 

*  timeBodyAngularSpeedJerkMEANZ   ::   Time Domain  Body Angular Speed SignalJerk z axis- mean value 

*  timeBodyAngularSpeedJerkSTDX   ::   Time Domain  Body Angular Speed SignalJerk x axis - standard deviation 

*  timeBodyAngularSpeedJerkSTDY   ::   Time Domain  Body Angular Speed SignalJerk y axis - standard deviation 

*  timeBodyAngularSpeedJerkSTDZ   ::   Time Domain  Body Angular Speed SignalJerk z axis- standard deviation 

*  timeBodyAccelerationMagnitudeMEAN   ::   Time Domain Body Acceleration Signal Magnitude- mean value 

*  timeBodyAccelerationMagnitudeSTD   ::   Time Domain Body Acceleration Signal Magnitude- standard deviation 

*  timeGravityAccelerationMagnitudeMEAN   ::   Time Domain Gravity Acceleration Signal Magnitude- mean value 

*  timeGravityAccelerationMagnitudeSTD   ::   Time Domain Gravity Acceleration Signal Magnitude- standard deviation 

*  timeBodyAccelerationJerkMagnitudeMEAN   ::   Time Domain Body Acceleration Jerk SignalMagnitude- mean value 

*  timeBodyAccelerationJerkMagnitudeSTD   ::   Time Domain Body Acceleration Jerk SignalMagnitude- standard deviation 

*  timeBodyAngularSpeedMagnitudeMEAN   ::   Time Domain  Body Angular Speed SignalMagnitude- mean value 

*  timeBodyAngularSpeedMagnitudeSTD   ::   Time Domain  Body Angular Speed SignalMagnitude- standard deviation 

*  timeBodyAngularSpeedJerkMagnitudeMEAN   ::   Time Domain  Body Angular Speed Signal Jerk Signal Magnitude - mean value 

*  timeBodyAngularSpeedJerkMagnitudeSTD   ::   Time Domain  Body Angular Speed Signal Jerk Signal Magnitude - standard deviation 


****
##The frequency domain variables with descriptions :

*  frequencyBodyAccelerationMEANX   ::   Frequency Domain  Body Acceleration Signal x axis- mean value 

*  frequencyBodyAccelerationMEANY   ::   Frequency Domain  Body Acceleration Signal y axis- mean value 

*  frequencyBodyAccelerationMEANZ   ::   Frequency Domain  Body Acceleration Signal z axis- mean value 

*  frequencyBodyAccelerationSTDX   ::   Frequency Domain  Body Acceleration Signal x axis - standard deviation 

*  frequencyBodyAccelerationSTDY   ::   Frequency Domain  Body Acceleration Signal y axis - standard deviation 

*  frequencyBodyAccelerationSTDZ   ::   Frequency Domain  Body Acceleration Signal z axis- standard deviation 

*  frequencyBodyAccelerationJerkMEANX   ::   Frequency Domain Body Acceleration Jerk Signal x axis- mean value 

*  frequencyBodyAccelerationJerkMEANY   ::   Frequency Domain Body Acceleration Jerk Signal y axis- mean value 

*  frequencyBodyAccelerationJerkMEANZ   ::   Frequency Domain Body Acceleration Jerk Signal z axis- mean value 

*  frequencyBodyAccelerationJerkSTDX   ::   Frequency Domain Body Acceleration Jerk Signal x axis - standard deviation 

*  frequencyBodyAccelerationJerkSTDY   ::   Frequency Domain Body Acceleration Jerk Signal y axis - standard deviation 

*  frequencyBodyAccelerationJerkSTDZ   ::   Frequency Domain Body Acceleration Jerk Signal z axis- standard deviation 

*  frequencyBodyAngularSpeedMEANX   ::   Frequency Domain  Body Angular Speed Signal x axis- mean value 

*  frequencyBodyAngularSpeedMEANY   ::   Frequency Domain  Body Angular Speed Signal y axis- mean value 

*  frequencyBodyAngularSpeedMEANZ   ::   Frequency Domain  Body Angular Speed Signal z axis- mean value 

*  frequencyBodyAngularSpeedSTDX   ::   Frequency Domain  Body Angular Speed Signal x axis - standard deviation 

*  frequencyBodyAngularSpeedSTDY   ::   Frequency Domain  Body Angular Speed Signal y axis - standard deviation 

*  frequencyBodyAngularSpeedSTDZ   ::   Frequency Domain  Body Angular Speed Signal z axis- standard deviation 

*  frequencyBodyAccelerationMagnitudeMEAN   ::   Frequency Domain Body Acceleration Signal Magnitude- mean value 

*  frequencyBodyAccelerationMagnitudeSTD   ::   Frequency Domain Body Acceleration Signal Magnitude- standard deviation 

*  frequencyBodyAccelerationJerkMagnitudeMEAN   ::   Frequency Domain Body Acceleration Jerk SignalMagnitude- mean value 

*  frequencyBodyAccelerationJerkMagnitudeSTD   ::   Frequency Domain Body Acceleration Jerk SignalMagnitude- standard deviation 

*  frequencyBodyAngularSpeedMagnitudeMEAN   ::   Frequency Domain  Body Angular Speed SignalMagnitude- mean value 

*  frequencyBodyAngularSpeedMagnitudeSTD   ::   Frequency Domain  Body Angular Speed SignalMagnitude- standard deviation 

*  frequencyBodyAngularSpeedJerkMagnitudeMEAN   ::   Frequency Domain  Body Angular Speed Signal Jerk Signal Magnitude - mean value 

*  frequencyBodyAngularSpeedJerkMagnitudeSTD   ::   Frequency Domain  Body Angular Speed Signal Jerk Signal Magnitude - standard deviation 

******
# Summary of feature vector variables

*  timeBodyAccelerationMEANX   $   
  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
 ____ _____   ______ ______ ______ ______ 
 0.2216  0.2712  0.2770  0.2743  0.2800  0.3015 
 ____ _____   ______ ______ ______ ______

*  timeBodyAccelerationMEANY   $
    Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
 ____ _____   ______ ______ ______ ______
-0.040510 -0.020020 -0.017260 -0.017880 -0.014940 -0.001308
________ ______ ______ ______ ______ _______ 

*  timeBodyAccelerationMEANZ   $
     Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
________ ______ ______ ______ ______ _______ 
-0.15250 -0.11210 -0.10820 -0.10920 -0.10440 -0.07538 
________ ______ ______ ______ ______ _______

*  timeBodyAccelerationSTDX   $
    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
 ________ ______ ______ ______ ______ _______ 
-0.9961 -0.9799 -0.7526 -0.5577 -0.1984  0.6269 
________ ______ ______ ______ ______ _______ 

*  timeBodyAccelerationSTDY   $   
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
     ____ _____   ______ ______ ______ ______
-0.99020 -0.94210 -0.50900 -0.46050 -0.03077  0.61690 
 ____ _____   ______ ______ ______ ______


*  timeBodyAccelerationSTDZ   $   
    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   ____ _____   ______ ______ ______ ______
-0.9877 -0.9498 -0.6518 -0.5756 -0.2306  0.6090 
____ _____   ______ ______ ______ ______

*  timeGravityAccelerationMEANX   $   
     Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
     ____ _____   ______ ______ ______ ______

-0.6800  0.8376  0.9208  0.6975  0.9425  0.9745 
____ _____   ______ ______ ______ ______


*  timeGravityAccelerationMEANY   $   
     Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
     ____ _____   ______ ______ ______ ______

-0.47990 -0.23320 -0.12780 -0.01621  0.08773  0.95660 
____ _____   ______ ______ ______ ______


*  timeGravityAccelerationMEANZ   $   
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
    ____ _____   ______ ______ ______ ______

-0.49510 -0.11730  0.02384  0.07413  0.14950  0.95790 
____ _____   ______ ______ ______ ______


*  timeGravityAccelerationSTDX   $   
    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ____ _____   ______ ______ ______ ______

-0.9968 -0.9825 -0.9695 -0.9638 -0.9509 -0.8296 
____ _____   ______ ______ ______ ______


*  timeGravityAccelerationSTDY   $   
    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ____ _____   ______ ______ ______ ______

-0.9942 -0.9711 -0.9590 -0.9524 -0.9370 -0.6436 
____ _____   ______ ______ ______ ______


*  timeGravityAccelerationSTDZ   $   
    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ____ _____   ______ ______ ______ ______

-0.9910 -0.9605 -0.9450 -0.9364 -0.9180 -0.6102 
____ _____   ______ ______ ______ ______



*  timeBodyAccelerationJerkMEANX   $   
  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  ____ _____   ______ ______ ______ ______

0.04269 0.07396 0.07640 0.07947 0.08330 0.13020 
____ _____   ______ ______ ______ ______


*  timeBodyAccelerationJerkMEANY   $   
 Min.    1st Qu.     Median       Mean    3rd Qu.       Max. 
 ____ _____   ______ ______ ______ ______

-0.0386900  0.0004664  0.0094700  0.0075650  0.0134000  0.0568200 
____ _____   ______ ______ ______ ______


*  timeBodyAccelerationJerkMEANZ   $   
     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
     ____ _____   ______ ______ ______ ______

-0.067460 -0.010600 -0.003861 -0.004953  0.001958  0.038050 
____ _____   ______ ______ ______ ______


*  timeBodyAccelerationJerkSTDX   $   
    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ____ _____   ______ ______ ______ ______

-0.9946 -0.9832 -0.8104 -0.5949 -0.2233  0.5443 
____ _____   ______ ______ ______ ______


*  timeBodyAccelerationJerkSTDY   $   
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   ____ _____   ______ ______ ______ ______

-0.9895 -0.9724 -0.7756 -0.5654 -0.1483  0.3553 
____ _____   ______ ______ ______ ______


*  timeBodyAccelerationJerkSTDZ   $  
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
    ____ _____   ______ ______ ______ ______

-0.99330 -0.98270 -0.88370 -0.73600 -0.51210  0.03102 
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedMEANX   $   
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
    ____ _____   ______ ______ ______ ______

-0.20580 -0.04712 -0.02871 -0.03244 -0.01676  0.19270 
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedMEANY   $   
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
    ____ _____   ______ ______ ______ ______

-0.20420 -0.08955 -0.07318 -0.07426 -0.06113  0.02747 
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedMEANZ   $   
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
    ____ _____   ______ ______ ______ ______

-0.07245  0.07475  0.08512  0.08744  0.10180  0.17910 
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedSTDX   $   
 Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
 ____ _____   ______ ______ ______ ______

-0.9943 -0.9735 -0.7890 -0.6916 -0.4414  0.2677 
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedSTDY   $
    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ____ _____   ______ ______ ______ ______

-0.9942 -0.9629 -0.8017 -0.6533 -0.4196  0.4765 
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedSTDZ   $   
 Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
 ____ _____   ______ ______ ______ ______

-0.9855 -0.9609 -0.8010 -0.6164 -0.3106  0.5649 
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedJerkMEANX   $   
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
    ____ _____   ______ ______ ______ ______

-0.15720 -0.10320 -0.09868 -0.09606 -0.09110 -0.02209 
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedJerkMEANY   $   
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
    ____ _____   ______ ______ ______ ______

-0.07681 -0.04552 -0.04112 -0.04269 -0.03842 -0.01320
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedJerkMEANZ   $   
    Min.   1st Qu.    Median      Mean   3rd Qu.      Max.
    ____ _____   ______ ______ ______ ______

-0.092500 -0.061720 -0.053430 -0.054800 -0.048980 -0.006941 
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedJerkSTDX   $   
    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ____ _____   ______ ______ ______ ______

-0.9965 -0.9800 -0.8396 -0.7036 -0.4629  0.1791 
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedJerkSTDY   $   
 Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
 ____ _____   ______ ______ ______ ______

-0.9971 -0.9832 -0.8942 -0.7636 -0.5861  0.2959 
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedJerkSTDZ   $   
    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ____ _____   ______ ______ ______ ______

-0.9954 -0.9848 -0.8610 -0.7096 -0.4741  0.1932 
____ _____   ______ ______ ______ ______


*  timeBodyAccelerationMagnitudeMEAN   $   
    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ____ _____   ______ ______ ______ ______

-0.9865 -0.9573 -0.4829 -0.4973 -0.0919  0.6446 
____ _____   ______ ______ ______ ______


*  timeBodyAccelerationMagnitudeSTD   $   
 Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
 ____ _____   ______ ______ ______ ______

-0.9865 -0.9430 -0.6074 -0.5439 -0.2090  0.4284 
____ _____   ______ ______ ______ ______


*  timeGravityAccelerationMagnitudeMEAN   $   
 Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
 ____ _____   ______ ______ ______ ______

-0.9865 -0.9573 -0.4829 -0.4973 -0.0919  0.6446
____ _____   ______ ______ ______ ______


*  timeGravityAccelerationMagnitudeSTD   $   
    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ____ _____   ______ ______ ______ ______

-0.9865 -0.9430 -0.6074 -0.5439 -0.2090  0.4284 
____ _____   ______ ______ ______ ______


*  timeBodyAccelerationJerkMagnitudeMEAN   $   
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   ____ _____   ______ ______ ______ ______

-0.9928 -0.9807 -0.8168 -0.6079 -0.2456  0.4345 
____ _____   ______ ______ ______ ______


*  timeBodyAccelerationJerkMagnitudeSTD   $   
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   ____ _____   ______ ______ ______ ______

-0.9946 -0.9765 -0.8014 -0.5842 -0.2173  0.4506 
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedMagnitudeMEAN   $   
    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ____ _____   ______ ______ ______ ______

-0.9807 -0.9461 -0.6551 -0.5652 -0.2159  0.4180 
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedMagnitudeSTD   $   
    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ____ _____   ______ ______ ______ ______

-0.9814 -0.9476 -0.7420 -0.6304 -0.3602  0.3000 
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedJerkMagnitudeMEAN   $   
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
    ____ _____   ______ ______ ______ ______

-0.99730 -0.98520 -0.86480 -0.73640 -0.51190  0.08758 
____ _____   ______ ______ ______ ______


*  timeBodyAngularSpeedJerkMagnitudeSTD   $   
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   ____ _____   ______ ______ ______ ______

-0.9977 -0.9805 -0.8809 -0.7550 -0.5767  0.2502 
____ _____   ______ ______ ______ ______

******
*  frequencyBodyAccelerationMEANX   $ 

    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
    ____ _____   ______ ______ ______ ______
-0.9952 -0.9787 -0.7691 -0.5758 -0.2174  0.5370 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationMEANX   $

    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
    ____ _____   ______ ______ ______ ______
-0.98900 -0.95360 -0.59500 -0.48870 -0.06341  0.52420 
____ _____   ______ ______ ______ ______


*  frequencyBodyAccelerationMEANY   $

  Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
  ____ _____   ______ ______ ______ ______
-0.98900 -0.95360 -0.59500 -0.48870 -0.06341  0.52420
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationMEANZ  $

    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ____ _____   ______ ______ ______ ______
-0.9895 -0.9619 -0.7236 -0.6297 -0.3183  0.2807
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationSTDX   $

    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ____ _____   ______ ______ ______ ______
-0.9966 -0.9820 -0.7470 -0.5522 -0.1966  0.6585 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationSTDY   $

    Min.  1st Qu.   Median     Mean  3rd Qu.     Max.
    ____ _____   ______ ______ ______ ______
-0.99070 -0.94040 -0.51340 -0.48150 -0.07913  0.56020
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationSTDZ   $

    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ____ _____   ______ ______ ______ ______
-0.9872 -0.9459 -0.6441 -0.5824 -0.2655  0.6871 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationJerkMEANX   $

    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ____ _____   ______ ______ ______ ______
-0.9952 -0.9787 -0.7691 -0.5758 -0.2174  0.5370 
____ _____   ______ ______ ______ ______
   
*  frequencyBodyAccelerationJerkMEANY   $

     Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
     ____ _____   ______ ______ ______ ______
-0.98900 -0.95360 -0.59500 -0.48870 -0.06341  0.52420 
____ _____   ______ ______ ______ ______
   

*  frequencyBodyAccelerationJerkMEANZ   $

   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   ____ _____   ______ ______ ______ ______
-0.9895 -0.9619 -0.7236 -0.6297 -0.3183  0.2807 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationJerkSTDX   $

    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9951 -0.9847 -0.8254 -0.6121 -0.2475  0.4768 
____ _____   ______ ______ ______ ______


*  frequencyBodyAccelerationJerkSTDY   $

    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  ____ _____   ______ ______ ______ ______
-0.9905 -0.9737 -0.7852 -0.5707 -0.1685  0.3498 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationJerkSTDZ   $

     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
  ____ _____   ______ ______ ______ ______
-0.993100 -0.983700 -0.895100 -0.756500 -0.543800 -0.006236 
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedMEANX   $

    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9931 -0.9697 -0.7300 -0.6367 -0.3387  0.4750 
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedMEANY   $

    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9940 -0.9700 -0.8141 -0.6767 -0.4458  0.3288 
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedMEANZ   $

    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
____ _____   ______ ______ ______ ______
-0.9860 -0.9624 -0.7909 -0.6044 -0.2635  0.4924 
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedSTDX   $

    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9947 -0.9750 -0.8086 -0.7110 -0.4813  0.1966 
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedSTDY   $

    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9944 -0.9602 -0.7964 -0.6454 -0.4154  0.6462 
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedSTDZ   $

   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9867 -0.9643 -0.8224 -0.6577 -0.3916  0.5225 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationMagnitudeMEAN   $

    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9868 -0.9560 -0.6703 -0.5365 -0.1622  0.5866 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationMagnitudeSTD   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9876 -0.9452 -0.6513 -0.6210 -0.3654  0.1787 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationJerkMagnitudeMEAN   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9940 -0.9770 -0.7940 -0.5756 -0.1872  0.5384 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationJerkMagnitudeSTD   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9944 -0.9752 -0.8126 -0.5992 -0.2668  0.3163 
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedMagnitudeMEAN   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9865 -0.9616 -0.7657 -0.6671 -0.4087  0.2040 
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedMagnitudeSTD   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9815 -0.9488 -0.7727 -0.6723 -0.4277  0.2367 
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedJerkMagnitudeMEAN   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9976 -0.9813 -0.8779 -0.7564 -0.5831  0.1466 
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedJerkMagnitudeSTD   $ 

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
____ _____   ______ ______ ______ ______
-0.9976 -0.9802 -0.8941 -0.7715 -0.6081  0.2878 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationMEANX  $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9952 -0.9787 -0.7691 -0.5758 -0.2174  0.5370
____ _____   ______ ______ ______ ______


*  frequencyBodyAccelerationMEANY   $

 Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
____ _____   ______ ______ ______ ______
-0.98900 -0.95360 -0.59500 -0.48870 -0.06341  0.52420
____ _____   ______ ______ ______ ______


*  frequencyBodyAccelerationMEANZ   $   

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9895 -0.9619 -0.7236 -0.6297 -0.3183  0.2807 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationSTDX   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9966 -0.9820 -0.7470 -0.5522 -0.1966  0.6585
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationSTDY   $

  Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
____ _____   ______ ______ ______ ______
-0.99070 -0.94040 -0.51340 -0.48150 -0.07913  0.56020 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationSTDZ   $
_
  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
___ _____   ______ ______ ______ ______
-0.9872 -0.9459 -0.6441 -0.5824 -0.2655  0.6871 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationJerkMEANX   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9946 -0.9828 -0.8126 -0.6139 -0.2820  0.4743 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationJerkMEANY   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______

-0.9894 -0.9725 -0.7817 -0.5882 -0.1963  0.2767 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationJerkMEANZ   $

   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  ____ _____   ______ ______ ______ ______
-0.9920 -0.9796 -0.8707 -0.7144 -0.4697  0.1578 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationJerkSTDX   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9951 -0.9847 -0.8254 -0.6121 -0.2475  0.4768 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationJerkSTDY   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  ____ _____   ______ ______ ______ ______
-0.9905 -0.9737 -0.7852 -0.5707 -0.1685  0.3498
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationJerkSTDZ   $

   Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
  ____ _____   ______ ______ ______ ______
-0.993100 -0.983700 -0.895100 -0.756500 -0.543800 -0.006236
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedMEANX   $

   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  ____ _____   ______ ______ ______ ______
-0.9931 -0.9697 -0.7300 -0.6367 -0.3387  0.4750 
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedMEANY   $

   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  ____ _____   ______ ______ ______ ______
-0.9940 -0.9700 -0.8141 -0.6767 -0.4458  0.3288 
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedMEANZ   $

   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9860 -0.9624 -0.7909 -0.6044 -0.2635  0.4924 
____ _____   ______ ______ ______ ______


*  frequencyBodyAngularSpeedSTDX   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9947 -0.9750 -0.8086 -0.7110 -0.4813  0.1966 
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedSTDY   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9944 -0.9602 -0.7964 -0.6454 -0.4154  0.6462
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedSTDZ   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9867 -0.9643 -0.8224 -0.6577 -0.3916  0.5225 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationMagnitudeMEAN   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
____ _____   ______ ______ ______ ______
-0.9868 -0.9560 -0.6703 -0.5365 -0.1622  0.5866
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationMagnitudeSTD   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9876 -0.9452 -0.6513 -0.6210 -0.3654  0.1787 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationJerkMagnitudeMEAN   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
____ _____   ______ ______ ______ ______
-0.9940 -0.9770 -0.7940 -0.5756 -0.1872  0.5384 
____ _____   ______ ______ ______ ______

*  frequencyBodyAccelerationJerkMagnitudeSTD   $

   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  ____ _____   ______ ______ ______ ______
-0.9944 -0.9752 -0.8126 -0.5992 -0.2668  0.3163 
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedMagnitudeMEAN   $

  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
____ _____   ______ ______ ______ ______
-0.9865 -0.9616 -0.7657 -0.6671 -0.4087  0.2040
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedMagnitudeSTD   $
____ _____   ______ ______ ______ ______
  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9865 -0.9616 -0.7657 -0.6671 -0.4087  0.2040
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedJerkMagnitudeMEAN   $
____ _____   ______ ______ ______ ______
  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9976 -0.9813 -0.8779 -0.7564 -0.5831  0.1466 
____ _____   ______ ______ ______ ______

*  frequencyBodyAngularSpeedJerkMagnitudeSTD   $
____ _____   ______ ______ ______ ______
  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-0.9976 -0.9802 -0.8941 -0.7715 -0.6081  0.2878 
____ _____   ______ ______ ______ ______

