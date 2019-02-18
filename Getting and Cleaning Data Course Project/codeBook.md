# Abstract

Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Attribute Information
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

|var_1|var_2|var_3|var_4|
|---|---|---|---|
|"user.code"|"activity"|"Body.Acceleration-mean-X"|"Body.Acceleration-mean-Y"|
|"Body.Acceleration-mean-Z"|"Body.Acceleration-std-X"|"Body.Acceleration-std-Y"|"Body.Acceleration-std-Z"|
|"Body.AccelerationJerk-mean-X"|"Body.AccelerationJerk-mean-Y"|"Body.AccelerationJerk-mean-Z"|"Body.AccelerationJerk-std-X"|
|"Body.AccelerationJerk-std-Y"|"Body.AccelerationJerk-std-Z"|"Body.AccelerationMag-mean"|"Body.AccelerationMag-std"|
|"fBodyBodyAccJerkMag-mean"|"fBodyBodyAccJerkMag-std"|"fBodyBodyGyroJerkMag-mean"|"fBodyBodyGyroJerkMag-std"|
|"fBodyBodyGyroMag-mean"|"fBodyBodyGyroMag-std"|"Body.Gyroscope-mean-X"|"Body.Gyroscope-mean-Y"|
|"Body.Gyroscope-mean-Z"|"Body.Gyroscope-std-X"|"Body.Gyroscope-std-Y"|"Body.Gyroscope-std-Z"|
|"Body.Acceleration-mean-X"|"Body.Acceleration-mean-Y"|"Body.Acceleration-mean-Z"|"Body.Acceleration-std-X"|
|"Body.Acceleration-std-Y"|"Body.Acceleration-std-Z"|"Body.AccelerationJerk-mean-X"|"Body.AccelerationJerk-mean-Y"|
|"Body.AccelerationJerk-mean-Z"|"Body.AccelerationJerk-std-X"|"Body.AccelerationJerk-std-Y"|"Body.AccelerationJerk-std-Z"|
|"Body.AccelerationJerkMag-mean"|"Body.AccelerationJerkMag-std"|"Body.AccelerationMag-mean"|"Body.AccelerationMag-std"|
|"Body.Gyroscope-mean-X"|"Body.Gyroscope-mean-Y"|"Body.Gyroscope-mean-Z"|"Body.Gyroscope-std-X"|
|"Body.Gyroscope-std-Y"|"Body.Gyroscope-std-Z"|"Body.GyroscopeJerk-mean-X"|"Body.GyroscopeJerk-mean-Y"|
|"Body.GyroscopeJerk-mean-Z"|"Body.GyroscopeJerk-std-X"|"Body.GyroscopeJerk-std-Y"|"Body.GyroscopeJerk-std-Z"|
|"Body.GyroscopeJerkMag-mean"|"Body.GyroscopeJerkMag-std"|"Body.GyroscopeMag-mean"|"Body.GyroscopeMag-std"|
|"Gravity.Acceleration-mean-X"|"Gravity.Acceleration-mean-Y"|"Gravity.Acceleration-mean-Z"|"Gravity.Acceleration-std-X"|
|"Gravity.Acceleration-std-Y"|"Gravity.Acceleration-std-Z"|"Gravity.AccelerationMag-mean"|"Gravity.AccelerationMag-std"|

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

### [Source](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) 

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
