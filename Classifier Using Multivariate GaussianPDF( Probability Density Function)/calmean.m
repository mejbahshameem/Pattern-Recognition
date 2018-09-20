function mean=calmean(td0)
    mean=[];
    sumx=0;
    sumy=0;
    for i=1:size(td0,1)
        sumx=sumx+td0(i,1);
        sumy=sumy+td0(i,2);
    end
    mean=[mean sumx/size(td0,1); sumy/size(td0,1)];
end