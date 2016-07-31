# --------------------------------------
# Initilization of libraries and paths
# --------------------------------------

## Load libraries
library(stringr)
library(data.table)
library(dplyr)

## Set external URL for the dataset
src_link <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

## Set up working directories paths
raw_data_dir <- "./raw_data"
tidy_data_dir <- "./tidy_data"

## Initilize directories
lapply(c(raw_data_dir, tidy_data_dir), function (x) {
  if (dir.exists(x)) unlink(x, recursive = TRUE, force = TRUE)
  dir.create(x)
})

## Set path to save the dataset
dst_path <- str_c(raw_data_dir, "/data.zip")
if (file.exists(dst_path)) file.remove(dst_path)

# --------------------------------------
# Getting input data from the Internet
# --------------------------------------

## Download and unzip input dataset
download.file(src_link, dst_path, method = "curl", quiet = TRUE)
unzip(dst_path, exdir = raw_data_dir)

## Set up paths for the data files
train_file_x <- str_c(raw_data_dir, "/UCI HAR Dataset/train/X_train.txt")
train_file_y <- str_c(raw_data_dir, "/UCI HAR Dataset/train/y_train.txt")
test_file_x <- str_c(raw_data_dir, "/UCI HAR Dataset/test/X_test.txt")
test_file_y <- str_c(raw_data_dir, "/UCI HAR Dataset/test/y_test.txt")

# -----------------------------------------------------
# Loading datasets and supplementary data into memory
# -----------------------------------------------------

## Load train and test sets
train_data <- fread(train_file_x, sep = " ", header = FALSE)
test_data <- fread(test_file_x, sep = " ", header = FALSE)

## Load features and set names for datasets
features <- fread(str_c(raw_data_dir, "/UCI HAR Dataset/features.txt"), sep = " ", header = FALSE)

## Load labels
train_labels <- fread(train_file_y, sep = " ", header = FALSE)
test_labels <- fread(test_file_y, sep = " ", header = FALSE)

## Load activities
activities <- fread(str_c(raw_data_dir, "/UCI HAR Dataset/activity_labels.txt"), sep = " ", header = FALSE)
names(activities) <- c("activity_id", "activity_name")

## Load subjects
subjects_train <- fread(str_c(raw_data_dir, "/UCI HAR Dataset/train/subject_train.txt"), sep = " ", header = FALSE)
subjects_test <- fread(str_c(raw_data_dir, "/UCI HAR Dataset/test/subject_test.txt"), sep = " ", header = FALSE)
names(subjects_train) <- "subject_id"
names(subjects_test) <- "subject_id"

# -----------------------------------------------
# Leaving out needed features and adding labels
# -----------------------------------------------

## Find out needed features
needed_features_indexes <- features[grep("(mean|std)\\(\\)", features$V2),]$V1

## Leave only needed features
train <- select(train_data, needed_features_indexes)
test <- select(test_data, needed_features_indexes)

## Add labels to datasets
train$activity_id <- train_labels
test$activity_id <- test_labels

# --------------------------------------------------
# Adding subjects and activities, merging datasets
# --------------------------------------------------

## Add subjects to datasets
train$subject_id <- subjects_train
test$subject_id <- subjects_test

## Merge 2 datasets into 1
merged_data <- rbind(train, test)

## Add activities names (labels)
merged_labeled <- inner_join(merged_data, activities, by = "activity_id")
merged_labeled$activity_name <- as.factor(merged_labeled$activity_name)
merged_averaged <- merged_labeled %>% group_by(activity_id, activity_name, subject_id) %>% 
  summarise_each(funs(mean), 1:66)

## Set correct names for the columns
names(merged_labeled)[1:66] <- tolower(features[needed_features_indexes]$V2)
names(merged_averaged)[4:69] <- tolower(features[needed_features_indexes]$V2)
names(merged_averaged)[4:69] <- lapply(names(merged_averaged)[4:69], function(x) {x <- str_c(x, "_average")})

# ---------------------------------
# Writing final data to CSV-files
# ---------------------------------

## Save datasets
tidy_file_1 <- str_c(tidy_data_dir, "/first.csv")
tidy_file_2 <- str_c(tidy_data_dir, "/second.csv")
if (file.exists(tidy_file_1)) file.remove(tidy_file_1)
if (file.exists(tidy_file_2)) file.remove(tidy_file_2)
write.csv(merged_labeled, tidy_file_1)
write.csv(merged_averaged, tidy_file_2)