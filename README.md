Getting-and-Cleaning-Data
=========================

This repository contains the R script, run_analysis.R, to perform data cleaning for provided Samsung data sets.

The R script run_analysis.R that does the following:
* Read in measurement labels from features.txt.
* List out a logical vector containing whether a column is of mean or standard deviation from measurement labels.
* Read in training data set and extract only mean and standard deviation columns according to the logical vector.
* Read in test data set and extract only mean and standard deviation columns according to the logical vector.
* Bind the training and test data sets together with rbind().
* Update the column names of the data set
* Read in activity labels from y_train.txt
* Read in activity labels from y_test.txt
* Bind the activity labels from training and test data sets together with rbind().
* Read in activity names from activity_labels.txt.
* Merge activity labels and names while preserving the original labels' order.
* Bind the data set with activity names with cbind().
* Update column name of the data set.
* Read in subject from subject_test.txt.
* Read in subject from subject_train.txt.
* Bind the subject list to the data set
* Create an independent data set with the average of each variable for each activity and each subject
