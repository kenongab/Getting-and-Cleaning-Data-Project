STUDY DESIGN

This analysis was done under the instructions of the Getting and Cleaning Data Coursera course final project requirements. The Samsung data set was taken
from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip on October 7, 2018.

A motion experiement was done on 30 individuals using an accelerometer and gyroscope. A total of 561 variables derived from raw signals
coming from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ were measured in the Samsung data set.
The tidy data output of the run_analysis.R script produces a table that summarizes the average of 81 mean or standard deviation variables for each
subject and activity taken from the Samsung data set.




CODE BOOK

The following is taken from the Samsung data set README that explains the labeling for each variable and their source in more detail


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


The code book is presented in the order in which the variables appear in the output table from left to right.

subject

Integer. 1-30. Identifies each of the 30 unique test subjects in the experiment.
	
activity

Character. WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. Identifies the activity being performed when the data was collected.
	
tBodyAcc-mean()-X

Double-precision floating point. The mean of the tBodyAcc-mean()-X measurement.
	
tBodyAcc-mean()-Y

Double-precision floating point. The mean of the tBodyAcc-mean()-Y measurement.
	
tBodyAcc-mean()-Z

Double-precision floating point. The mean of the tBodyAcc-mean()-Z measurement.
	
tBodyAcc-std()-X

Double-precision floating point. The mean of the tBodyAcc-std()-X measurement.
	
tBodyAcc-std()-Y

Double-precision floating point. The mean of the tBodyAcc-std()-Y measurement.
	
tBodyAcc-std()-Z

Double-precision floating point. The mean of the tBodyAcc-std()-Z measurement.
	
tGravityAcc-mean()-X

Double-precision floating point. The mean of the tGravityAcc-mean()-X measurement.
	
tGravityAcc-mean()-Y

Double-precision floating point. The mean of the tGravityAcc-mean()-Y measurement.
	
tGravityAcc-mean()-Z

Double-precision floating point. The mean of the tGravityAcc-mean()-Z measurement.
	
tGravityAcc-std()-X

Double-precision floating point. The mean of the tGravityAcc-std()-X measurement.
	
tGravityAcc-std()-Y

Double-precision floating point. The mean of the tGravityAcc-std()-Y measurement.
	
tGravityAcc-std()-X

Double-precision floating point. The mean of the tGravityAcc-std()-X measurement.
	
tBodyAccJerk-mean()-X

Double-precision floating point. The mean of the tBodyAccJerk-mean()-X measurement.
	
tBodyAccJerk-mean()-Y

Double-precision floating point. The mean of the tBodyAccJerk-mean()-Y measurement.
	
tBodyAccJerk-mean()-Z

Double-precision floating point. The mean of the tBodyAccJerk-mean()-Z measurement.
	
tBodyAccJerk-std()-X

Double-precision floating point. The mean of the tBodyAccJerk-std()-X measurement.
	
tBodyAccJerk-std()-Y

Double-precision floating point. The mean of the tBodyAccJerk-std()-Y measurement.
	
tBodyAccJerk-std()-Z

Double-precision floating point. The mean of the tBodyAccJerk-std()-Z measurement.
	
tBodyGyro-mean()-X

Double-precision floating point. The mean of the tBodyGyro-mean()-X measurement.
	
tBodyGyro-mean()-Y

Double-precision floating point. The mean of the tBodyGyro-mean()-Y measurement.
	
tBodyGyro-mean()-Z

Double-precision floating point. The mean of the tBodyGyro-mean()-Z measurement.
	
tBodyGyro-std()-X

Double-precision floating point. The mean of the tBodyGyro-std()-X measurement.
	
tBodyGyro-std()-Y

Double-precision floating point. The mean of the tBodyGyro-std()-Y measurement.
	
tBodyGyro-std()-Z

Double-precision floating point. The mean of the tBodyGyro-std()-Z measurement.
	
tBodyGyroJerk-mean()-X

Double-precision floating point. The mean of the tBodyGyroJerk-mean()-X measurement.
	
tBodyGyroJerk-mean()-Y

Double-precision floating point. The mean of the tBodyGyroJerk-mean()-Y measurement.
	
tBodyGyroJerk-mean()-Z

Double-precision floating point. The mean of the tBodyGyroJerk-mean()-Z measurement.
	
tBodyGyroJerk-std()-X

Double-precision floating point. The mean of the tBodyGyroJerk-std()-X measurement.
	
tBodyGyroJerk-std()-Y

Double-precision floating point. The mean of the tBodyGyroJerk-std()-Y measurement.
	
tBodyGyroJerk-std()-Z

Double-precision floating point. The mean of the tBodyGyroJerk-std()-Z measurement.
	
tBodyAccMag-mean()

Double-precision floating point. The mean of the tBodyAccMag-mean() measurement.
	
tBodyAccMag-std()

Double-precision floating point. The mean of the tBodyAccMag-std() measurement.
	
tGravityAccMag-mean()

Double-precision floating point. The mean of the tGravityAccMag-mean() measurement.
	
tGravityAccMag-std()

Double-precision floating point. The mean of the tGravityAccMag-std() measurement.
	
tBodyAccJerkMag-mean()

Double-precision floating point. The mean of the tBodyAccJerkMag-mean() measurement.
	
tBodyAccJerkMag-std()

Double-precision floating point. The mean of the tBodyAccJerkMag-std() measurement.
	
tBodyGyroMag-mean()

Double-precision floating point. The mean of the tBodyGyroMag-mean() measurement.
	
tBodyGyroMag-std()

