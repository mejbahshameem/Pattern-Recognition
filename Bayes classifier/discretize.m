function res=discretize(TrainDataset,U,L,binCount)
   for i=1:size(TrainDataset,1)
        x=TrainDataset(i,2);
        TrainDataset(i,2)=ceil((x/U-L)*binCount);
        %if val>=0 && val<=49
%             TrainDataset(i,2)=1;
%         elseif val>=50 && val<=99
%             TrainDataset(i,2)=2;
%         elseif val>=100 && val<=149
%             TrainDataset(i,2)=3;
%         elseif val>=150 && val<=199
%             TrainDataset(i,2)=4;
%         end
       
    end
     res=TrainDataset;
end