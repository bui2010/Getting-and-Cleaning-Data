Getting-and-Cleaning-Data
=========================

This repository contains the R script, run_analysis.R, to perform data cleaning for provided Samsung data sets.
The R script run_analysis.R that does the following:
1. Read in measurement labels from features.txt.
2. List out a logical vector containing whether a column is of mean or standard deviation from measurement labels.
3. Read in training data set and extract only mean and standard deviation columns according to the logical vector.
4. Read in test data set and extract only mean and standard deviation columns according to the logical vector.
5. Bind the training and test data sets together with rbind().
6. Update the column names of the data set
7. Read in activity labels from y_train.txt
8. Read in activity labels from y_test.txt
9. Bind the activity labels from training and test data sets together with rbind().
10. Read in activity names from activity_labels.txt.
11. Merge activity labels and names while preserving the original labels' order.
12. Bind the data set with activity names with cbind().
13. Update column name of the data set.
14. Read in subject from subject_test.txt.
15. Read in subject from subject_train.txt.
16. Bind the subject list to the data set
17. Create an independent data set with the average of each variable for each activity and each subject
