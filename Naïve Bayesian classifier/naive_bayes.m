function naive_bayes()
 classIndex=9;
 TrainDataset=csvread('train.csv');
 td0=[];
 misclass=0;
 td1=[];
 prior=[];
 for i=1:size(TrainDataset,1)
     if TrainDataset(i,classIndex)==0     
           td0=[td0; TrainDataset(i,:);];
     else 
          td1=[td1; TrainDataset(i,:);];
     end
 end
 
  prior=calculatePrior(TrainDataset,td0);
  prior=[prior calculatePrior(TrainDataset,td1)]
  mean=calculatemean(td0,classIndex);
  mean=[mean; calculatemean(td1,classIndex)];
  variance=calculatevariance(td0,1,mean)
  variance=[variance; calculatevariance(td1,2,mean)];
  test=csvread('test.csv');
  Likelihood0=[];
  Likelihood1=[];
  pos0=1;
  pos1=1;
  for i=1:size(test,1)
      for j=1:8
        Likelihood0=[ Likelihood0 calculateLikelihood(test(i,j),mean(1,j),variance(1,j))];
        pos0=pos0*calculateLikelihood(test(i,j),mean(1,j),variance(1,j));
      end
       for k=1:8
         Likelihood1=[Likelihood1 calculateLikelihood(test(i,k),mean(2,k),variance(2,k))];
          pos1=pos1*calculateLikelihood(test(i,k),mean(2,k),variance(2,k));
       end
       pos0=pos0*prior(1);
       pos1=pos1*prior(2);
       if pos0>pos1
        detclass=0;
       else
           detclass=1;
       end
       if detclass~=test(i,classIndex)
           misclass=misclass+1;
       end
       Likelihood0=[];
       Likelihood1=[];
  end
  error=(misclass/size(test,1))*100
% %  TestDataset=csvread('pima_test.csv');
% %  disTestDataset=discretize(TestDataset,U,L,binCount);
% %  Error = calculateError(disTestDataset, featureIndex, classIndex, Prior, Likelihood)
end
