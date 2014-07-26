aggData.txt: Code Book
======================
*(Please, see the table below with **Variables order, name, description, type, possible values, origin**)*

The origin of these dataset is https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

In the "README.txt" of that zip, the dataset is described as "Human Activity Recognition Using Smartphones Dataset".
The experiments have been carried out with a group of 30 volunteers (variable "subject" in the aggData.txt dataset).
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
The results of the experiments (features) has been taken as the original variables in the train and test datasets, the features described in "features.txt" of the mentioned zip.

For generating the "aggData.txt" dataset, the original train and test datasets has been merged into one, adding a column for the activities and another one for the subjects, and selecting only the columns with calculated "mean" or "standard deviation".
The columns has been renamed, replacing special characters.
The numeric values in the variable "activity", using the list in activity_labels.txt, has been converted to strings.
For each feature variable, and grouping by subject and activity, the average has been calculated. Indicating this, the result columns names start with the preffix "avg_".

|	ORDER	|	NAME	|	DESCRIPTION	|	TYPE	|	POSSIBLE VALUES	|	ORIGIN (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)	|
|	-----	|	-------------------------------	|	------------------------------------------------------	|	------	|	--------------------------------------------------------------------------	|	-------------------------------------------------------------------------------------------------------------------------------------------	|
|	1	|	subject	|	Identification of each person who has participated in the experiment"	|	int	|	1 to 30	|	Please, see readme.txt file	|
|	2	|	activity	|	Activity labels: Each person performed six activities wearing a smartphone (Samsung Galaxy S II)	|	str	|	WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING	|	Please, see activity_labels.txt file	|
|	3	|	avg_tBodyAcc_mean_X	|	tBodyAcc_mean_Y average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAcc_mean_Y in features_info.txt file	|
|	4	|	avg_tBodyAcc_mean_Y	|	tBodyAcc_mean_Z average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAcc_mean_Z in features_info.txt file	|
|	5	|	avg_tBodyAcc_mean_Z	|	tBodyAcc_std_X average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAcc_std_X in features_info.txt file	|
|	6	|	avg_tBodyAcc_std_X	|	tBodyAcc_std_Y average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAcc_std_Y in features_info.txt file	|
|	7	|	avg_tBodyAcc_std_Y	|	tBodyAcc_std_Z average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAcc_std_Z in features_info.txt file	|
|	8	|	avg_tBodyAcc_std_Z	|	tGravityAcc_mean_X average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAcc_mean_X in features_info.txt file	|
|	9	|	avg_tGravityAcc_mean_X	|	tGravityAcc_mean_Y average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAcc_mean_Y in features_info.txt file	|
|	10	|	avg_tGravityAcc_mean_Y	|	tGravityAcc_mean_Z average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAcc_mean_Z in features_info.txt file	|
|	11	|	avg_tGravityAcc_mean_Z	|	tGravityAcc_std_X average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAcc_std_X in features_info.txt file	|
|	12	|	avg_tGravityAcc_std_X	|	tGravityAcc_std_Y average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAcc_std_Y in features_info.txt file	|
|	13	|	avg_tGravityAcc_std_Y	|	tGravityAcc_std_Z average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAcc_std_Z in features_info.txt file	|
|	14	|	avg_tGravityAcc_std_Z	|	tBodyAccJerk_mean_X average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerk_mean_X in features_info.txt file	|
|	15	|	avg_tBodyAccJerk_mean_X	|	tBodyAccJerk_mean_Y average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerk_mean_Y in features_info.txt file	|
|	16	|	avg_tBodyAccJerk_mean_Y	|	tBodyAccJerk_mean_Z average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerk_mean_Z in features_info.txt file	|
|	17	|	avg_tBodyAccJerk_mean_Z	|	tBodyAccJerk_std_X average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerk_std_X in features_info.txt file	|
|	18	|	avg_tBodyAccJerk_std_X	|	tBodyAccJerk_std_Y average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerk_std_Y in features_info.txt file	|
|	19	|	avg_tBodyAccJerk_std_Y	|	tBodyAccJerk_std_Z average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerk_std_Z in features_info.txt file	|
|	20	|	avg_tBodyAccJerk_std_Z	|	tBodyGyro_mean_X average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyro_mean_X in features_info.txt file	|
|	21	|	avg_tBodyGyro_mean_X	|	tBodyGyro_mean_Y average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyro_mean_Y in features_info.txt file	|
|	22	|	avg_tBodyGyro_mean_Y	|	tBodyGyro_mean_Z average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyro_mean_Z in features_info.txt file	|
|	23	|	avg_tBodyGyro_mean_Z	|	tBodyGyro_std_X average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyro_std_X in features_info.txt file	|
|	24	|	avg_tBodyGyro_std_X	|	tBodyGyro_std_Y average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyro_std_Y in features_info.txt file	|
|	25	|	avg_tBodyGyro_std_Y	|	tBodyGyro_std_Z average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyro_std_Z in features_info.txt file	|
|	26	|	avg_tBodyGyro_std_Z	|	tBodyGyroJerk_mean_X average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerk_mean_X in features_info.txt file	|
|	27	|	avg_tBodyGyroJerk_mean_X	|	tBodyGyroJerk_mean_Y average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerk_mean_Y in features_info.txt file	|
|	28	|	avg_tBodyGyroJerk_mean_Y	|	tBodyGyroJerk_mean_Z average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerk_mean_Z in features_info.txt file	|
|	29	|	avg_tBodyGyroJerk_mean_Z	|	tBodyGyroJerk_std_X average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerk_std_X in features_info.txt file	|
|	30	|	avg_tBodyGyroJerk_std_X	|	tBodyGyroJerk_std_Y average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerk_std_Y in features_info.txt file	|
|	31	|	avg_tBodyGyroJerk_std_Y	|	tBodyGyroJerk_std_Z average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerk_std_Z in features_info.txt file	|
|	32	|	avg_tBodyGyroJerk_std_Z	|	tBodyAccMag_mean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccMag_mean in features_info.txt file	|
|	33	|	avg_tBodyAccMag_mean	|	tBodyAccMag_std average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccMag_std in features_info.txt file	|
|	34	|	avg_tBodyAccMag_std	|	tGravityAccMag_mean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAccMag_mean in features_info.txt file	|
|	35	|	avg_tGravityAccMag_mean	|	tGravityAccMag_std average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAccMag_std in features_info.txt file	|
|	36	|	avg_tGravityAccMag_std	|	tBodyAccJerkMag_mean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerkMag_mean in features_info.txt file	|
|	37	|	avg_tBodyAccJerkMag_mean	|	tBodyAccJerkMag_std average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerkMag_std in features_info.txt file	|
|	38	|	avg_tBodyAccJerkMag_std	|	tBodyGyroMag_mean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroMag_mean in features_info.txt file	|
|	39	|	avg_tBodyGyroMag_mean	|	tBodyGyroMag_std average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroMag_std in features_info.txt file	|
|	40	|	avg_tBodyGyroMag_std	|	tBodyGyroJerkMag_mean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkMag_mean in features_info.txt file	|
|	41	|	avg_tBodyGyroJerkMag_mean	|	tBodyGyroJerkMag_std average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkMag_std in features_info.txt file	|
|	42	|	avg_tBodyGyroJerkMag_std	|	tBodyGyroJerkMag_mad average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkMag_mad in features_info.txt file	|
|	43	|	avg_tBodyGyroJerkMag_mad	|	tBodyGyroJerkMag_max average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkMag_max in features_info.txt file	|
|	44	|	avg_tBodyGyroJerkMag_max	|	tBodyGyroJerkMag_min average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkMag_min in features_info.txt file	|
|	45	|	avg_tBodyGyroJerkMag_min	|	tBodyGyroJerkMag_sma average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkMag_sma in features_info.txt file	|
|	46	|	avg_tBodyGyroJerkMag_sma	|	tBodyGyroJerkMag_energy average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkMag_energy in features_info.txt file	|
|	47	|	avg_tBodyGyroJerkMag_energy	|	fBodyAcc_mean_X average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAcc_mean_X in features_info.txt file	|
|	48	|	avg_fBodyAcc_mean_X	|	fBodyAcc_std_Z average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAcc_std_Z in features_info.txt file	|
|	49	|	avg_fBodyAcc_std_Z	|	fBodyAccJerk_mean_X average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccJerk_mean_X in features_info.txt file	|
|	50	|	avg_fBodyAccJerk_mean_X	|	fBodyAccJerk_mean_Y average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccJerk_mean_Y in features_info.txt file	|
|	51	|	avg_fBodyAccJerk_mean_Y	|	fBodyAccJerk_mean_Z average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccJerk_mean_Z in features_info.txt file	|
|	52	|	avg_fBodyAccJerk_mean_Z	|	fBodyAccJerk_std_X average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccJerk_std_X in features_info.txt file	|
|	53	|	avg_fBodyAccJerk_std_X	|	fBodyAccJerk_std_Y average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccJerk_std_Y in features_info.txt file	|
|	54	|	avg_fBodyAccJerk_std_Y	|	fBodyAccJerk_std_Z average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccJerk_std_Z in features_info.txt file	|
|	55	|	avg_fBodyAccJerk_std_Z	|	fBodyGyro_mean_X average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyGyro_mean_X in features_info.txt file	|
|	56	|	avg_fBodyGyro_mean_X	|	fBodyGyro_mean_Y average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyGyro_mean_Y in features_info.txt file	|
|	57	|	avg_fBodyGyro_mean_Y	|	fBodyGyro_mean_Z average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyGyro_mean_Z in features_info.txt file	|
|	58	|	avg_fBodyGyro_mean_Z	|	fBodyGyro_std_X average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyGyro_std_X in features_info.txt file	|
|	59	|	avg_fBodyGyro_std_X	|	fBodyGyro_std_Y average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyGyro_std_Y in features_info.txt file	|
|	60	|	avg_fBodyGyro_std_Y	|	fBodyGyro_std_Z average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyGyro_std_Z in features_info.txt file	|
|	61	|	avg_fBodyGyro_std_Z	|	fBodyAccMag_mean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccMag_mean in features_info.txt file	|
|	62	|	avg_fBodyAccMag_mean	|	fBodyAccMag_std average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccMag_std in features_info.txt file	|
|	63	|	avg_fBodyAccMag_std	|	fBodyBodyAccJerkMag_mean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyBodyAccJerkMag_mean in features_info.txt file	|
|	64	|	avg_fBodyBodyAccJerkMag_mean	|	fBodyBodyAccJerkMag_std average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyBodyAccJerkMag_std in features_info.txt file	|
|	65	|	avg_fBodyBodyAccJerkMag_std	|	fBodyBodyGyroMag_mean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyBodyGyroMag_mean in features_info.txt file	|
|	66	|	avg_fBodyBodyGyroMag_mean	|	fBodyBodyGyroMag_std average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyBodyGyroMag_std in features_info.txt file	|
|	67	|	avg_fBodyBodyGyroMag_std	|	fBodyBodyGyroJerkMag_mean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyBodyGyroJerkMag_mean in features_info.txt file	|
|	68	|	avg_fBodyBodyGyroJerkMag_mean	|	fBodyBodyGyroJerkMag_std average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyBodyGyroJerkMag_std in features_info.txt file	|
|	69	|	avg_fBodyBodyGyroJerkMag_std	|	 average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyBodyGyroJerkMag_std in features_info.txt file	|
