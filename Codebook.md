##Codebook for tidy dataset.txt

###Original Dataset
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


###Data Transformation
The original data set contains results of experiments carried by 30 volunteers - 21 for generating training data and 9 for generating test data, performing six activities wearing a Samsung Galaxy S II smartphone. Senor signal measurements were taken from the smartphone's embedded accelerometer and gyroscope on 561 features with time and frequency domain variables. The original dataset was segregated into 8 files
- README.txt: Overview of the experiment
- features_info.txt: Information on the feature variables
- features.txt: List of all features measured, including the feature code and description
- activity_labels.txt: List of activity performed, including activity code and description
- train/X_train.txt: Measurements of each feature taken from the training data volunteers
- train/y_train.txt: Feature code corresponding to the measurement from the x_train.txt file
- test/X_test.txt: Measurements of each feature taken from the test data volunteers
- test/y_test.txt: Feature code corresponding to the measurement from the x_test.txt file

This dataset was transformed using the R script `run_analysis.R` as follows

1. Merging the training and the test datasets
2. Extracting only mean and standard deviation measurements
3. Replacing the activity code with activity description
4. Renaming the original measurement variables with descriptive names (according to rules from JL lectures & TA explainations given on the course forum)
5. Averaging every measurement variable for each activity and subject
6. Creating a new text file from the transformed dataset

