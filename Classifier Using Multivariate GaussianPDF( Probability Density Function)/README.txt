1. In the train dataset first two columns resemble feature vector 
   (continuous: Cartesian Point Co-ordinates) and 
   last column for decision.
2. Run "multivariate.m" with a cartesian point from
   training data
3. Calculate prior, mean, co-variance matrix for 
   each class
4. Calculate inverse and determinant of each covariance
   matrix and then implement classifier function
5. If g0(x)-g1(x)>0 decide in favor of class 0
   Else decide in favor of class 1