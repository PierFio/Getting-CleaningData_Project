Reading files
-------------
We begin by reading the data from the different files provided in the archive:
- The list of the variable names ("features") recorded for each observation in file 
"/features.txt"
- The encoding of activities in integer in file "/activity_labels.txt". 
- For the 'test' phase, we get the subject id (file "/test/subject_test.txt"), 
its activity (file "/test/y_test.txt", and the associated observations 
(file "/test/X_test.txt")
- For the 'train' phase, we do the same.

Merging the test and train datasets
-----------------------------------
After acquiring information from files, first, we label the two datasets 'test_data' 
and 'train_data' with the feature descriptors (each observation contains data for each 
feature).

**NB: This labelling meets the requirement 4** (descriptive variable names).

We only need to keep data that correspond to means or standard deviations.
From the vector of variable names, we compute a logical vector that is TRUE for variables 
concerning a mean or a standard deviation based on a regexp match. We use this logical 
vector to subset the respective data.frames in two "selected" dataframes that
only contains the selected variables respectively for the test phase and the train phase.

**NB : This selection meets requirement 2**
(taking into account only the measurements on the mean and standard deviation).

Then we add the subject identity and its activity information to the data for the 'test' 
phase. We label the corresponding variables. The same is done for the 'train' phase.
To finish we merge both data.frames together in a "complete" dataframe.

**NB : This enables meeting requirement 3** (descriptive activity names).
**NB : The "complete" data.frame is the objective defined in requirement 1.**

Computing a summary dataframe
------------------------------
We can now compute the mean for each of the selected variables, grouped by activity 
and by subject using the aggregate function. This produces the data.frame "result".

**NB : The "result" dataframe is the objective defined in requirement 5.**

