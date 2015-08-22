# Codebook for Tidy Data Project
**********
##Descrition of the raw data
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
#Description of the tidy data set
A data frame with 180 observations on the following 68 variables.
  
    Subject|a factor with levels indicating the subject who was tested
    Activity|a factor with levels        WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING
    timeBodyAccelerometerMEANX|a numeric vector
    timeBodyAccelerometerMEANY|a numeric vector
    timeBodyAccelerometerMEANZ|a numeric vector
    timeBodyAccelerometerSTDX}|a numeric vector
    timeBodyAccelerometerSTDY|a numeric vector
    timeBodyAccelerometerSTDZ|a numeric vector
    timeGravityAccelerometerMEANX|a numeric vector
    timeGravityAccelerometerMEANY|a numeric vector
    timeGravityAccelerometerMEANZ|a numeric vector
    timeGravityAccelerometerSTDX|a numeric vector
    timeGravityAccelerometerSTDY|a numeric vector
    timeGravityAccelerometerSTDZ|a numeric vector
    timeBodyAccelerometerJerkMEANX|a numeric vector
    timeBodyAccelerometerJerkMEANY|a numeric vector
    timeBodyAccelerometerJerkMEANZ|a numeric vector
    code{timeBodyAccelerometerJerkSTDX|a numeric vector
    timeBodyAccelerometerJerkSTDY|a numeric vector
    timeBodyAccelerometerJerkSTDZ|a numeric vector
    timeBodyGyroscopeMEANX|a numeric vector
    timeBodyGyroscopeMEANY|a numeric vector
    timeBodyGyroscopeMEANZ|a numeric vector
    timeBodyGyroscopeSTDX|a numeric vector
    timeBodyGyroscopeSTDY|a numeric vector
    timeBodyGyroscopeSTDZ|a numeric vector
    timeBodyGyroscopeJerkMEANX|a numeric vector
    timeBodyGyroscopeJerkMEANY|a numeric vector
    timeBodyGyroscopeJerkMEANZ|a numeric vector
    timeBodyGyroscopeJerkSTDX|a numeric vector
    timeBodyGyroscopeJerkSTDY|a numeric vector
    timeBodyGyroscopeJerkSTDZ|a numeric vector
    timeBodyAccelerometerMagnitudeMEAN|a numeric vector
    timeBodyAccelerometerMagnitudeSTD|a numeric vector
    timeGravityAccelerometerMagnitudeMEAN|a numeric vector
    timeGravityAccelerometerMagnitudeSTD|a numeric vector
    timeBodyAccelerometerJerkMagnitudeMEAN|a numeric vector
    timeBodyAccelerometerJerkMagnitudeSTD|a numeric vector
    timeBodyGyroscopeMagnitudeMEAN|a numeric vector
    timeBodyGyroscopeMagnitudeSTD|a numeric vector
    timeBodyGyroscopeJerkMagnitudeMEAN|a numeric vector
    timeBodyGyroscopeJerkMagnitudeSTD|a numeric vector
    frequencyBodyAccelerometerMEANX|a numeric vector
    frequencyBodyAccelerometerMEANY|a numeric vector
    frequencyBodyAccelerometerMEANZ|a numeric vector
    frequencyBodyAccelerometerSTDX|a numeric vector
    frequencyBodyAccelerometerSTDY|a numeric vector
    frequencyBodyAccelerometerSTDZ|a numeric vector
    frequencyBodyAccelerometerJerkMEANX|a numeric vector
    frequencyBodyAccelerometerJerkMEANY|a numeric vector
    frequencyBodyAccelerometerJerkMEANZ|a numeric vector
    frequencyBodyAccelerometerJerkSTDX|a numeric vector
    frequencyBodyAccelerometerJerkSTDY|a numeric vector
    frequencyBodyAccelerometerJerkSTDZ}a numeric vector
    frequencyBodyGyroscopeMEANX|a numeric vector
    frequencyBodyGyroscopeMEANY|a numeric vector
    frequencyBodyGyroscopeMEANZ|a numeric vector
    frequencyBodyGyroscopeSTDX|a numeric vector
    frequencyBodyGyroscopeSTDY|a numeric vector
    frequencyBodyGyroscopeSTDZ|a numeric vector
    frequencyBodyAccelerometerMagnitudeMEAN|a numeric vector
    frequencyBodyAccelerometerMagnitudeSTD|a numeric vector
    frequencyBodyAccelerometerJerkMagnitudeMEAN|a numeric vector
    frequencyBodyAccelerometerJerkMagnitudeSTD|a numeric vector
    frequencyBodyGyroscopeMagnitudeMEAN|a numeric vector
    frequencyBodyGyroscopeMagnitudeSTD|a numeric vector
    frequencyBodyGyroscopeJerkMagnitudeMEAN|a numeric vector
    frequencyBodyGyroscopeJerkMagnitudeSTD|a numeric vector
  }

