function sum=calsigmma(td0,mean0)
    newdim=[];
    sum=[0 0;0 0];
    for i=1:size(td0,1)
        newdim=[td0(i,1);td0(i,2)];
        newdim=newdim-mean0;
        newdim=newdim*transpose(newdim);
        sum=sum+newdim;
    end
    sum=(1/4)*sum;
end