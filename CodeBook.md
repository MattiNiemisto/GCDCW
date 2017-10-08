# CodeBook for the Getting and Cleaning Data Course Project week 4
## Data Frames
runAnalysis.R will produce 2 main data frames as a result
**meanstd** which contains only the means and standard deviations for each measurements
**means** which contains the calculated means for each activity and subject
Rest of the dataframes are just the original dataframes from the data which are used to create the end results.

## Steps to produce the end results
First step (after running runInit() to load dplyr) was to load from the web like instructed in the assignment. This was done by the getData function which takes the datafolder and data url as attribute. The zip-file was then unzipped in the data-folder.

Second step was to load the data into R Studio. Actual measurement data was loaded into **testX** and **trainX** dataframes. The information about which activity was performed was loaded into  **testY** and **trainY** data frames and information about the subject performing the activity into **testSubjects** and **trainSubjects** data frames respectively. Activity labels and feature labels were loaded into **actLabel** and **features** data frames.

3rd step was to start cleaning the data. First the labels in dataframes were fixed by using the information from **features** data frame and setting activity label to activity and subject label to subject

4th step was to combine the wanted data frame. I chose to cbind both subject and activity data into test and train data frames. Then the test and train data frames were rbind :ed to produce the combined data set. As a final step only the measurements for mean and standard deviations were selected like instructed in the assignment.

5th step was to change activity column values to be have descriptive activity names. This was done using the data in actLabels frame. Column was also transformed to be include factor values.

6th step was to calculate the mean for each activity and subject. Results were stored in **means** table.

7th step was to sligthly alter the variable names in **means** table as a finishing touch to highlight that they are mean values.

## Variables for meanstd data frame
1.	subject
2.	activity
3.	tBodyAcc-mean()-X
4.	tBodyAcc-mean()-Y
5.	tBodyAcc-mean()-Z
6.	tBodyAcc-std()-X
7.	tBodyAcc-std()-Y
8.	tBodyAcc-std()-Z
9.	tGravityAcc-mean()-X
10.	tGravityAcc-mean()-Y
11.	tGravityAcc-mean()-Z
12.	tGravityAcc-std()-X
13.	tGravityAcc-std()-Y
14.	tGravityAcc-std()-Z
15.	tBodyAccJerk-mean()-X
16.	tBodyAccJerk-mean()-Y
17.	tBodyAccJerk-mean()-Z
18.	tBodyAccJerk-std()-X
19.	tBodyAccJerk-std()-Y
20.	tBodyAccJerk-std()-Z
21.	tBodyGyro-mean()-X
22.	tBodyGyro-mean()-Y
23.	tBodyGyro-mean()-Z
24.	tBodyGyro-std()-X
25.	tBodyGyro-std()-Y
26.	tBodyGyro-std()-Z
27.	tBodyGyroJerk-mean()-X
28.	tBodyGyroJerk-mean()-Y
29.	tBodyGyroJerk-mean()-Z
30.	tBodyGyroJerk-std()-X
31.	tBodyGyroJerk-std()-Y
32.	tBodyGyroJerk-std()-Z
33.	tBodyAccMag-mean()
34.	tBodyAccMag-std()
35.	tGravityAccMag-mean()
36.	tGravityAccMag-std()
37.	tBodyAccJerkMag-mean()
38.	tBodyAccJerkMag-std()
39.	tBodyGyroMag-mean()
40.	tBodyGyroMag-std()
41.	tBodyGyroJerkMag-mean()
42.	tBodyGyroJerkMag-std()
43.	fBodyAcc-mean()-X
44.	fBodyAcc-mean()-Y
45.	fBodyAcc-mean()-Z
46.	fBodyAcc-std()-X
47.	fBodyAcc-std()-Y
48.	fBodyAcc-std()-Z
49.	fBodyAcc-meanFreq()-X
50.	fBodyAcc-meanFreq()-Y
51.	fBodyAcc-meanFreq()-Z
52.	fBodyAccJerk-mean()-X
53.	fBodyAccJerk-mean()-Y
54.	fBodyAccJerk-mean()-Z
55.	fBodyAccJerk-std()-X
56.	fBodyAccJerk-std()-Y
57.	fBodyAccJerk-std()-Z
58.	fBodyAccJerk-meanFreq()-X
59.	fBodyAccJerk-meanFreq()-Y
60.	fBodyAccJerk-meanFreq()-Z
61.	fBodyGyro-mean()-X
62.	fBodyGyro-mean()-Y
63.	fBodyGyro-mean()-Z
64.	fBodyGyro-std()-X
65.	fBodyGyro-std()-Y
66.	fBodyGyro-std()-Z
67.	fBodyGyro-meanFreq()-X
68.	fBodyGyro-meanFreq()-Y
69.	fBodyGyro-meanFreq()-Z
70.	fBodyAccMag-mean()
71.	fBodyAccMag-std()
72.	fBodyAccMag-meanFreq()
73.	fBodyBodyAccJerkMag-mean()
74.	fBodyBodyAccJerkMag-std()
75.	fBodyBodyAccJerkMag-meanFreq()
76.	fBodyBodyGyroMag-mean()
77.	fBodyBodyGyroMag-std()
78.	fBodyBodyGyroMag-meanFreq()
79.	fBodyBodyGyroJerkMag-mean()
80.	fBodyBodyGyroJerkMag-std()
81.	fBodyBodyGyroJerkMag-meanFreq()

