function pr= calculatePrior(disTraindataset,classIndex)
    c0=0;
    c1=0;
    for i=1:size(disTraindataset,1)
        if disTraindataset(i,classIndex)==0
            c0=c0+1;
        else
            c1=c1+1;
        end
    end
    pr=[c0/size(disTraindataset,1) c1/size(disTraindataset,1)];
end