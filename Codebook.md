# Codebook for Tidy Data Project
********


##Descrition of the raw data

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:
****

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

<em>Features are normalized and bounded within [-1,1].<em>
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


#Description of the tidy data set

A data frame with 180 observations on the following 68 variables.

*  Subject   ::   Subject 

* Subject - an identifier for the subject who took the experiment reperesented by a id 1:30

*  Activity   ::   Activity 

* Activity - a label that identifies the activity ("WALKING", "WALKING_UPSTAIRS", , "WALKING_DOWNSTAIRS", "SITTING", "STANDING" ,"LAYING" )

*66 - feature vector with mean values for mean or standard devaition values for the respective time and frequency domain variables (numeric)

#The time domain variables with descriptions :


*  timeBodyAccelerationMEANX  
  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
 0.2216  0.2712  0.2770  0.2743  0.2800  0.3015 

*  timeBodyAccelerationMEANY   $
Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
___   _____   _____ _____   _____  ____ ______
-0.040510 -0.020020 -0.017260 -0.017880 -0.014940 -0.001308 
____ ____ ____ ____ ____ ___ ____ ____
*  timeBodyAccelerationMEANZ   ::   Time Domain  Body Acceleration Signal z axis- mean value 

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

*  timeBodyAccelerationMEANX   ::   
  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
 0.2216  0.2712  0.2770  0.2743  0.2800  0.3015 

*  timeBodyAccelerationMEANY   $
 Min.   1st Qu.    Median      Mean   3rd Qu.      Max. 
 ____ _____   ______ ______ ______ ______
-0.040510 -0.020020 -0.017260 -0.017880 -0.014940 -0.001308
________ ______ ______ ______ ______ _______ 
*  timeBodyAccelerationMEANZ   ::   Time Domain  Body Acceleration Signal z axis- mean value 

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

