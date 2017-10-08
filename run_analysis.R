## Initiaze the environment with needed libraries. In this case just the dplyr library
runInit <- function() {
    ## Just load couple of needed libraries
    library(dplyr)
    }
## Get the data from the web and unzip 
getData <- function(dataFolder, fUrl) {
    ## Note: dataFolder is only used in this function, could have hardcoded ./data but
    ## wanted to write script which I can use later as well.
    if(!file.exists(dataFolder)) dir.create(dataFolder)
    ##extract file extension
    fn <- strsplit(fUrl, "/") %>% unlist %>% tail(n=1) %>% strsplit("[.]") %>% 
    unlist %>% tail(n=1)    
    ## Check if we have a zip or a csv
    if(fn == "zip") {
        fName <- paste(dataFolder, "/dataset.zip", sep = "")
        download.file(fUrl, fName, method = "curl")
        oldwd <- getwd()
        setwd(dataFolder)
        unzip("dataset.zip")
        setwd(oldwd)
    } else if (fn == "csv") {
        fName <- paste(dataFolder, "/dataset.csv", sep = "")
        download.file(fUrl, fName, method = "curl")
    }
    ## Support for all the other filetypes to be built.
}

runAnalysis <- function () {
    ## Different dataframes, initialize to null. Will be loaded later
    actLabel <- NULL
    features <- NULL
    testSubjects <- NULL
    testX <- NULL
    testY <- NULL
    trainSubjects <- NULL
    trainX <- NULL
    trainY <- NULL
    test <- NULL
    train <- NULL
    all <- NULL
    meanstd <- NULL
    means <- NULL

    loadData <- function() {
        ## load different files from the data set
        ## use lexical scoping ie. write the variables one scope up
        actLabel <<- tbl_df(read.table("./data/UCI HAR Dataset/activity_labels.txt", sep = " "))
        features <<- tbl_df(read.table("./data/UCI HAR Dataset/features.txt", sep = " "))
        testSubjects <<- tbl_df(read.table("./data/UCI HAR Dataset/test/subject_test.txt", sep = " "))
        testX <<- tbl_df(read.table("./data/UCI HAR Dataset/test/X_test.txt"))
        testY <<- tbl_df(read.table("./data/UCI HAR Dataset/test/y_test.txt", sep = " "))
        trainSubjects <<- tbl_df(read.table("./data/UCI HAR Dataset/train/subject_train.txt", sep = " "))
        trainX <<- tbl_df(read.table("./data/UCI HAR Dataset/train/X_train.txt"))
        trainY <<- tbl_df(read.table("./data/UCI HAR Dataset/train/y_train.txt", sep = " "))
    }
    
    mergeFramesAndAnalyze <- function() {
    ## testX and trainX dataframes contain the actual measurments for all the variables
    ## variable names are in the features dataframe.
    ## The information about subject is in testSubjects and trainSubjects respectively
    ## Lastly the action being performed is in testY and trainY frames and the actual labels
    ## in actLabel frame.

    ## first build test and train frames with measurement data and corrent variable names
    ## (step 4.).
    names(testY) <<- c("activity")
    names(trainY) <<- c("activity")
    names(testSubjects) <<- c("subject")
    names(trainSubjects) <<- c("subject")
    names(testX) <<- features[[2]]
    names(trainX) <<- features[[2]]
    ## Build the combination of activity, subject together with train and test data
    test <<- cbind(testSubjects, testY) %>% cbind(testX)
    train <<- cbind(trainSubjects, trainY) %>% cbind(trainX)
    ## Finally have all in the same data frame (step 1.)
    all <<- rbind(train, test)
    ## Build data frame of just the means (step 2.)
    meanstd <<- all[,sort(c(1,2,grep("mean", names(all)),grep("std", names(all))))]
    ## Change activity numbers to be descriptive activity names nad make them factors
    ## (step 3.)
    meanstd$activity <<- factor(meanstd$activity, levels=c(1,2,3,4,5,6), labels = actLabel$V2)
    ## Calculate the mean for each subject and activity (step 5.)
    means <<- aggregate(meanstd[,3:81], list(subject = meanstd$subject, activity = meanstd$activity),mean)
    ## Make better labels by pasting "Mean for" at the beginning of each label
    colnames(means)[3:81] <<- paste("Mean for", colnames(means[3:81]))
    }

    ## Load data
    loadData()

    ## Combine train and test sets and calculate results
    mergeFramesAndAnalyze()

    ## Make some members accessible
    list(
        actLabel = actLabel,
        features = features, 
        testSubjects = testSubjects,
        testX = testX, 
        testY = testY,
        trainSubjects = trainSubjects,
        trainX, trainX,
        trainY = trainY,
        test = test,
        train = train,
        all = all,
        meanstd = meanstd,
        means = means
    )

}