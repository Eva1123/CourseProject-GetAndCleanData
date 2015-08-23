# CourseProject-GetAndCleanData
The purpose of this project is to to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The input data come from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, which were built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. The detailed description of this input data set can be found at the above link.

Here is a list of cleaning steps we have applied to the original data set in order to get our final tidy data set:
Step 1. merges the training and the test sets to create one data set.
Step 2. extracts only the measurements on the mean and standard deviation for each measurement. 
Step 3. uses descriptive activity names to name the activities in the data set
Step 4. appropriately labels the data set with descriptive variable names. 
Step 5. from the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The final data set contains subject id, activity name, and the mean of each variable (i.e.the mean or standard deviation for each measurement) for each activiy name and each subject.

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