Double-precision floating point. The mean of the tBodyGyroMag-std() measurement.
	
tBodyGyroJerkMag-mean()

Double-precision floating point. The mean of the tBodyGyroJerkMag-mean() measurement.
	
tBodyGyroJerkMag-std()

Double-precision floating point. The mean of the tBodyGyroJerkMag-std() measurement.
	
fBodyAcc-mean()-X

Double-precision floating point. The mean of the fBodyAcc-mean()-X measurement.
	
fBodyAcc-mean()-Y

Double-precision floating point. The mean of the fBodyAcc-mean()-Y measurement.
	
fBodyAcc-mean()-Z

Double-precision floating point. The mean of the fBodyAcc-mean()-Z measurement.
	
fBodyAcc-std()-X

Double-precision floating point. The mean of the fBodyAcc-std()-X measurement.
	
fBodyAcc-std()-Y

Double-precision floating point. The mean of the fBodyAcc-std()-Y measurement.
	
fBodyAcc-std()-Z

Double-precision floating point. The mean of the fBodyAcc-std()-Z measurement.
	
fBodyAcc-meanFreq()-X

Double-precision floating point. The mean of the fBodyAcc-meanFreq()-X measurement.
	
fBodyAcc-meanFreq()-Y

Double-precision floating point. The mean of the fBodyAcc-meanFreq()-Y measurement.
	
fBodyAcc-meanFreq()-Z

Double-precision floating point. The mean of the fBodyAcc-meanFreq()-Z measurement.
	
fBodyAccJerk-mean()-X

Double-precision floating point. The mean of the fBodyAccJerk-mean()-X measurement.
	
fBodyAccJerk-mean()-Y

Double-precision floating point. The mean of the fBodyAccJerk-mean()-Y measurement.
	
fBodyAccJerk-mean()-Z

Double-precision floating point. The mean of the fBodyAccJerk-mean()-Z measurement.
	
fBodyAccJerk-std()-X

Double-precision floating point. The mean of the fBodyAccJerk-std()-X measurement.
	
fBodyAccJerk-std()-Y

Double-precision floating point. The mean of the fBodyAccJerk-std()-Y measurement.
	
fBodyAccJerk-std()-Z

Double-precision floating point. The mean of the fBodyAccJerk-std()-Z measurement.
	
fBodyAccJerk-meanFreq()-X

Double-precision floating point. The mean of the fBodyAccJerk-meanFreq()-X measurement.
	
fBodyAccJerk-meanFreq()-Y

Double-precision floating point. The mean of the fBodyAccJerk-meanFreq()-Y measurement.
	
fBodyAccJerk-meanFreq()-Z

Double-precision floating point. The mean of the fBodyAccJerk-meanFreq()-Z measurement.
	
fBodyGyro-mean()-X

Double-precision floating point. The mean of the fBodyGyro-mean()-X measurement.
	
fBodyGyro-mean()-Y

Double-precision floating point. The mean of the fBodyGyro-mean()-Y measurement.
	
fBodyGyro-mean()-Z

Double-precision floating point. The mean of the fBodyGyro-mean()-Z measurement.
	
fBodyGyro-std()-X

Double-precision floating point. The mean of the fBodyGyro-std()-X measurement.
	
fBodyGyro-std()-Y

Double-precision floating point. The mean of the fBodyGyro-std()-Y measurement.
	
fBodyGyro-std()-Z

Double-precision floating point. The mean of the fBodyGyro-std()-Z measurement.
	
fBodyGyro-meanFreq()-X

Double-precision floating point. The mean of the fBodyGyro-meanFreq()-X measurement.
	
fBodyGyro-meanFreq()-Y

Double-precision floating point. The mean of the fBodyGyro-meanFreq()-Y measurement.
	
fBodyGyro-meanFreq()-Z

Double-precision floating point. The mean of the fBodyGyro-meanFreq()-Z measurement.
	
fBodyAccMag-mean()

Double-precision floating point. The mean of the fBodyAccMag-mean() measurement.
	
fBodyAccMag-std()

Double-precision floating point. The mean of the fBodyAccMag-std() measurement.
	
fBodyAccMag-meanFreq()

Double-precision floating point. The mean of the fBodyAccMag-meanFreq() measurement.
	
fBodyBodyAccJerkMag-mean()

Double-precision floating point. The mean of the fBodyBodyAccJerkMag-mean() measurement.
	
fBodyBodyAccJerkMag-std()

Double-precision floating point. The mean of the fBodyBodyAccJerkMag-std()measurement.
	
fBodyBodyAccJerkMag-meanFreq()

Double-precision floating point. The mean of the fBodyBodyAccJerkMag-meanFreq() measurement.
	
fBodyBodyGyroMag-mean()
	
Double-precision floating point. The mean of the fBodyBodyGyroMag-mean() measurement.
	
fBodyBodyGyroMag-std()

Double-precision floating point. The mean of the fBodyBodyGyroMag-std() measurement.
	
fBodyBodyGyroMag-meanFreq()

Double-precision floating point. The mean of the fBodyBodyGyroMag-meanFreq() measurement.
	
fBodyBodyGyroJerkMag-mean()

Double-precision floating point. The mean of the fBodyBodyGyroJerkMag-mean() measurement.
	
fBodyBodyGyroJerkMag-std()

Double-precision floating point. The mean of the fBodyBodyGyroJerkMag-std() measurement.
	
fBodyBodyGyroJerkMag-meanFreq()

Double-precision floating point. The mean of the fBodyBodyGyroJerkMag-meanFreq() measurement.