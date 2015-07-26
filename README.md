## Madhu Rajan 

## 07/25/2015 
 

# run_Analysis.r 
File Description: 
 

# This script will perform the following steps on the UCI HAR Dataset downloaded from  

# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
<<<<<<< HEAD

# Step 1 
  
- Combine the values from the **subject_test** and **subject_train** files to create a single TestSubject column that identifies the study participant.
	
- Combine the values from the **Y_test** and **Y_train** data to create a single Activity column that indicates that activity class (for instance, walking or sitting).
	
- Combine the values from the **X_test** and **X_train** files to create additional variable columns, one column for each measurement and calculation included in the data set (561 variable columns total, in the initial combined data set; 563 columns including the TestSubject and Activity columns).

# Step 2
 
- Read the features from features.txt and filter it to only leave features that are either means ("mean()") or standard deviations ("std()"). 
 
- Read the activity from activity_labels.txt.
 - Assign friendly names to both feature and activity data tables
 
# Step 3
 
- Combine activity, subject and feature data tables into one data set.

# Step 4 
  
- Calculate the average of each feature variable for each activity and each subject 
    and store it in a data set. 
######################################################################################################################################################## 
=======
# Step 1 
  - Combine the values from the **subject_test** and **subject_train** files to create a single TestSubject column that         identifies the study participant.
	- Combine the values from the **Y_test** and **Y_train** data to create a single Activity column that indicates that activity class (for instance, walking or sitting).
	- Combine the values from the **X_test** and **X_train** files to create additional variable columns, one column for each measurement and calculation included in the data set (561 variable columns total, in the initial combined data set; 563 columns including the TestSubject and Activity columns).
# Step 2
 - Read the features from features.txt and filter it to only leave features that are either means ("mean()") or standard deviations ("std()"). 
 - Read the activity from activity_labels.txt.
 - Assign friendly names to both feature and activity data tables
 # Step 3
 - Combine activity, subject and feature data tables into one data set
# Step 4 
  - Calculate the average of each feature variable for each activity and each subject 
    and store it in a data set.
 ########################################################################################################## 
>>>>>>> origin/master
