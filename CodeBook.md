Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The final Dataset obtained
==========================
Contains aggregated mean values of all mean and standard deviation values from original data set grouped by activity and subject, resulting in a total of 180 records with 68 variables (including subject id and activity).
Attribute Information:

Each record in the tidy data has:

Its activity label (one out of 6 different activities):
LAYING
SITTING
STANDING
WALKING
WALKING_DOWNSTAIR
WALKING_UPSTAIRS

An identifier of the subject who carried out the experiment (30 different subjects, IDs ranging from {1,2,3,...,30})

66 features with the 'Mean of Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration' or 'Mean of Triaxial Angular velocity from the gyroscope' with numerical value ranging in [-1,1]. The resulting tidy dataset has teh following variables:
 [1] "subjectId"                                                             
 [2] "Activity"                                                              
 [3] "time domain Body Acceleration signal -mean on X axis"                  
 [4] "time domain Body Acceleration signal -mean on Y axis"                  
 [5] "time domain Body Acceleration signal -mean on Z axis"                  
 [6] "time domain Body Acceleration signal -stddeviation on X axis"          
 [7] "time domain Body Acceleration signal -stddeviation on Y axis"          
 [8] "time domain Body Acceleration signal -stddeviation on Z axis"          
 [9] "time domain Gravity Acceleration signal -mean on X axis"               
[10] "time domain Gravity Acceleration signal -mean on Y axis"               
[11] "time domain Gravity Acceleration signal -mean on Z axis"               
[12] "time domain Gravity Acceleration signal -stddeviation on X axis"       
[13] "time domain Gravity Acceleration signal -stddeviation on Y axis"       
[14] "time domain Gravity Acceleration signal -stddeviation on Z axis"       
[15] "time domain Body Acceleration signal Jerk -mean on X axis"             
[16] "time domain Body Acceleration signal Jerk -mean on Y axis"             
[17] "time domain Body Acceleration signal Jerk -mean on Z axis"             
[18] "time domain Body Acceleration signal Jerk -stddeviation on X axis"     
[19] "time domain Body Acceleration signal Jerk -stddeviation on Y axis"     
[20] "time domain Body Acceleration signal Jerk -stddeviation on Z axis"     
[21] "time domain Body Gyroscope signal-mean on X axis"                      
[22] "time domain Body Gyroscope signal-mean on Y axis"                      
[23] "time domain Body Gyroscope signal-mean on Z axis"                      
[24] "time domain Body Gyroscope signal-stddeviation on X axis"              
[25] "time domain Body Gyroscope signal-stddeviation on Y axis"              
[26] "time domain Body Gyroscope signal-stddeviation on Z axis"              
[27] "time domain Body Gyroscope signalJerk -mean on X axis"                 
[28] "time domain Body Gyroscope signalJerk -mean on Y axis"                 
[29] "time domain Body Gyroscope signalJerk -mean on Z axis"                 
[30] "time domain Body Gyroscope signalJerk -stddeviation on X axis"         
[31] "time domain Body Gyroscope signalJerk -stddeviation on Y axis"         
[32] "time domain Body Gyroscope signalJerk -stddeviation on Z axis"         
[33] "time domain Body Acceleration signal Magnitude -mean"                  
[34] "time domain Body Acceleration signal Magnitude -stddeviation"          
[35] "time domain Gravity Acceleration signal Magnitude -mean"               
[36] "time domain Gravity Acceleration signal Magnitude -stddeviation"       
[37] "time domain Body Acceleration signal Jerk Magnitude -mean"             
[38] "time domain Body Acceleration signal Jerk Magnitude -stddeviation"     
[39] "time domain Body Gyroscope signalMagnitude -mean"                      
[40] "time domain Body Gyroscope signalMagnitude -stddeviation"              
[41] "time domain Body Gyroscope signalJerk Magnitude -mean"                 
[42] "time domain Body Gyroscope signalJerk Magnitude -stddeviation"         
[43] "fBodyAcc-mean on X axis"                                               
[44] "fBodyAcc-mean on Y axis"                                               
[45] "fBodyAcc-mean on Z axis"                                               
[46] "fBodyAcc-stddeviation on X axis"                                       
[47] "fBodyAcc-stddeviation on Y axis"                                       
[48] "fBodyAcc-stddeviation on Z axis"                                       
[49] "fBodyAccJerk -mean on X axis"                                          
[50] "fBodyAccJerk -mean on Y axis"                                          
[51] "fBodyAccJerk -mean on Z axis"                                          
[52] "fBodyAccJerk -stddeviation on X axis"                                  
[53] "fBodyAccJerk -stddeviation on Y axis"                                  
[54] "fBodyAccJerk -stddeviation on Z axis"                                  
[55] "fBodyGyro-mean on X axis"                                              
[56] "fBodyGyro-mean on Y axis"                                              
[57] "fBodyGyro-mean on Z axis"                                              
[58] "fBodyGyro-stddeviation on X axis"                                      
[59] "fBodyGyro-stddeviation on Y axis"                                      
[60] "fBodyGyro-stddeviation on Z axis"                                      
[61] "fBodyAccMagnitude -mean"                                               
[62] "fBodyAccMagnitude -stddeviation"                                       
[63] "frequency domain Body Acceleration signal Jerk Magnitude -mean"        
[64] "frequency domain Body Acceleration signal Jerk Magnitude -stddeviation"
[65] "frequency domain Body Gyroscope signal Magnitude -mean"                
[66] "frequency domain Body Gyroscope signal Magnitude -stddeviation"        
[67] "frequency domain Body Gyroscope signal Jerk Magnitude -mean"           
[68] "frequency domain Body Gyroscope signal Jerk Magnitude -stddeviation"   
