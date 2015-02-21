# Unzip data files at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# to R working directory. Creates the folder "UCI HAR Dataet.

# Install required packages "data.table" and "reshape2"
if (!require("data.table")) {install.packages("data.table")
require("data.table")}

if (!require("reshape2")) {install.packages("reshape2")
require("reshape2")}

# Load subject datasets

subject.test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject.train <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Merge subject datasets and assign column name

SUBJECTS <- rbind(subject.test, subject.train)
colnames(SUBJECTS) <- "Subject"

# Load X values datasets

X.test <- read.table('UCI HAR Dataset/test/X_test.txt')
X.train <- read.table("UCI HAR Dataset/train/X_train.txt")

# Merge X values datasets

X <- rbind(X.test, X.train)

# Load Y values datasets

Y.test <- read.table('UCI HAR Dataset/test/y_test.txt')
Y.train <- read.table('UCI HAR Dataset/train/y_train.txt')

# Merge Y values datasets

Y <- rbind(Y.test, Y.train)

# Load features data

features <- read.table("UCI HAR Dataset/features.txt")
feature_names <- features [,2]

# Apply feature names to X values

colnames (X) <- feature_names

# Load activity labels and apply to Y values

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
labels <- merge(Y, activity_labels, by=1)[,2]

# Subset X by mean and std

X <- X[,grepl("mean|std", feature_names)]

# Combine datasets

data <- cbind(SUBJECTS, labels, X)

# Write data as .txt file

write.table(data, file="CombinedData.txt",row.name=FALSE)

# Calculate mean of varibles by subject

data = melt(data, id.var = c("Subject", "labels"))
data = dcast(data , Subject + labels ~ variable, mean)

# Write new data as .txt file

write.table(data, file="MeanCombinedData.txt",row.name=FALSE)