## Variables for the means dataframe
1.	subject
2.	activity
3.	Mean for tBodyAcc-mean()-X
4.	Mean for tBodyAcc-mean()-Y
5.	Mean for tBodyAcc-mean()-Z
6.	Mean for tBodyAcc-std()-X
7.	Mean for tBodyAcc-std()-Y
8.	Mean for tBodyAcc-std()-Z
9.	Mean for tGravityAcc-mean()-X
10.	Mean for tGravityAcc-mean()-Y
11.	Mean for tGravityAcc-mean()-Z
12.	Mean for tGravityAcc-std()-X
13.	Mean for tGravityAcc-std()-Y
14.	Mean for tGravityAcc-std()-Z
15.	Mean for tBodyAccJerk-mean()-X
16.	Mean for tBodyAccJerk-mean()-Y
17.	Mean for tBodyAccJerk-mean()-Z
18.	Mean for tBodyAccJerk-std()-X
19.	Mean for tBodyAccJerk-std()-Y
20.	Mean for tBodyAccJerk-std()-Z
21.	Mean for tBodyGyro-mean()-X
22.	Mean for tBodyGyro-mean()-Y
23.	Mean for tBodyGyro-mean()-Z
24.	Mean for tBodyGyro-std()-X
25.	Mean for tBodyGyro-std()-Y
26.	Mean for tBodyGyro-std()-Z
27.	Mean for tBodyGyroJerk-mean()-X
28.	Mean for tBodyGyroJerk-mean()-Y
29.	Mean for tBodyGyroJerk-mean()-Z
30.	Mean for tBodyGyroJerk-std()-X
31.	Mean for tBodyGyroJerk-std()-Y
32.	Mean for tBodyGyroJerk-std()-Z
33.	Mean for tBodyAccMag-mean()
34.	Mean for tBodyAccMag-std()
35.	Mean for tGravityAccMag-mean()
36.	Mean for tGravityAccMag-std()
37.	Mean for tBodyAccJerkMag-mean()
38.	Mean for tBodyAccJerkMag-std()
39.	Mean for tBodyGyroMag-mean()
40.	Mean for tBodyGyroMag-std()
41.	Mean for tBodyGyroJerkMag-mean()
42.	Mean for tBodyGyroJerkMag-std()
43.	Mean for fBodyAcc-mean()-X
44.	Mean for fBodyAcc-mean()-Y
45.	Mean for fBodyAcc-mean()-Z
46.	Mean for fBodyAcc-std()-X
47.	Mean for fBodyAcc-std()-Y
48.	Mean for fBodyAcc-std()-Z
49.	Mean for fBodyAcc-meanFreq()-X
50.	Mean for fBodyAcc-meanFreq()-Y
51.	Mean for fBodyAcc-meanFreq()-Z
52.	Mean for fBodyAccJerk-mean()-X
53.	Mean for fBodyAccJerk-mean()-Y
54.	Mean for fBodyAccJerk-mean()-Z
55.	Mean for fBodyAccJerk-std()-X
56.	Mean for fBodyAccJerk-std()-Y
57.	Mean for fBodyAccJerk-std()-Z
58.	Mean for fBodyAccJerk-meanFreq()-X
59.	Mean for fBodyAccJerk-meanFreq()-Y
60.	Mean for fBodyAccJerk-meanFreq()-Z
61.	Mean for fBodyGyro-mean()-X
62.	Mean for fBodyGyro-mean()-Y
63.	Mean for fBodyGyro-mean()-Z
64.	Mean for fBodyGyro-std()-X
65.	Mean for fBodyGyro-std()-Y
66.	Mean for fBodyGyro-std()-Z
67.	Mean for fBodyGyro-meanFreq()-X
68.	Mean for fBodyGyro-meanFreq()-Y
69.	Mean for fBodyGyro-meanFreq()-Z
70.	Mean for fBodyAccMag-mean()
71.	Mean for fBodyAccMag-std()
72.	Mean for fBodyAccMag-meanFreq()
73.	Mean for fBodyBodyAccJerkMag-mean()
74.	Mean for fBodyBodyAccJerkMag-std()
75.	Mean for fBodyBodyAccJerkMag-meanFreq()
76.	Mean for fBodyBodyGyroMag-mean()
77.	Mean for fBodyBodyGyroMag-std()
78.	Mean for fBodyBodyGyroMag-meanFreq()
79.	Mean for fBodyBodyGyroJerkMag-mean()
80.	Mean for fBodyBodyGyroJerkMag-std()
81.	Mean for fBodyBodyGyroJerkMag-meanFreq()