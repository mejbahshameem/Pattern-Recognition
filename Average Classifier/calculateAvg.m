function ret=calculateAvg(TrainDataset, featureIndex, classIndex)
    ret=[];
    sum0=0;
    sum1=0;
    count0=0;
    count1=0;
    for i=1:size(TrainDataset,1)
        if TrainDataset(i,classIndex)==0
            sum0=sum0+TrainDataset(i,featureIndex);
            count0=count0+1;
        else
            sum1=sum1+TrainDataset(i,featureIndex);
            count1=count1+1;
        end
       
    end
    ret=[ret sum0/count0];
    ret=[ret sum1/count1];
    
end