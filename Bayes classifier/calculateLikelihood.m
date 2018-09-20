function c=calculateLikelihood(disTraindataset, featureIndex, U, L, classIndex,binCount)
  c=zeros(2,4);
  count0=0;
  count1=0;
   for i=1:2
        for j=1:4
            for k=1:size(disTraindataset,1)
                if i==1
                    if disTraindataset(k,featureIndex)==j && disTraindataset(k,classIndex)==0
                        c(i,j)= c(i,j)+1;
                        count0=count0+1;
                    end
                else
                     if disTraindataset(k,featureIndex)==j && disTraindataset(k,classIndex)==1
                        c(i,j)= c(i,j)+1;
                        count1=count1+1;
                    end
                end
                
            end
        end
   end
  
   for i=1:2
    for j=1:4
        if i==1
            c(i,j)=c(i,j)/count0;
        else
             c(i,j)=c(i,j)/count1;
        end
    end
   end
end