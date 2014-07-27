aggData.txt: Code Book
======================
*(Please, see the table below with Variables order, name, description, type, possible values, origin)*

The origin of these dataset is https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

In the "README.txt" of that zip, the dataset is described as "Human Activity Recognition Using Smartphones Dataset".
The experiments have been carried out with a group of 30 volunteers (variable "subject" in the aggData.txt dataset).
Each person performed six activities (WALKING, WALKINGUPSTAIRS, WALKINGDOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
The results of the experiments (features) has been taken as the original variables in the train and test datasets, the features described in "features.txt" of the mentioned zip.

For generating the "aggData.txt" dataset, the original train and test datasets has been merged into one, adding a column for the activities and another one for the subjects, and selecting only the columns with calculated "mean" or "standard deviation".
The columns has been renamed, replacing special characters.
The numeric values in the variable "activity", using the list in activitylabels.txt, has been converted to strings.
For each feature variable, and grouping by subject and activity, the average has been calculated. Indicating this, the result columns names start with the preffix "avg".

|	ORDER	|	NAME	|	DESCRIPTION	|	TYPE	|	POSSIBLE VALUES	|	ORIGIN (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)	|
|	-----	|	-------------------------------	|	------------------------------------------------------	|	------	|	--------------------------------------------------------------------------	|	-------------------------------------------------------------------------------------------------------------------------------------------	|
|	1	|	subject	|	Identification of each person who has participated in the experiment"	|	int	|	1 to 30	|	Please, see readme.txt file	|
|	2	|	activity	|	Activity labels: Each person performed six activities wearing a smartphone (Samsung Galaxy S II)	|	str	|	WALKING, WALKINGUPSTAIRS, WALKINGDOWNSTAIRS, SITTING, STANDING, LAYING	|	Please, see activitylabels.txt file	|
|	3	|	avgtBodyAccmeanX	|	tBodyAccmeanY average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccmeanY in featuresinfo.txt file	|
|	4	|	avgtBodyAccmeanY	|	tBodyAccmeanZ average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccmeanZ in featuresinfo.txt file	|
|	5	|	avgtBodyAccmeanZ	|	tBodyAccstdX average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccstdX in featuresinfo.txt file	|
|	6	|	avgtBodyAccstdX	|	tBodyAccstdY average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccstdY in featuresinfo.txt file	|
|	7	|	avgtBodyAccstdY	|	tBodyAccstdZ average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccstdZ in featuresinfo.txt file	|
|	8	|	avgtBodyAccstdZ	|	tGravityAccmeanX average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAccmeanX in featuresinfo.txt file	|
|	9	|	avgtGravityAccmeanX	|	tGravityAccmeanY average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAccmeanY in featuresinfo.txt file	|
|	10	|	avgtGravityAccmeanY	|	tGravityAccmeanZ average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAccmeanZ in featuresinfo.txt file	|
|	11	|	avgtGravityAccmeanZ	|	tGravityAccstdX average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAccstdX in featuresinfo.txt file	|
|	12	|	avgtGravityAccstdX	|	tGravityAccstdY average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAccstdY in featuresinfo.txt file	|
|	13	|	avgtGravityAccstdY	|	tGravityAccstdZ average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAccstdZ in featuresinfo.txt file	|
|	14	|	avgtGravityAccstdZ	|	tBodyAccJerkmeanX average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerkmeanX in featuresinfo.txt file	|
|	15	|	avgtBodyAccJerkmeanX	|	tBodyAccJerkmeanY average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerkmeanY in featuresinfo.txt file	|
|	16	|	avgtBodyAccJerkmeanY	|	tBodyAccJerkmeanZ average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerkmeanZ in featuresinfo.txt file	|
|	17	|	avgtBodyAccJerkmeanZ	|	tBodyAccJerkstdX average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerkstdX in featuresinfo.txt file	|
|	18	|	avgtBodyAccJerkstdX	|	tBodyAccJerkstdY average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerkstdY in featuresinfo.txt file	|
|	19	|	avgtBodyAccJerkstdY	|	tBodyAccJerkstdZ average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerkstdZ in featuresinfo.txt file	|
|	20	|	avgtBodyAccJerkstdZ	|	tBodyGyromeanX average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyromeanX in featuresinfo.txt file	|
|	21	|	avgtBodyGyromeanX	|	tBodyGyromeanY average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyromeanY in featuresinfo.txt file	|
|	22	|	avgtBodyGyromeanY	|	tBodyGyromeanZ average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyromeanZ in featuresinfo.txt file	|
|	23	|	avgtBodyGyromeanZ	|	tBodyGyrostdX average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyrostdX in featuresinfo.txt file	|
|	24	|	avgtBodyGyrostdX	|	tBodyGyrostdY average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyrostdY in featuresinfo.txt file	|
|	25	|	avgtBodyGyrostdY	|	tBodyGyrostdZ average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyrostdZ in featuresinfo.txt file	|
|	26	|	avgtBodyGyrostdZ	|	tBodyGyroJerkmeanX average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkmeanX in featuresinfo.txt file	|
|	27	|	avgtBodyGyroJerkmeanX	|	tBodyGyroJerkmeanY average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkmeanY in featuresinfo.txt file	|
|	28	|	avgtBodyGyroJerkmeanY	|	tBodyGyroJerkmeanZ average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkmeanZ in featuresinfo.txt file	|
|	29	|	avgtBodyGyroJerkmeanZ	|	tBodyGyroJerkstdX average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkstdX in featuresinfo.txt file	|
|	30	|	avgtBodyGyroJerkstdX	|	tBodyGyroJerkstdY average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkstdY in featuresinfo.txt file	|
|	31	|	avgtBodyGyroJerkstdY	|	tBodyGyroJerkstdZ average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkstdZ in featuresinfo.txt file	|
|	32	|	avgtBodyGyroJerkstdZ	|	tBodyAccMagmean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccMagmean in featuresinfo.txt file	|
|	33	|	avgtBodyAccMagmean	|	tBodyAccMagstd average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccMagstd in featuresinfo.txt file	|
|	34	|	avgtBodyAccMagstd	|	tGravityAccMagmean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAccMagmean in featuresinfo.txt file	|
|	35	|	avgtGravityAccMagmean	|	tGravityAccMagstd average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tGravityAccMagstd in featuresinfo.txt file	|
|	36	|	avgtGravityAccMagstd	|	tBodyAccJerkMagmean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerkMagmean in featuresinfo.txt file	|
|	37	|	avgtBodyAccJerkMagmean	|	tBodyAccJerkMagstd average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyAccJerkMagstd in featuresinfo.txt file	|
|	38	|	avgtBodyAccJerkMagstd	|	tBodyGyroMagmean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroMagmean in featuresinfo.txt file	|
|	39	|	avgtBodyGyroMagmean	|	tBodyGyroMagstd average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroMagstd in featuresinfo.txt file	|
|	40	|	avgtBodyGyroMagstd	|	tBodyGyroJerkMagmean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkMagmean in featuresinfo.txt file	|
|	41	|	avgtBodyGyroJerkMagmean	|	tBodyGyroJerkMagstd average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkMagstd in featuresinfo.txt file	|
|	42	|	avgtBodyGyroJerkMagstd	|	tBodyGyroJerkMagmad average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkMagmad in featuresinfo.txt file	|
|	43	|	avgtBodyGyroJerkMagmad	|	tBodyGyroJerkMagmax average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkMagmax in featuresinfo.txt file	|
|	44	|	avgtBodyGyroJerkMagmax	|	tBodyGyroJerkMagmin average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkMagmin in featuresinfo.txt file	|
|	45	|	avgtBodyGyroJerkMagmin	|	tBodyGyroJerkMagsma average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkMagsma in featuresinfo.txt file	|
|	46	|	avgtBodyGyroJerkMagsma	|	tBodyGyroJerkMagenergy average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see tBodyGyroJerkMagenergy in featuresinfo.txt file	|
|	47	|	avgtBodyGyroJerkMagenergy	|	fBodyAccmeanX average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccmeanX in featuresinfo.txt file	|
|	48	|	avgfBodyAccmeanX	|	fBodyAccstdZ average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccstdZ in featuresinfo.txt file	|
|	49	|	avgfBodyAccstdZ	|	fBodyAccJerkmeanX average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccJerkmeanX in featuresinfo.txt file	|
|	50	|	avgfBodyAccJerkmeanX	|	fBodyAccJerkmeanY average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccJerkmeanY in featuresinfo.txt file	|
|	51	|	avgfBodyAccJerkmeanY	|	fBodyAccJerkmeanZ average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccJerkmeanZ in featuresinfo.txt file	|
|	52	|	avgfBodyAccJerkmeanZ	|	fBodyAccJerkstdX average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccJerkstdX in featuresinfo.txt file	|
|	53	|	avgfBodyAccJerkstdX	|	fBodyAccJerkstdY average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccJerkstdY in featuresinfo.txt file	|
|	54	|	avgfBodyAccJerkstdY	|	fBodyAccJerkstdZ average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccJerkstdZ in featuresinfo.txt file	|
|	55	|	avgfBodyAccJerkstdZ	|	fBodyGyromeanX average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyGyromeanX in featuresinfo.txt file	|
|	56	|	avgfBodyGyromeanX	|	fBodyGyromeanY average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyGyromeanY in featuresinfo.txt file	|
|	57	|	avgfBodyGyromeanY	|	fBodyGyromeanZ average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyGyromeanZ in featuresinfo.txt file	|
|	58	|	avgfBodyGyromeanZ	|	fBodyGyrostdX average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyGyrostdX in featuresinfo.txt file	|
|	59	|	avgfBodyGyrostdX	|	fBodyGyrostdY average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyGyrostdY in featuresinfo.txt file	|
|	60	|	avgfBodyGyrostdY	|	fBodyGyrostdZ average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyGyrostdZ in featuresinfo.txt file	|
|	61	|	avgfBodyGyrostdZ	|	fBodyAccMagmean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccMagmean in featuresinfo.txt file	|
|	62	|	avgfBodyAccMagmean	|	fBodyAccMagstd average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyAccMagstd in featuresinfo.txt file	|
|	63	|	avgfBodyAccMagstd	|	fBodyBodyAccJerkMagmean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyBodyAccJerkMagmean in featuresinfo.txt file	|
|	64	|	avgfBodyBodyAccJerkMagmean	|	fBodyBodyAccJerkMagstd average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyBodyAccJerkMagstd in featuresinfo.txt file	|
|	65	|	avgfBodyBodyAccJerkMagstd	|	fBodyBodyGyroMagmean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyBodyGyroMagmean in featuresinfo.txt file	|
|	66	|	avgfBodyBodyGyroMagmean	|	fBodyBodyGyroMagstd average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyBodyGyroMagstd in featuresinfo.txt file	|
|	67	|	avgfBodyBodyGyroMagstd	|	fBodyBodyGyroJerkMagmean average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyBodyGyroJerkMagmean in featuresinfo.txt file	|
|	68	|	avgfBodyBodyGyroJerkMagmean	|	fBodyBodyGyroJerkMagstd average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyBodyGyroJerkMagstd in featuresinfo.txt file	|
|	69	|	avgfBodyBodyGyroJerkMagstd	|	fBodyBodyGyroJerkMagstd average, by subject and activity	|	num	|	Normalized: [-1, 1]	|	Please, see fBodyBodyGyroJerkMagstd in featuresinfo.txt file	|