###Variables Description
| Variable Name | Description |
| --- | --- |
| subject | Identification number (from 1 to 30) of the subject who performed the activity. |
| activity | Activity performed by the subject. The activity descriptions are listed below together with the original activity code for reference <ul><li> WALKING - 1</li><li> WALKING UPSTAIRS - 2</li><li> WALKING DOWNSTAIRS - 3</li><li> SITTING - 4</li><li> STANDING - 5</li><li> LAYING - 6</li></ul>|
| timebodyaccelerationmeanx | Average mean value (in Hertz) of the body acceleration signal, from the time domain, in direction X, for the subject & activity |
| timebodyaccelerationmeany | Average mean value (in Hertz) of the body acceleration signal, from the time domain, in direction Y, for the subject & activity |
| timebodyaccelerationmeanz | Average mean value (in Hertz) of the body acceleration signal, from the time domain, in direction Z, for the subject & activity |
| timebodyaccelerationstandardeviationx | Average standard deviation (in Hertz) of the body acceleration signal, from the time domain, in direction X, for the subject & activity |
| timebodyaccelerationstandardeviationy | Average standard deviation (in Hertz) of the body acceleration signal, from the time domain, in direction Y, for the subject & activity |
| timebodyaccelerationstandardeviationz | Average standard deviation (in Hertz) of the body acceleration signal, from the time domain, in direction Z, for the subject & activity |
| timegravityaccelerationmeanx | Average mean value (in Hertz) of the gravity acceleration signal, from the time domain, in direction X, for the subject & activity |
| timegravityaccelerationmeany | Average mean value (in Hertz) of the gravity acceleration signal, from the time domain, in direction Y, for the subject & activity |
| timegravityaccelerationmeanz | Average mean value (in Hertz) of the gravity acceleration signal, from the time domain, in direction Z, for the subject & activity |
| timegravityaccelerationstandardeviationx | Average standard deviation (in Hertz) of the gravity acceleration signal, from the time domain, in direction X, for the subject & activity |
| timegravityaccelerationstandardeviationy | Average standard deviation (in Hertz) of the gravity acceleration signal, from the time domain, in direction Y, for the subject & activity |
| timegravityaccelerationstandardeviationz | Average standard deviation (in Hertz) of the gravity acceleration signal, from the time domain, in direction Z, for the subject & activity |
| timebodyaccelerationjerkmeanx | Average mean value (in Hertz) of the body acceleration jerk signal, from the time domain, in direction X, for the subject & activity |
| timebodyaccelerationjerkmeany | Average mean value (in Hertz) of the body acceleration jerk signal, from the time domain, in direction Y, for the subject & activity |
| timebodyaccelerationjerkmeanz | Average mean value (in Hertz) of the body acceleration jerk signal, from the time domain, in direction Z, for the subject & activity |
| timebodyaccelerationjerkstandardeviationx | Average standard deviation (in Hertz) of the body acceleration jerk signal, from the time domain, in direction X, for the subject & activity |
| timebodyaccelerationjerkstandardeviationy | Average standard deviation (in Hertz) of the body acceleration jerk signal, from the time domain, in direction Y, for the subject & activity |
| timebodyaccelerationjerkstandardeviationz | Average standard deviation (in Hertz) of the body acceleration jerk signal, from the time domain, in direction Z, for the subject & activity |
| timebodygyroscopemeanx | Average mean value (in Hertz) of the body gyroscope signal, from the time domain, in direction X, for the subject & activity |
| timebodygyroscopemeany | Average mean value (in Hertz) of the body gyroscope signal, from the time domain, in direction Y, for the subject & activity |
| timebodygyroscopemeanz | Average mean value (in Hertz) of the body gyroscope signal, from the time domain, in direction Z, for the subject & activity |
| timebodygyroscopestandardeviationx | Average standard deviation (in Hertz) of the body gyroscope signal, from the time domain, in direction X, for the subject & activity |
| timebodygyroscopestandardeviationy | Average standard deviation (in Hertz) of the body gyroscope signal, from the time domain, in direction Y, for the subject & activity |
| timebodygyroscopestandardeviationz | Average standard deviation (in Hertz) of the body gyroscope signal, from the time domain, in direction Z, for the subject & activity |
| timebodygyroscopejerkmeanx | Average mean value (in Hertz) of the body gyroscope jerk signal, from the time domain, in direction X, for the subject & activity |
| timebodygyroscopejerkmeany | Average mean value (in Hertz) of the body gyroscope jerk signal, from the time domain, in direction Y, for the subject & activity |
| timebodygyroscopejerkmeanz | Average mean value (in Hertz) of the body gyroscope jerk signal, from the time domain, in direction Z, for the subject & activity |
| timebodygyroscopejerkstandardeviationx | Average standard deviation (in Hertz) of the body gyroscope jerk signal, from the time domain, in direction X, for the subject & activity |
| timebodygyroscopejerkstandardeviationy | Average standard deviation (in Hertz) of the body gyroscope jerk signal, from the time domain, in direction Y, for the subject & activity |
| timebodygyroscopejerkstandardeviationz | Average standard deviation (in Hertz) of the body gyroscope jerk signal, from the time domain, in direction Z, for the subject & activity |
| timebodyaccelerationmagnitutemean | Average mean value (in Hertz) of the body acceleration signal magnitude, from the time domain, for the subject & activity |
| timebodyaccelerationmagnitutestandardeviation | Average standard deviation (in Hertz) of the body acceleration signal magnitude, from the time domain, for the subject & activity |
| timegravityaccelerationmagnitutemean | Average mean value (in Hertz) of the gravity acceleration signal magnitude, from the time domain, for the subject & activity |
| timegravityaccelerationmagnitutestandardeviation | Average standard deviation (in Hertz) of the gravity acceleration signal magnitude, from the time domain, for the subject & activity |
| timebodyaccelerationjerkmagnitutemean | Average mean value (in Hertz) of the body acceleration jerk signal magnitude, from the time domain, for the subject & activity |
| timebodyaccelerationjerkmagnitutestandardeviation | Average standard deviation (in Hertz) of the body acceleration jerk signal magnitude, from the time domain, for the subject & activity |
| timebodygyroscopemagnitutemean | Average mean value (in Hertz) of the body gyroscope signal magnitude, from the time domain, for the subject & activity |
| timebodygyroscopemagnitutestandardeviation | Average standard deviation (in Hertz) of the body gyroscope signal magnitude, from the time domain, for the subject & activity |
| timebodygyroscopejerkmagnitutemean | Average mean value (in Hertz) of the body gyroscope jerk signal magnitude, from the time domain, for the subject & activity |
| timebodygyroscopejerkmagnitutestandardeviation | Average standard deviation (in Hertz) of the body gyroscope jerk signal magnitude, from the time domain, for the subject & activity |
| frequencybodyaccelerationmeanx | Average mean value (in Hertz) of the body acceleration signal, from the frequency domain, in direction X, for the subject & activity |
| frequencybodyaccelerationmeany | Average mean value (in Hertz) of the body acceleration signal, from the frequency domain, in direction Y, for the subject & activity |
| frequencybodyaccelerationmeanz | Average mean value (in Hertz) of the body acceleration signal, from the frequency domain, in direction Z, for the subject & activity |
| frequencybodyaccelerationstandardeviationx | Average standard deviation (in Hertz) of the body acceleration signal, from the frequency domain, in direction X, for the subject & activity |
| frequencybodyaccelerationstandardeviationy | Average standard deviation (in Hertz) of the body acceleration signal, from the frequency domain, in direction Y, for the subject & activity |
| frequencybodyaccelerationstandardeviationz | Average standard deviation (in Hertz) of the body acceleration signal, from the frequency domain, in direction Z, for the subject & activity |
| frequencybodyaccelerationjerkmeanx | Average mean value (in Hertz) of the body acceleration jerk signal, from the frequency domain, in direction X, for the subject & activity |
| frequencybodyaccelerationjerkmeany | Average mean value (in Hertz) of the body acceleration jerk signal, from the frequency domain, in direction Y, for the subject & activity |
| frequencybodyaccelerationjerkmeanz | Average mean value (in Hertz) of the body acceleration jerk signal, from the frequency domain, in direction Z, for the subject & activity |
| frequencybodyaccelerationjerkstandardeviationx | Average standard deviation (in Hertz) of the body acceleration jerk signal, from the frequency domain, in direction X, for the subject & activity 
| frequencybodyaccelerationjerkstandardeviationy | Average standard deviation (in Hertz) of the body acceleration jerk signal, from the frequency domain, in direction Y, for the subject & activity 
| frequencybodyaccelerationjerkstandardeviationz | Average standard deviation (in Hertz) of the body acceleration jerk signal, from the frequency domain, in direction Z, for the subject & activity 
| frequencybodygyroscopemeanx | Average mean value (in Hertz) of the body gyroscope signal, from the frequency domain, in direction X, for the subject & activity |
| frequencybodygyroscopemeany | Average mean value (in Hertz) of the body gyroscope signal, from the frequency domain, in direction Y, for the subject & activity |
| frequencybodygyroscopemeanz | Average mean value (in Hertz) of the body gyroscope signal, from the frequency domain, in direction Z, for the subject & activity |
| frequencybodygyroscopestandardeviationx | Average standard deviation (in Hertz) of the body gyroscope signal, from the frequency domain, in direction X, for the subject & activity |
| frequencybodygyroscopestandardeviationy | Average standard deviation (in Hertz) of the body gyroscope signal, from the frequency domain, in direction Y, for the subject & activity |
| frequencybodygyroscopestandardeviationz | Average standard deviation (in Hertz) of the body gyroscope signal, from the frequency domain, in direction Z, for the subject & activity |
| frequencybodyaccelerationmagnitutemean | Average mean value (in Hertz) of the body acceleration signal magnitude, from the frequency domain, for the subject & activity |
| frequencybodyaccelerationmagnitutestandardeviation | Average standard deviation (in Hertz) of the body acceleration signal magnitude, from the frequency domain, for the subject & activity |
| frequencybodyaccelerationjerkmagnitutemean | Average mean value (in Hertz) of the body acceleration jerk signal magnitude, from the frequency domain, for the subject & activity |
| frequencybodyaccelerationjerkmagnitutestandardeviation | Average standard deviation (in Hertz) of the body acceleration jerk signal magnitude, from the frequency domain, for the subject & activity |
| frequencybodygyroscopemagnitutemean | Average mean value (in Hertz) of the body gyroscope signal magnitude, from the frequency domain, for the subject & activity |
| frequencybodygyroscopemagnitutestandardeviation | Average standard deviation (in Hertz) of the body gyroscope signal magnitude, from the frequency domain, for the subject & activity |
| frequencybodygyroscopejerkmagnitutemean | Average mean value (in Hertz) of the body gyroscope jerk signal magnitude, from the frequency domain, for the subject & activity |
| frequencybodygyroscopejerkmagnitutestandardeviation | Average standard deviation (in Hertz) of the body gyroscope jerk signal magnitude, from the frequency domain, for the subject & activity |
