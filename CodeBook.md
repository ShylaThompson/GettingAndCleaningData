---
title: "CodeBook"
author: "Shyla Thompson"
date: "Thursday, January 22, 2015"
output: html_document
---

# The Raw data

The raw data is available from here:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


# Raw Data variables

The raw data variables are listed in the features.txt file and explained in the features_info.txt file within the zipped package containing the raw data. Familiarize yourself with these variables 

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


##Tidy data variables

The tidy data, or final data set that you get when you run the run_analysis.R script, contains only the variables associated with the following measurements in the raw data set.   

mean(): Mean value
std(): Standard deviation


The list of variables in the final tidy data set are listed below. Each measurement is the average of each variable for each activity and each subject. 

"tBodyAccmeanX"
"tBodyAccmeanY"
"tBodyAccmeanZ"
"tGravityAccmeanX"
"tGravityAccmeanY"
"tGravityAccmeanZ"
"tBodyAccJerkmeanX"
"tBodyAccJerkmeanY"
"tBodyAccJerkmeanZ"
"tBodyGyromeanX"
"tBodyGyromeanY"
"tBodyGyromeanZ"
"tBodyGyroJerkmeanX"
"tBodyGyroJerkmeanY"
"tBodyGyroJerkmeanZ"
"tBodyAccMagmean"
"tGravityAccMagmean"
"tBodyAccJerkMagmean"
"tBodyGyroMagmean"
"tBodyGyroJerkMagmean"
"fBodyAccmeanX"
"fBodyAccmeanY"
"fBodyAccmeanZ"
"fBodyAccJerkmeanX"
"fBodyAccJerkmeanY"
"fBodyAccJerkmeanZ"
"fBodyGyromeanX"
"fBodyGyromeanY"
"fBodyGyromeanZ"
"fBodyAccMagmean"
"fBodyBodyAccJerkMagmean"
"fBodyBodyGyroMagmean"
"fBodyBodyGyroJerkMagmean"
"tBodyAccstdX"
"tBodyAccstdY"
"tBodyAccstdZ"
"tGravityAccstdX"
"tGravityAccstdY"
"tGravityAccstdZ"
"tBodyAccJerkstdX"
"tBodyAccJerkstdY"
"tBodyAccJerkstdZ"
"tBodyGyrostdX"
"tBodyGyrostdY"
"tBodyGyrostdZ"
"tBodyGyroJerkstdX"
"tBodyGyroJerkstdY"
"tBodyGyroJerkstdZ"
"tBodyAccMagstd"
"tGravityAccMagstd"
"tBodyAccJerkMagstd"
"tBodyGyroMagstd"
"tBodyGyroJerkMagstd"
"fBodyAccstdX"
"fBodyAccstdY"
"fBodyAccstdZ"
"fBodyAccJerkstdX"
"fBodyAccJerkstdY"
"fBodyAccJerkstdZ"
"fBodyGyrostdX"
"fBodyGyrostdY"
"fBodyGyrostdZ"
"fBodyAccMagstd"
"fBodyBodyAccJerkMagstd"
"fBodyBodyGyroMagstd"
"fBodyBodyGyroJerkMagstd"

