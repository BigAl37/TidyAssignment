==================================================================
Run Analysis on Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Anas Al-Rez.
John Hopkins University
==================================================================

The data for my analysis has been provided by [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

I have merged the test and training data, tidied via various R functions and then produced a single tidy summary file of the mean for the std, mean of the various x values, by the subject and activity.

run_analysis.R
=================
Merges the test and training data to create a new data set.
Then it extracts only the measurements on the mean and standard deviation for each measurement.
Names the columns with descriptive names.
Creates an additional subject and activities column which appropriately name the variables.
Finally, create a new tidy.txt dataset that summarises the various variables by subject and activities.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'Codebook.MD'

- 'tidy.txt'

- 'run_analysis.R'

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
