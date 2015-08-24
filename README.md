# CourseProject-GetAndCleanData
The purpose of this project is to to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The input data come from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, which were built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. 

The original dataset included the following data files:
=======================================================
- 'features.txt': List of all measurements.

- 'activity_labels.txt': List of class labels and their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'train/subject_train.txt': ID's of subjects in the training data

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'test/subject_test.txt': ID's of subjects in the test data


Here is a list of cleaning steps applied:
=========================================
Step 1. merges the training and the test sets to create one data set.

Step 2. extracts only the measurements on the mean and standard deviation for each measurement. 

Step 3. uses descriptive activity names to name the activities in the data set.

Step 4. appropriately labels the data set with descriptive variable names. 

Step 5. from the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The final data set contains subject id, activity name, and the mean of each variable (i.e.the mean or standard deviation for each measurement) for each activiy name and each subject.

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

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
