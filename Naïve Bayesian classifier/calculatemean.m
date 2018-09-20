function miu=calculatemean(td0,classIndex)
    miu=[];
    sum=0;
    for i=1:8
        for j=1:size(td0,1)
           sum=sum+td0(j,i); 
        end
        miu=[miu sum/size(td0,1)];
        sum=0;
    end
end