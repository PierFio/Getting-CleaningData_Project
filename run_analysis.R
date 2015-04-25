library(stringr, dplyr)

base_dir <- "UCI HAR Dataset"

# We read the data from the different files provided in the archive

# > The list of the variable names ("features") recorded for each observation
feature_desc <- read.table(str_c(base_dir, "/features.txt"), stringsAsFactors = FALSE)

# > The coding of activities in integer
activ_desc <- read.table(str_c(base_dir, "/activity_labels.txt"), stringsAsFactors = FALSE)

# > For the 'test' phase, we get the subject id, its activity, and the observations associated
test_subj <- read.table(str_c(base_dir, "/test/subject_test.txt"))
test_activ <- read.table(str_c(base_dir, "/test/y_test.txt"))
test_data <- read.table(str_c(base_dir, "/test/X_test.txt"))

# > For the 'train' phase, we get the subject id, its activity, and the observations associated
train_subj <- read.table(str_c(base_dir, "/train/subject_train.txt"))
train_activ <- read.table(str_c(base_dir, "/train/y_train.txt"))
train_data <- read.table(str_c(base_dir, "/train/X_train.txt"))

# After acquiring information from files,

# First, we label the two datasets 'test_data' and 'train_data' with the feature descriptors
# (each observation contains data for each feature)
names(test_data) <- feature_desc[,2]
names(train_data) <- feature_desc[,2]
# NB: this labelling meets the requirement 4 (descriptive variable names) 

# We only need to keep data that correspond to means or standard deviations
# From the vector of variable names, we compute a logical vector that is TRUE for variables 
# concerning a mean or a standard deviation based on a regexp match
test_select <- grepl("*mean*", names(test_data))
test_select <- test_select | grepl("*std*", names(test_data))
train_select <- grepl("*mean*", names(train_data))
train_select <- train_select | grepl("*std*", names(train_data))
# And use this logical vector to subset the respective data.frames in two "selected" data.frames that
# only contains the selected variables
selected_test_var = test_data[test_select]
selected_train_var = train_data[train_select]
# NB : This selection meets requirement 2 (only the measurements on the mean and standard deviation)

# Then we add the subject identity and its activity information to the data for the 'test' phase,
test_frame <- cbind(test_subj, test_activ, selected_test_var)
names(test_frame)[1] <- 'Subject'
names(test_frame)[2] <- 'Activity'

# And we do the same for the 'train' phase
train_frame <- cbind(train_subj, train_activ, selected_train_var)
names(train_frame)[1] <- 'Subject'
names(train_frame)[2] <- 'Activity'

# To finish we merge both data.frames together
complete <- rbind(test_frame, train_frame)

# And add some ordering
complete <- complete[order(complete$Activity, complete$Subject),]
# Activities are finally labelled according to the encoding of Activities
complete$Activity <- factor(complete$Activity, levels = activ_desc[,1], labels = activ_desc[,2])
# NB : this enables meeting requirement 3 (descriptive activity names)
# NB : The "complete" data.frame is the objective defined in requirement 1

# As we intend to use Subject and Activity to group observations, we need to transform them into factors.
# This has been previously done concerning the activity, so we only need to do it for the subject
# variable here.
complete$Subject <- factor(complete$Subject)

# We can now compute the mean for each of the selected variables by activity and by subject
result <- aggregate(complete, by = list(Subject=complete$Subject, Activity=complete$Activity), 
                    FUN = function(x){sum(as.numeric(x))})
# Previous variables Subject and Activity are not meaningful anymore, so we suppress them
result[3] <- result[4] <- NULL
# NB : The "result" data.frame is the objective defined in requirement 5

# We could now write the output file
write.table(result, file = "result.txt", row.names = FALSE)
