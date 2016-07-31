# Code Book

This document describes the logic of code inside "run_analysis.R" file and lists the variables in the resulting dataset.

My script file does many tasks. Below is a list of the tasks:

* Initilization of libraries and paths
* Getting input data from the Internet
* Loading datasets and supplementary data into memory
* Leaving out needed features
* Adding subjects and activities, merging datasets
* Writing final data to CSV-files

## Initilization of libraries and paths

Here I load libraries, set up path constants and initilize working directories
To avoid repetitive code with directories I used lapply function

## Getting input data from the Internet

Then I load zip-file and unzip it in "raw data" directory.
Of course before doing that I clear all the old files which might been left.

## Loading datasets and supplementary data into memory

Then I examined the content of the data and found several components of it:

* the observations itself divided into train and test files
* features
* activities
* subjects

Every item is loaded into its own variable for puprose of future usage

## Leaving out needed features

I use grep with a simple regular expression to filter out needed features.
Those who have "std" and "mean" substrings.
Then I subselect them from the datasets and add correct labels form the features file.

## Adding subjects and activities, merging datasets

I add a column with subject id.
Then merge two datasets into single one.
Finally it is easy to add activities names.

The most challenging task was to calculate all means (averages).
I did that using "summarise_each" function which I found using Google search. It took some time.

Also I renamed variables in averaged file by adding "_average" suffix.

## Writing final data to CSV

Checks if the directory "tidy_data" exists, then creates it and saves two files:

* "first.csv" is a detailed file with full list of observations
* "second.csv" is a summarised one with averaged variables

# Variables list

I order to save space here I created two files with variables list:

* "features_first.txt"
* "features_second.txt"