function m= calculateMean(td0,feature_index)
    sum=0;
    for i=1:size(td0,1)
        sum=sum+td0(i,feature_index);
    end
    m=sum/size(td0,1);
end