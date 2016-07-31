# The data source

* Original datasource is located at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description of the data is located at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data Set Info

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## The data

The dataset includes the following files:

* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

# Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Common features information

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

# Exact variables of the "first.csv" - detailed dataset

"feature_id","feature_name"
"1","tbodyacc-mean()-x"
"2","tbodyacc-mean()-y"
"3","tbodyacc-mean()-z"
"4","tbodyacc-std()-x"
"5","tbodyacc-std()-y"
"6","tbodyacc-std()-z"
"7","tgravityacc-mean()-x"
"8","tgravityacc-mean()-y"
"9","tgravityacc-mean()-z"
"10","tgravityacc-std()-x"
"11","tgravityacc-std()-y"
"12","tgravityacc-std()-z"
"13","tbodyaccjerk-mean()-x"
"14","tbodyaccjerk-mean()-y"
"15","tbodyaccjerk-mean()-z"
"16","tbodyaccjerk-std()-x"
"17","tbodyaccjerk-std()-y"
"18","tbodyaccjerk-std()-z"
"19","tbodygyro-mean()-x"
"20","tbodygyro-mean()-y"
"21","tbodygyro-mean()-z"
"22","tbodygyro-std()-x"
"23","tbodygyro-std()-y"
"24","tbodygyro-std()-z"
"25","tbodygyrojerk-mean()-x"
"26","tbodygyrojerk-mean()-y"
"27","tbodygyrojerk-mean()-z"
"28","tbodygyrojerk-std()-x"
"29","tbodygyrojerk-std()-y"
"30","tbodygyrojerk-std()-z"
"31","tbodyaccmag-mean()"
"32","tbodyaccmag-std()"
"33","tgravityaccmag-mean()"
"34","tgravityaccmag-std()"
"35","tbodyaccjerkmag-mean()"
"36","tbodyaccjerkmag-std()"
"37","tbodygyromag-mean()"
"38","tbodygyromag-std()"
"39","tbodygyrojerkmag-mean()"
"40","tbodygyrojerkmag-std()"
"41","fbodyacc-mean()-x"
"42","fbodyacc-mean()-y"
"43","fbodyacc-mean()-z"
"44","fbodyacc-std()-x"
"45","fbodyacc-std()-y"
"46","fbodyacc-std()-z"
"47","fbodyaccjerk-mean()-x"
"48","fbodyaccjerk-mean()-y"
"49","fbodyaccjerk-mean()-z"
"50","fbodyaccjerk-std()-x"
"51","fbodyaccjerk-std()-y"
"52","fbodyaccjerk-std()-z"
"53","fbodygyro-mean()-x"
"54","fbodygyro-mean()-y"
"55","fbodygyro-mean()-z"
"56","fbodygyro-std()-x"
"57","fbodygyro-std()-y"
"58","fbodygyro-std()-z"
"59","fbodyaccmag-mean()"
"60","fbodyaccmag-std()"
"61","fbodybodyaccjerkmag-mean()"
"62","fbodybodyaccjerkmag-std()"
"63","fbodybodygyromag-mean()"
"64","fbodybodygyromag-std()"
"65","fbodybodygyrojerkmag-mean()"
"66","fbodybodygyrojerkmag-std()"
"67","activity_id"
"68","subject_id"
"69","activity_name"

# Exact variables of the "second.csv" - averaged dataset

Every variable has suffix "_average"

"feature_id","feature_name"
"1","activity_id"
"2","activity_name"
"3","subject_id"
"4","tbodyacc-mean()-x_average"
"5","tbodyacc-mean()-y_average"
"6","tbodyacc-mean()-z_average"
"7","tbodyacc-std()-x_average"
"8","tbodyacc-std()-y_average"
"9","tbodyacc-std()-z_average"
"10","tgravityacc-mean()-x_average"
"11","tgravityacc-mean()-y_average"
"12","tgravityacc-mean()-z_average"
"13","tgravityacc-std()-x_average"
"14","tgravityacc-std()-y_average"
"15","tgravityacc-std()-z_average"
"16","tbodyaccjerk-mean()-x_average"
"17","tbodyaccjerk-mean()-y_average"
"18","tbodyaccjerk-mean()-z_average"
"19","tbodyaccjerk-std()-x_average"
"20","tbodyaccjerk-std()-y_average"
"21","tbodyaccjerk-std()-z_average"
"22","tbodygyro-mean()-x_average"
"23","tbodygyro-mean()-y_average"
"24","tbodygyro-mean()-z_average"
"25","tbodygyro-std()-x_average"
"26","tbodygyro-std()-y_average"
"27","tbodygyro-std()-z_average"
"28","tbodygyrojerk-mean()-x_average"
"29","tbodygyrojerk-mean()-y_average"
"30","tbodygyrojerk-mean()-z_average"
"31","tbodygyrojerk-std()-x_average"
"32","tbodygyrojerk-std()-y_average"
"33","tbodygyrojerk-std()-z_average"
"34","tbodyaccmag-mean()_average"
"35","tbodyaccmag-std()_average"
"36","tgravityaccmag-mean()_average"
"37","tgravityaccmag-std()_average"
"38","tbodyaccjerkmag-mean()_average"
"39","tbodyaccjerkmag-std()_average"
"40","tbodygyromag-mean()_average"
"41","tbodygyromag-std()_average"
"42","tbodygyrojerkmag-mean()_average"
"43","tbodygyrojerkmag-std()_average"
"44","fbodyacc-mean()-x_average"
"45","fbodyacc-mean()-y_average"
"46","fbodyacc-mean()-z_average"
"47","fbodyacc-std()-x_average"
"48","fbodyacc-std()-y_average"
"49","fbodyacc-std()-z_average"
"50","fbodyaccjerk-mean()-x_average"
"51","fbodyaccjerk-mean()-y_average"
"52","fbodyaccjerk-mean()-z_average"
"53","fbodyaccjerk-std()-x_average"
"54","fbodyaccjerk-std()-y_average"
"55","fbodyaccjerk-std()-z_average"
"56","fbodygyro-mean()-x_average"
"57","fbodygyro-mean()-y_average"
"58","fbodygyro-mean()-z_average"
"59","fbodygyro-std()-x_average"
"60","fbodygyro-std()-y_average"
"61","fbodygyro-std()-z_average"
"62","fbodyaccmag-mean()_average"
"63","fbodyaccmag-std()_average"
"64","fbodybodyaccjerkmag-mean()_average"
"65","fbodybodyaccjerkmag-std()_average"
"66","fbodybodygyromag-mean()_average"
"67","fbodybodygyromag-std()_average"
"68","fbodybodygyrojerkmag-mean()_average"
"69","fbodybodygyrojerkmag-std()_average"
