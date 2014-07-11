# Study design

For details on data production, see the original README.txt included with the downloaded dataset. Briefly, these are accelerometer data for 30 subjects wearing smartphones on their waists during 6 different activities.

This tidy data set represents a merger of the original test and training data sets. To produce the tidy version of this data set, I created a subset that includes only the original measurements that represented means and standard deviations. Then I grouped the dataset by subject and activity and calculated the mean of the means and standard deviations for each variable.

# Code book

Variables in `tidydata.txt`:

1. subject - An integer variable from 1-30 indicating the subject performing each activity.
2. activity - A factor variable with 6 levels: "LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"
3. tBodyAccMeanX - A numerical variable indicating the average of the average total body acceleration in the X axis in standard gravity units 'g'. The 't' indicates a time series collected at 50Hz.
4. tBodyAccMeanY - A numerical variable indicating the average of the average total body acceleration in the Y axis in standard gravity units 'g'.
5. tBodyAccMeanZ - A numerical variable indicating the average of the average total body acceleration in the Z axis in standard gravity units 'g'.
6. tBodyAccStdX - A numerical variable indicating the average of the standard deviations of the total body acceleration in the X axis in standard gravity units 'g'.
7. tBodyAccStdY - A numerical variable indicating the average of the standard deviations of the total body acceleration in the Y axis in standard gravity units 'g'.
8. tBodyAccStdZ - A numerical variable indicating the average of the standard deviations of the total body acceleration in the Z axis in standard gravity units 'g'.
9. tGravityAccMeanX - A numerical variable indicating the average of the average total gravity acceleration in the X axis in standard gravity units 'g'. The 't' indicates a time series collected at 50Hz.
10. tGravityAccMeanY - A numerical variable indicating the average of the average total gravity acceleration in the Y axis in standard gravity units 'g'.
11. tGravityAccMeanZ - A numerical variable indicating the average of the average total gravity acceleration in the Z axis in standard gravity units 'g'.
12. tGravityAccStdX - A numerical variable indicating the average of the standard deviations of the total gravity acceleration in the X axis in standard gravity units 'g'.
13. tGravityAccStdY - A numerical variable indicating the average of the standard deviations of the total gravity acceleration in the Y axis in standard gravity units 'g'.
14. tGravityAccStdZ - A numerical variable indicating the average of the standard deviations of the total gravity acceleration in the Z axis in standard gravity units 'g'.
15. tBodyAccJerkMeanX - This is far too boring to continue... You get the point.
16. tBodyAccJerkMeanY
17. tBodyAccJerkMeanZ
18. tBodyAccJerkStdX
19. tBodyAccJerkStdY
20. tBodyAccJerkStdZ
21. tBodyGyroMeanX - All the ones that have Gyro in the name are measuring angular velocity in radians/second.
22. tBodyGyroMeanY
23. tBodyGyroMeanZ
24. tBodyGyroStdX
25. tBodyGyroStdY
26. tBodyGyroStdZ
27. tBodyGyroJerkMeanX
28. tBodyGyroJerkMeanY
29. tBodyGyroJerkMeanZ
30. tBodyGyroJerkStdX
31. tBodyGyroJerkStdY
32. tBodyGyroJerkStdZ
33. tBodyAccMagMean
34. tBodyAccMagStd
35. tGravityAccMagMean
36. tGravityAccMagStd
37. tBodyAccJerkMagMean
38. tBodyAccJerkMagStd
39. tBodyGyroMagMean
40. tBodyGyroMagStd
41. tBodyGyroJerkMagMean
42. tBodyGyroJerkMagStd
43. fBodyAccMeanX
44. fBodyAccMeanY
45. fBodyAccMeanZ
46. fBodyAccStdX
47. fBodyAccStdY
48. fBodyAccStdZ
49. fBodyAccJerkMeanX
50. fBodyAccJerkMeanY
51. fBodyAccJerkMeanZ
52. fBodyAccJerkStdX
53. fBodyAccJerkStdY
54. fBodyAccJerkStdZ
55. fBodyGyroMeanX
56. fBodyGyroMeanY
57. fBodyGyroMeanZ
58. fBodyGyroStdX
59. fBodyGyroStdY
60. fBodyGyroStdZ
61. fBodyAccMagMean
62. fBodyAccMagStd
63. fBodyBodyAccJerkMagMean
64. fBodyBodyAccJerkMagStd
65. fBodyBodyGyroMagMean
66. fBodyBodyGyroMagStd
67. fBodyBodyGyroJerkMagMean
68. fBodyBodyGyroJerkMagStd