*  Subject                            ::   Subject 

*  Activity                           ::   Activity 

*  timeBodyAccelerometerMEANX         ::   Time Signal forBodyAccelerometer- mean valueX 

*  timeBodyAccelerometerMEANY         ::   Time Signal forBodyAccelerometer- mean valueY 

*  timeBodyAccelerometerMEANZ         ::   Time Signal forBodyAccelerometer- mean valueZ 

*  timeBodyAccelerometerSTDX          ::   Time Signal forBodyAccelerometer- standard deviationX 

*  timeBodyAccelerometerSTDY          ::   Time Signal forBodyAccelerometer- standard deviationY 

*  timeBodyAccelerometerSTDZ          ::   Time Signal forBodyAccelerometer- standard deviationZ 

*  timeGravityAccelerometerMEANX      ::   Time Signal forGravityAccelerometer- mean valueX 

*  timeGravityAccelerometerMEANY      ::   Time Signal forGravityAccelerometer- mean valueY 

*  timeGravityAccelerometerMEANZ      ::   Time Signal forGravityAccelerometer- mean valueZ 

*  timeGravityAccelerometerSTDX       ::   Time Signal forGravityAccelerometer- standard deviationX 

*  timeGravityAccelerometerSTDY       ::   Time Signal forGravityAccelerometer- standard deviationY 

*  timeGravityAccelerometerSTDZ       ::   Time Signal forGravityAccelerometer- standard deviationZ 

*  timeBodyAccelerometerJerkMEANX     ::   Time Signal forBodyAccelerometerJerk- mean valueX 

*  timeBodyAccelerometerJerkMEANY     ::   Time Signal forBodyAccelerometerJerk- mean valueY 
*  timeBodyAccelerometerJerkMEANZ   ::   Time Signal forBodyAccelerometerJerk- mean valueZ 

*  timeBodyAccelerometerJerkSTDX   ::   Time Signal forBodyAccelerometerJerk- standard deviationX 

*  timeBodyAccelerometerJerkSTDY   ::   Time Signal forBodyAccelerometerJerk- standard deviationY 

*  timeBodyAccelerometerJerkSTDZ   ::   Time Signal forBodyAccelerometerJerk- standard deviationZ 

*  timeBodyGyroscopeMEANX   ::   Time Signal forBodyGyroscope- mean valueX 

*  timeBodyGyroscopeMEANY   ::   Time Signal forBodyGyroscope- mean valueY 

*  timeBodyGyroscopeMEANZ   ::   Time Signal forBodyGyroscope- mean valueZ 

*  timeBodyGyroscopeSTDX   ::   Time Signal forBodyGyroscope- standard deviationX 

*  timeBodyGyroscopeSTDY   ::   Time Signal forBodyGyroscope- standard deviationY 

*  timeBodyGyroscopeSTDZ   ::   Time Signal forBodyGyroscope- standard deviationZ 

*  timeBodyGyroscopeJerkMEANX   ::   Time Signal forBodyGyroscopeJerk- mean valueX 

*  timeBodyGyroscopeJerkMEANY   ::   Time Signal forBodyGyroscopeJerk- mean valueY 

*  timeBodyGyroscopeJerkMEANZ   ::   Time Signal forBodyGyroscopeJerk- mean valueZ 

*  timeBodyGyroscopeJerkSTDX   ::   Time Signal forBodyGyroscopeJerk- standard deviationX 

*  timeBodyGyroscopeJerkSTDY   ::   Time Signal forBodyGyroscopeJerk- standard deviationY 

*  timeBodyGyroscopeJerkSTDZ   ::   Time Signal forBodyGyroscopeJerk- standard deviationZ 

*  timeBodyAccelerometerMagnitudeMEAN   ::   Time Signal forBodyAccelerometerMagnitude- mean value 

*  timeBodyAccelerometerMagnitudeSTD   ::   Time Signal forBodyAccelerometerMagnitude- standard deviation 

*  timeGravityAccelerometerMagnitudeMEAN   ::   Time Signal forGravityAccelerometerMagnitude- mean value 

