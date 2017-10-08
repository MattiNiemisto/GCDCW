# Getting and Cleaning Data Course Project / week 4
## This repo contains the scripts and CodeBook for the assignment
## Contents:
- README.md: this file. 
- CodeBook.md: Descriptive document containing for the variable names and data frame in this assignment
- run_analysis.R: r file containing the code for the assignment

## Usage instructions
- Open R Studio and set working directory to where you have the R-file and run following commands
* > source("run_analysis.R) ## This will source the script
* > runInit() ## this will include dplyr library
* > getData("./data","https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip") ## This will create a directory called data (if it doesn't exist in parent directory and load the data used in this assginment)
* > analyze <- runAnalysis() ## this will load the data set in R and complete following steps

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

You can see the results for step 5 by running
* > View(analyze$means)

The dataframe for step 4 can be viewed by running
* > View(analy$meanstd)

The variables and dataframes are described in CodeBook.md along with steps performed to get the the end results.

## Assigment:
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Good luck!
