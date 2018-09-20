function ce=calculateError(disTestDataset, featureIndex, classIndex, prior, likelihood)
   misclass=0;
   for i=1:size(disTestDataset,1)
     p=disTestDataset(i,2);
     if p==0
        p=p+1;
     end
      k0=prior(1)*likelihood(1,p);
      k1=prior(2)*likelihood(2,p);
      if k0>k1
        dc=0;
      else
          dc=1;
      end
     if disTestDataset(i, classIndex)~=dc
       misclass=misclass+1; 
     end
   end
    ce=(misclass/size(disTestDataset,1))*100;
end