*  timeGravityAccelerometerMagnitudeSTD   ::   Time Signal forGravityAccelerometerMagnitude- standard deviation 

*  timeBodyAccelerometerJerkMagnitudeMEAN   ::   Time Signal forBodyAccelerometerJerkMagnitude- mean value 

*  timeBodyAccelerometerJerkMagnitudeSTD   ::   Time Signal forBodyAccelerometerJerkMagnitude- standard deviation 

*  timeBodyGyroscopeMagnitudeMEAN   ::   Time Signal forBodyGyroscopeMagnitude- mean value 

*  timeBodyGyroscopeMagnitudeSTD   ::   Time Signal forBodyGyroscopeMagnitude- standard deviation 

*  timeBodyGyroscopeJerkMagnitudeMEAN   ::   Time Signal forBodyGyroscopeJerkMagnitude- mean value 

*  timeBodyGyroscopeJerkMagnitudeSTD   ::   Time Signal forBodyGyroscopeJerkMagnitude- standard deviation 

*  frequencyBodyAccelerometerMEANX   ::   Frequency signal forBodyAccelerometer- mean valueX 

*  frequencyBodyAccelerometerMEANY   ::   Frequency signal forBodyAccelerometer- mean valueY 

*  frequencyBodyAccelerometerMEANZ   ::   Frequency signal forBodyAccelerometer- mean valueZ 

*  frequencyBodyAccelerometerSTDX   ::   Frequency signal forBodyAccelerometer- standard deviationX 

*  frequencyBodyAccelerometerSTDY   ::   Frequency signal forBodyAccelerometer- standard deviationY 

*  frequencyBodyAccelerometerSTDZ   ::   Frequency signal forBodyAccelerometer- standard deviationZ 

*  frequencyBodyAccelerometerJerkMEANX   ::   Frequency signal forBodyAccelerometerJerk- mean valueX 

*  frequencyBodyAccelerometerJerkMEANY   ::   Frequency signal forBodyAccelerometerJerk- mean valueY 

*  frequencyBodyAccelerometerJerkMEANZ   ::   Frequency signal forBodyAccelerometerJerk- mean valueZ 

*  frequencyBodyAccelerometerJerkSTDX   ::   Frequency signal forBodyAccelerometerJerk- standard deviationX 

*  frequencyBodyAccelerometerJerkSTDY   ::   Frequency signal forBodyAccelerometerJerk- standard deviationY 

*  frequencyBodyAccelerometerJerkSTDZ   ::   Frequency signal forBodyAccelerometerJerk- standard deviationZ 

*  frequencyBodyGyroscopeMEANX           ::   Frequency signal forBodyGyroscope- mean valueX 

*  frequencyBodyGyroscopeMEANY           ::   Frequency signal forBodyGyroscope- mean valueY 

*  frequencyBodyGyroscopeMEANZ           ::   Frequency signal forBodyGyroscope- mean valueZ 

*  frequencyBodyGyroscopeSTDX             ::   Frequency signal forBodyGyroscope- standard deviationX 

*  frequencyBodyGyroscopeSTDY              ::   Frequency signal forBodyGyroscope- standard deviationY 

*  frequencyBodyGyroscopeSTDZ               ::   Frequency signal forBodyGyroscope- standard deviationZ 

*  frequencyBodyAccelerometerMagnitudeMEAN  ::   Frequency signal forBodyAccelerometerMagnitude- mean value 

*  frequencyBodyAccelerometerMagnitudeSTD   ::   Frequency signal forBodyAccelerometerMagnitude- standard deviation 

*  frequencyBodyAccelerometerJerkMagnitudeMEAN ::   Frequency signal forBodyAccelerometerJerkMagnitude- mean value 

*  frequencyBodyAccelerometerJerkMagnitudeSTD   ::   Frequency signal forBodyAccelerometerJerkMagnitude- standard deviation 

*  frequencyBodyGyroscopeMagnitudeMEAN          ::   Frequency signal forBodyGyroscopeMagnitude- mean value 

*  frequencyBodyGyroscopeMagnitudeSTD           ::   Frequency signal forBodyGyroscopeMagnitude- standard deviation 

*  frequencyBodyGyroscopeJerkMagnitudeMEAN      ::   Frequency signal forBodyGyroscopeJerkMagnitude- mean value 

*  frequencyBodyGyroscopeJerkMagnitudeSTD       ::   Frequency signal forBodyGyroscopeJerkMagnitude- standard deviation 


