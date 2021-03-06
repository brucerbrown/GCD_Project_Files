#CODEBOOK

Variables Overview

The variables contained in the original dataset were collected from 30 volunteers ranging in age from 19-48. Each person performed the following six activities wearing a smartphone (Galaxy S II) on their waist:
    
    Walking: coded as WALKING
    Walking Upstairs: coded as WALKING_UPSTAIRS
    Walking Downstairs: coded as WALKING_DOWNSTAIRS
    Sitting: coded as SITTING
    Standing: coded as STANDING
    Laying: coded as LAYING

Using the smartphone's embedded accelerometer and gyroscope, the team captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data, and 30% were used for the test data.
File Overview:

The dataset includes the following files:
    
    README.txt: study information and license documentation
    features_info.txt: Shows information about the variables used on the feature vector
    features.txt: List of all features
    activity_labels.txt: Links the class labels with their activity name
    train/X_train.txt: Training set
    train/y_train.txt: Training labels
    test/X_test.txt: Test set
    test/y_test.txt: Test labels

Train data files are described below. Equivalent Test data files having same properties are included in the data set.
    
    train/subject_train.txt: Each row identifies the subject who performed the activity for each 
    window sample; Its range is from 1 to 30
    
    train/Inertial Signals/total_acc_x_train.txt: The acceleration signal from the 
    smartphone accelerometer X axis in standard gravity units 'g'
    
    train/Inertial Signals/total_acc_y_train.txt: The acceleration signal from the 
    smartphone accelerometer Y axis in standard gravity units 'g
    
    train/Inertial Signals/total_acc_z_train.txt: The acceleration signal from the 
    smartphone accelerometer Z axis in standard gravity units 'g
    
    train/Inertial Signals/body_acc_x_train.txt: The body acceleration signal obtained 
    by subtracting the gravity from the total acceleration
    
    train/Inertial Signals/body_gyro_x_train.txt: The angular velocity vector measured 
    by the gyroscope for each window sample; The units are radians/second

Features Overview:
    
    t: Time domain
    f: Frequency domain
    mean: Average for the preceeding descriptors in the names.
    std: Standard Deviation for the preceeding descriptors in the names.
    X,Y,Z: Denotes 3-axial signals in the X, Y, and Z Directions
    BodyAcc: Measures the acceleration signal for the body of the participant.
    GravityAcc: Measures the gravity acceleration signals.
    BodyAccJerk: Measures the body linear acceleration jerk signals.
    BodyGyroJerk: Measures the angular velocity jerk signals.
    BodyAccMag: The magnitude of body acceleration signals.
    GravityAccMag: Magnitude of body acceleration jerk signals.
    BodyAccJerkMag: Magnitude of body acceleration jerk signals.
    BodyGyroMag: Magnitude of body angular velocity signals.
    BodyGyroJerkMag: Magnitude of angular velocity jerk signals.
    Activity: Class labels of the activity subjects engaged in.
    SubjectID: Subject identifier for each of the participants



Cleaning and Normalizing Data

The script 'run_analysis.R' transforms the original data into a summary dataset of means by subject and activity.
See README.md for a complete description of the functionality of run_analysis.R

Reference on the Dataset:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 
