#Load data.table package
library(data.table)

#Download zipfile from url provided to local working directory
#Extract folders & files to the same sub-directory of the zipfile (/UCI HAR Dataset/ )
src_url<-"http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(src_url,destfile = "./Dataset.zip")
unzip("./Dataset.zip")

#Read the activity and features files into data.tables
activity<-fread("./UCI HAR Dataset/activity_labels.txt")
features<-fread("./UCI HAR Dataset/features.txt")

#Since most measure variables are to be excluded from the final dataset, I decided to perform task 2 (find mean & std variables) first,
#so that only these fields gets included when merging the training and test sets together (task 1)

#Assignment Task 2 - Select mean and standard deviation measures
# My interpretation of the task 2 is to select only mean() & std() measures and so I have not included variables like XXX-meanFreq() and angle variables eg. angle(tBodyAccJerkMean),gravityMean)
selvar<-subset(features, grepl("mean()", features$V2, fixed=TRUE) | grepl("std()", features$V2, fixed=TRUE))

#Assignment Task 1 - Merge training and test datasets
#Read the training subject, activity and data files, create a training data.table with the subject, activity and mean/std variables
#Using fread crashes RStudio so I had to first read the tables as data.frames and then convert them to data.table
traindata<-read.table("./UCI HAR Dataset/train/X_train.txt")
trainact<-read.table("./UCI HAR Dataset/train/y_train.txt")
trainsubj<-read.table("./UCI HAR Dataset/train/subject_train.txt")
trainset<-data.table(subject=unlist(trainsubj), activity=unlist(trainact), traindata[,selvar$V1])  #Inc Step 2

#Do the same thing for the test datasets
testdata<-read.table("./UCI HAR Dataset/test/X_test.txt")
testact<-read.table("./UCI HAR Dataset/test/y_test.txt")
testsubj<-read.table("./UCI HAR Dataset/test/subject_test.txt")
testset<-data.table(subject=unlist(testsubj), activity=unlist(testact), testdata[,selvar$V1])

#Merge the test and training data.tables together
combset<-rbindlist(list(trainset,testset))

#Assignment Task 3 - Replace activity code with descriptive names
#Convert the activity code in the combined table into a factor, using the activity labels from the activity.txt
combset$activity<-factor(combset$activity,activity$V1, activity$V2)

#Assignment Task 4 - Label the dataset with descriptive names
#I'm applying rules from the *Editing text variable* lecture and guidance from TAs in course forums
# - Descriptive - detailed abbreviation expansion rules given below
# - No underscores, dots or spaces - I've included brackets () and dash -
# - All lowercase
#Instead of just replacing the columns names in the combined dataset, my approach is to first add a new column to the original variable
#name table (*selvar* which has already been filtered to retain only means & std variables) to store the descriptive name.
#This allows me to get back the original names easily if ever I needed to.
#I then use the longer names to replace the column names in the combined dataset

selvar<-selvar[,desc:=V2]	#Add a new column for the long variable name
selvar$desc<-gsub('^t', 'time', selvar$desc) #Expand abbreviations - names starting with t to time
selvar$desc<-gsub('^f', 'frequency', selvar$desc) #Expand abbreviations - names starting with f to frequency
selvar$desc<-gsub('Acc', 'acceleration', selvar$desc) #Expand abbreviations - Acc to acceleration
selvar$desc<-gsub('Gyro', 'gyroscope', selvar$desc) #Expand abbreviations - Gyro to gyroscope
selvar$desc<-gsub('Mag', 'magnitute', selvar$desc) #Expand abbreviations - Mag  to magnitute
selvar$desc<-gsub('std', 'standardeviation', selvar$desc) #Expand abbreviations - std  to standarddeviation
selvar$desc<-gsub('BodyBody', 'body', selvar$desc) #Fix duplicated BodyBody mistake to body
selvar$desc<-gsub('-', '', selvar$desc) #Remove dash from name
selvar$desc<-gsub('()', '', selvar$desc, fixed = TRUE) #Remove () from name
selvar$desc<-tolower(selvar$desc) #convert to lowercase
setnames(combset,3:68,selvar$desc)  #Replace measure variable names (col 3-68) with descriptive names

#Assignment Task 5 - Create a new tidy dataset of average measure variable for each subject and activity
#Use the .SD parameter to apply  mean function to all columns, except for the group-by columns (indicated in the by=)
tidyset<-combset[,lapply(.SD, mean), by=list(subject,activity)]
setorder(tidyset,subject,activity)	#sorts the table by subject and activity
write.table(tidyset,file = "./tidy dataset.txt",row.names = FALSE)	#Delimitor character is space, same as the original files
