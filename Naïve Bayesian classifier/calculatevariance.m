function var=calculatevariance(td0,meanIndex,mean)
sum=0;
var=[];
    for i=1:8
        for j=1:size(td0,1)
          sum=sum+(mean(meanIndex,i)-td0(j,i))^2;  
        end
        var=[var sum/size(td0,1)];
        sum=0;
    end
end