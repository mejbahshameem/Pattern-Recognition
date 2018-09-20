function bayes_classifier()
 U=200;
 L=0;
 binCount=4;
 classIndex=9;
 featureIndex=2;
 TrainDataset=csvread('pima_train.csv');
 disTraindataset=discretize(TrainDataset,U,L,binCount);
 Prior=calculatePrior(disTraindataset,classIndex);
 Likelihood=calculateLikelihood(disTraindataset, featureIndex, U, L, classIndex,binCount);
 TestDataset=csvread('pima_test.csv');
 disTestDataset=discretize(TestDataset,U,L,binCount);
 Error = calculateError(disTestDataset, featureIndex, classIndex, Prior, Likelihood)
end
