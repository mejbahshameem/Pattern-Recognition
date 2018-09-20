function multivariate(q,j)
  classIndex=3;
  td0=[];
  td1=[];
  sigma0=[];
  sigma0in=[];
  sigma1in=[];
  sigma1=[];
 TrainDataset=csvread('train.csv');
  for i=1:size(TrainDataset,1)
     if TrainDataset(i,classIndex)==0     
           td0=[td0; TrainDataset(i,:);];
     else 
          td1=[td1; TrainDataset(i,:);];
     end
  end
 prior=calculatePrior(TrainDataset,td0);
 prior=[prior calculatePrior(TrainDataset,td1)];
 mean0=calmean(td0);
 mean1=calmean(td1);
 sigma0=calsigmma(td0,mean0);
 sigma1=calsigmma(td1,mean1);
 sigma0in=inv(sigma0);
 sigma1in=inv(sigma1);
 sigma0det=det(sigma0);
 sigma1det=det(sigma1);
 g0=-.5*[q-mean0(1) j-mean0(2)]*sigma0in*[q-mean0(1);j-mean0(2)]-.5*log(1)+log(prior(1))
 g1=-.5*[q-mean1(1) j-mean1(2)]*sigma1in*[q-mean1(1);j-mean1(2)]-.5*log(1)+log(prior(2))
 if g0>g1
     disp('class 0');
 else 
     disp('class 1');
 end
end