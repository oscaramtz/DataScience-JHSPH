#Assignment __Getting and Cleaning Data
## Keeping just the variables of interest mean() and std() variables
library(tidyr)

var_labels <- read.table("./data/UCI HAR Dataset/features.txt")
kept <- c(rep("NULL", 561)); kept_var <- grep(var_labels[,2], pattern = "std[()]|mean[()]" ); kept[kept_var] <- "numeric"


## Structuring the data frame and setting names
  raw_set_train <- read.table("./data/UCI HAR Dataset/train/x_train.txt", colClasses = kept)
  raw_set_test <- read.table("./data/UCI HAR Dataset/test/x_test.txt", colClasses = kept)

### Setting up var names
      colnames(raw_set_train) <- var_labels[kept_var,2]
      colnames(raw_set_test) <- var_labels[kept_var,2]

## Combine the activities classification and subject ID
activities_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names = "activity.code")
activities_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names = "activity.code")

setactivity_train <- cbind(raw_set_train, activities_train)
setactivity_test <- cbind(raw_set_test, activities_test)


subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = "user.code", colClasses = "numeric" )
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = "user.code", colClasses = "numeric")

set_train <- cbind(subject_train, setactivity_train)
set_test <- cbind(subject_test, setactivity_test)

binded_set <- rbind(set_train, set_test)

## reading activities labels
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", col.names = c("activity.code", "activity"))
activity_labels$activity <- tolower(sub(activity_labels$activity, pattern = "_", replacement = " "))

## labeling activities
complete_set1 <- merge(activity_labels ,binded_set, by.x = "activity.code",by.y = "activity.code")




### Tidying the data.framee
complete_set <- complete_set1[,-1] ## Drop the unused column


df_summary <- complete_set %>%
  gather(variables, value, -c(user.code, activity)) %>%
  group_by(activity, user.code, variables) %>%
  summarize(avg_variables = mean(value)) %>%
  spread(activity, avg_variables)

head(df_summary)

write.table(df_summary, file = "Activity_Recognition_df_summary.txt", row.names = FALSE)

