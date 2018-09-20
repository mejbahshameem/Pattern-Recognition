function kesler()
    train=csvread('dataset.csv');
    class_index=3;
    M=3;
    td1=[];
    td2=[];
    td3=[];
    for i=1:size(train,1)
        if train(i,class_index)==1
            td1=[td1; train(i,1:2);];
        elseif train(i,class_index)==2
            td2=[td2; train(i,1:2);];
        else
             td3=[td3; train(i,1:2);];
        end
    end
   kesler_data=construct_kesler(td1,td2,td3,M)
   perceptron(kesler_data);
end
