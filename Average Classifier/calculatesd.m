function sd=calculatesd(TestDataset,avg, featureIndex)
    sd=[];
    for i=1:size(TestDataset,1)
        sd0=abs(avg(1)-TestDataset(i,featureIndex));
        sd1=abs(avg(2)-TestDataset(i,featureIndex));
        if sd0<sd1
            class=0;
        else
            class=1;
        end
        sd=[sd; sd0 sd1 class;];
        
    end
end