Output variable descriptions:

subject_id: 1 to 30, representing 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
activity_name: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING
the other variables represent the mean of either mean or standard deviation (Real numbers) of the following measurements:
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

where tAcc-XYZ and tGyro-XYZ record the accelerometer and gyroscope 3-axial raw signals. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

tBodyAcc-XYZ and tGravityAcc-XYZ record the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ record the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag record the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag record the result of applying a Fast Fourier Transform (FFT) to some of these signals. (Note the 'f' to indicate frequency domain signals). 

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
