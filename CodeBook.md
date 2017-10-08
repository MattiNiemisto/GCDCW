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
subject     Information about which subject performed the measurement
activity    Information which activity was performed                    
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
BodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z
tBodyGyro-std()-X   
tBodyGyro-std()-Y 
tBodyGyro-std()-Z   
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y  
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X   
tBodyGyroJerk-std()-Y"
tBodyGyroJerk-std()-Z   
tBodyAccMag-mean()
tBodyAccMag-std()   
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()   
tBodyGyroMag-mean()
tBodyGyroMag-std()  
tBodyGyroJerkMag-mean()   
tBodyGyroJerkMag-std()  
fBodyAcc-mean()-X 
fBodyAcc-mean()-Y   
fBodyAcc-mean()-Z 
fBodyAcc-std()-X    
fBodyAcc-std()-Y  
fBodyAcc-std()-Z    
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y   
fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X   
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z   
fBodyAccJerk-std()-X 
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z 
fBodyAccJerk-meanFreq()-X     
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z 
fBodyGyro-mean()-X
fBodyGyro-mean()-Y  
fBodyGyro-mean()-Z
fBodyGyro-std()-X   
fBodyGyro-std()-Y 
fBodyGyro-std()-Z   
fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y  
fBodyGyro-meanFreq()-Z
fBodyAccMag-mean()  
fBodyAccMag-std() 
fBodyAccMag-meanFreq()  
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()"      
fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag-mean() 
fBodyBodyGyroMag-std()
fBodyBodyGyroMag-meanFreq()  
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()
fBodyBodyGyroJerkMag-meanFreq()

## Variables for the means dataframe
subject     Information about which subject performed the measurement
activity    Information which activity was performed                    
Mean for tBodyAcc-mean()-X
Mean for tBodyAcc-mean()-Y
Mean for tBodyAcc-mean()-Z
Mean for tBodyAcc-std()-X
Mean for tBodyAcc-std()-Y
Mean for tBodyAcc-std()-Z
Mean for tGravityAcc-mean()-X
Mean for tGravityAcc-mean()-Y
Mean for tGravityAcc-mean()-Z
Mean for tGravityAcc-std()-X
Mean for tGravityAcc-std()-Y
Mean for tBodyAccJerk-mean()-X
Mean for tBodyAccJerk-mean()-Y
Mean for tBodyAccJerk-mean()-Z
Mean for tBodyAccJerk-std()-X
Mean for BodyAccJerk-std()-Y
Mean for tBodyAccJerk-std()-Z
Mean for tBodyGyro-mean()-X
Mean for tBodyGyro-mean()-Y  
Mean for tBodyGyro-mean()-Z
Mean for tBodyGyro-std()-X   
Mean for tBodyGyro-std()-Y
Mean for tBodyGyro-std()-Z   
Mean for tBodyGyroJerk-mean()-X
Mean for tBodyGyroJerk-mean()-Y  
Mean for tBodyGyroJerk-mean()-Z
Mean for tBodyGyroJerk-std()-X   
Mean for tBodyGyroJerk-std()-Y"
Mean for tBodyGyroJerk-std()-Z   
Mean for tBodyAccMag-mean()
Mean for tBodyAccMag-std()   
Mean for tGravityAccMag-mean()
Mean for tGravityAccMag-std()
Mean for tBodyAccJerkMag-mean()
Mean for tBodyAccJerkMag-std()   
Mean for tBodyGyroMag-mean()
Mean for tBodyGyroMag-std()  
Mean for tBodyGyroJerkMag-mean()   
Mean for tBodyGyroJerkMag-std()  
Mean for fBodyAcc-mean()-X 
Mean for fBodyAcc-mean()-Y   
Mean for fBodyAcc-mean()-Z 
Mean for fBodyAcc-std()-X    
Mean for fBodyAcc-std()-Y  
Mean for fBodyAcc-std()-Z    
Mean for fBodyAcc-meanFreq()-X
Mean for fBodyAcc-meanFreq()-Y   
Mean for fBodyAcc-meanFreq()-Z
Mean for fBodyAccJerk-mean()-X   
Mean for fBodyAccJerk-mean()-Y
Mean for fBodyAccJerk-mean()-Z   
Mean for fBodyAccJerk-std()-X 
Mean for fBodyAccJerk-std()-Y
Mean for fBodyAccJerk-std()-Z 
Mean for fBodyAccJerk-meanFreq()-X     
Mean for fBodyAccJerk-meanFreq()-Y
Mean for fBodyAccJerk-meanFreq()-Z 
Mean for fBodyGyro-mean()-X
Mean for fBodyGyro-mean()-Y  
Mean for fBodyGyro-mean()-Z
Mean for fBodyGyro-std()-X   
Mean for fBodyGyro-std()-Y 
Mean for fBodyGyro-std()-Z   
Mean for fBodyGyro-meanFreq()-X
Mean for fBodyGyro-meanFreq()-Y  
Mean for fBodyGyro-meanFreq()-Z
Mean for fBodyAccMag-mean()  
Mean for fBodyAccMag-std() 
Mean for fBodyAccMag-meanFreq()  
Mean for fBodyBodyAccJerkMag-mean()
Mean for fBodyBodyAccJerkMag-std()"      
Mean for fBodyBodyAccJerkMag-meanFreq()
Mean for fBodyBodyGyroMag-mean() 
Mean for fBodyBodyGyroMag-std()
Mean for fBodyBodyGyroMag-meanFreq()  
Mean for fBodyBodyGyroJerkMag-mean()
Mean for fBodyBodyGyroJerkMag-std()
Mean for fBodyBodyGyroJerkMag-meanFreq()