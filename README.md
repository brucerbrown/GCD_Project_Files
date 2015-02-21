# GCD_Project_Files
Project for Getting and Cleaning Data Coursera Course

This project creates one R script, run_analysis.R, which performs the following tasks:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 

From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Once executed, the resulting dataset is produced as MeanCombinedData.txt.

To accomplish these steps, run_analysis.R must do the following:

1. Install required packages, "data.table" and "reshape2".
2. Load subject datasets.
3. Merge subject datasets and assign a column name, "SUBJECTS".
4. Load X values datasets.
5. Merge X values datasets.
6. Load Y values datasets.
7. Merge Y values datasets.
8. Load features data.
9. Apply feature names to X values.
10. Load activity labels and apply to Y values
11. Subset X by mean and std.
12. Combine datasets.
13. Write data as .txt file ("CombinedData.txt").
14. Calciulate mean of variables by subject.
15. Write new data as .txt file (MeanCombinedData.txt").



