The files within this repo aim to satisfy the course completion requirements set by Coursera for the
Getting and Cleaning Data course in the Data Science Specialization provided by John Hopkins University.

This repo contains 3 files:
	README.md - this file, containing all relevant information about the analysis
	run_analysis.R - the R script used to perform the tidying of the Samsung data
	codebook.md - the codebook for the variables found in the tidy data output of run_analysis.R
	
The script was originally written and run with R Studio version 1.1.456 with a Windows 10 version 10.0.16299 Build 16299 operating system.
The Samsung raw data set was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip on October 7, 2018.
Before running the script, extract the .zip into your working directory to produce the UCI HAR Dataset folder. No further modification is needed.

The script works by reading raw Samsung data files (subject_train.txt, X_train.txt, y_train.txt, subject_test.txt, X_test.txt, y_test.txt, features.txt,
act_labels.txt) as tables in R. Tables containing the 561 variables (X_train.txt, X_test.txt) are merged. After which, variables pertaining to means and
standard deviations are kept and their columns descriptively labeled while the rest are discarded. This table of variables is then further merged with
identifying variables (subject_train.txt, y_train.txt, subject_test.txt, y_test.txt). The activity identifying variables (y_train.txt, y_test.txt) are
transformed to be more descriptive with act_labels.txt. This process produces a data frame with dimensions 10299, 81.

From the previous data frame, the variables are grouped by subject and activity. The averages of the variables per subject-activity group are calculated
and presented as a wide-form table with dimensions 180, 81. The output table satisifies the requirements of tidy data, as outlined in Leek's checklist of
tidy data in The Elements of Data Analytic Style.

The tidy data output saves as "gettingandcleaningdataprojectVINSON.txt" to your set working directory.
To read the output file of run_analysis.R correctly, use read.table(filename, header = TRUE) in R.

Resources:
Guide on completing the assignment by thoughtfulbloke, accessed on October 7, 2018: https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/
Leek, J. (2015). The Elements of Data Analytic Style. Retrieved from Leanpub.
