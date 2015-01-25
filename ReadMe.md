---
title: "ReadMe"
author: "Shyla Thompson"
date: "Monday, January 19, 2015"
output: html_document
---

This ReadMe provides information about the files in this repository. These files were created as the final project in the "Getting and Cleaning Data" course by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo PhD. 



The dataset includes the following files:
=========================================

###ReadMe.md
You're reading it now. 

###run_analysis.R

This script provides the individual RStudio console command line operations that you must run in the order in which they are listed. Comments are included to provide additiona information about most command lines. 

1. Save the raw data (.zip) file to a local directory. 
2. Unzip the package into the same or another local directory.
3. Run the run_analysis.R script in your working directory.

This script will do the following:
1.Merge the training and the test sets from the raw data to create one data set.
2.Extract only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names as provided in the activity_labels.txt file in the zipped raw data package to name the activities in the data set.
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


###CodeBook.md

The CodeBook.md file provides information about the variables in the raw and final data set. 

#Data
The original raw data that was cleaned and mutated for this project can be found at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description of the raw data can be found at the following URL: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
