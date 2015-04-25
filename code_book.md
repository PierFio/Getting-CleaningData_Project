Code Book 
==========

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain
signals (prefix 't' to denote time) were captured at a constant rate of
50 Hz. Then they were filtered using a median filter and a 3rd order low
pass Butterworth filter with a corner frequency of 20 Hz to remove
noise. Similarly, the acceleration signal was then separated into body
and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
using another low pass Butterworth filter with a corner frequency of 0.3
Hz.

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (tBodyAccMag,
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to
indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for
each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z
directions.

The mean by activity for each subject is computed for the mean (mean) and standard 
deviation (std) of each variable :

Variable												| Units
--------												| -----
Subject: the subject performing the activity (1 to 30)	|
Activity : performed activity							|
mean of tBodyAcc-mean() for X, Y, and Z 				| in m/s^-2
mean of tBodyAcc-std() for X, Y, and Z 					| in m/s^-2
mean of tGravityAcc-mean() for X, Y and Z 				| in m/s^-2
mean of tGravityAcc-std() for X, Y and Z 				| in m/s^-2 
mean of tBodyAccJerk-mean() for X, Y and Z 				| in m/s^-2
mean of tBodyAccJerk-std() for X, Y and Z 				| in m/s^-2
mean of tBodyGyro-mean() for X, Y, and Z				| in rad/s^-2
mean of tBodyGyro-std() for X, Y, and Z					| in rad/s^-2
mean of tBodyGyroJerk-mean() for X, Y and Z 			| in rad/s^-2
mean of tBodyGyroJerk-std() for X, Y and Z 				| in rad/s^-2
mean of tBodyAccMag-mean() 								| in m/s^-2
mean of tBodyAccMag-std() 								| in m/s^-2
mean of tGravityAccMag-mean() 							| in m/s^-2
mean of tGravityAccMag-std() 							| in m/s^-2
mean of tBodyAccJerkMag-mean()							| in m/s^-2
mean of tBodyAccJerkMag-std()							| in m/s^-2
mean of tBodyGyroMag-mean() 							| in rad/s^-2
mean of tBodyGyroMag-std() 								| in rad/s^-2
mean of tBodyGyroJerkMag-mean() 						| in rad/s^-2
mean of tBodyGyroJerkMag-std() 							| in rad/s^-2
mean of fBodyAcc-mean() for X, Y, and Z 				| in m/s^-2
mean of fBodyAcc-std() for X, Y, and Z 					| in m/s^-2
mean of fBodyAcc-meanFreq() for X, Y and Z				| in Hz
mean of fBodyAccJerk-mean for X, Y and Z				| in m/s^-2
mean of fBodyAccJerk-std for X, Y and Z					| in m/s^-2
mean of fBodyAccJerk-meanFreq() for X, Y and Z			| in Hz
mean of fBodyGyro-mean() for X, Y and Z 				| in rad/s^-2
mean of fBodyGyro-std() for X, Y and Z 					| in rad/s^-2
mean of fBodyGyro-meanFreq() for X, Y and Z 			| in Hz
mean of fBodyAccMag-mean() 								| in m/s^-2
mean of fBodyAccMag-std() 								| in m/s^-2
mean of fBodyAccMag-meanFreq()							| in Hz
mean of fBodyBodyAccJerkMag-mean() 						| in m/s^-2
mean of fBodyBodyAccJerkMag-std() 						| in m/s^-2
mean of fBodyBodyAccJerkMag-meanFreq() 					| in Hz
mean of fBodyBodyGyroMag-mean() 						| in rad/s^-2
mean of fBodyBodyGyroMag-std() 							| in rad/s^-2
mean of fBodyBodyGyroMag-meanFreq() 					| in Hz
mean of fBodyBodyGyroJerkMag-mean()						| in rad/s^-2
mean of fBodyBodyGyroJerkMag-std()						| in rad/s^-2
mean of fBodyBodyGyroJerkMag-meanFreq()					| in rad/s^-2
