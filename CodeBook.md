#Code Book

##About the data
The data used for this project were from a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities while wearing a smartphone (Samsung Galaxy S). Using its embedded accelerometer and gyroscope, three-axial linear acceleration and angular velocity were captured at a constant rate of 50Hz. The obtained dataset was partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% for the test data.

Here are the data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The features selected for this database come from the accelerometer and gyroscope three-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix ‘t’ to denote time) were captured at a constant rate of 50 Hz. and the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) – both using a low pass Butterworth filter.

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the ‘f’ to indicate frequency domain signals).

##Variables and Measurements
1. Subject = the individual whose measurements were recorded
2. Activity = the type of activity which occurred (walking, walking upstairs, walking downstairs, sitting, standing, laying)
3. Feature Vector Variables (for clarity t = Time, f = Frequency, Acc = Accelerometer, Gryo = Gyroscope, Mag = Magnitude) <br>
    tBodyAcc-XYZ <br>
    tGravityAcc-XYZ <br>
    tBodyAccJerk-XYZ <br>
    tBodyGyro-XYZ <br>
    tBodyGyroJerk-XYZ <br>
    tBodyAccMag <br>
    tGravityAccMag <br>
    tBodyAccJerkMag <br>
    tBodyGyroMag <br>
    tBodyGyroJerkMag <br>
    fBodyAcc-XYZ <br>
    fBodyAccJerk-XYZ <br>
    fBodyGyro-XYZ <br>
    fBodyAccMag <br>
    fBodyAccJerkMag <br>
    fBodyGyroMag <br>
    fBodyGyroJerkMag <br>
4. Mean
5. Standard Deviation

The units given are g’s for the accelerometer and rad/sec for the gyro and g/sec and rad/sec/sec for the corresponding jerks.
