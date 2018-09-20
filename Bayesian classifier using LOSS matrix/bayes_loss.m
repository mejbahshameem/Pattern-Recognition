function bayes_loss()
    train=csvread('pima_train.csv');
    td0=[];
    td1=[];
    loss=[-2.5 3.7;11 -7.5]
    ClassIndex=9;
    miss_class=0;
    feature_index=2;
    for i=1:size(train,1)
        if train(i,ClassIndex)==0
            td0=[td0; train(i,:);];
        else
            td1=[td1; train(i,:);];
        end
    end
    prior=[];
    prior=[calPrior(td0,train) calPrior(td1,train)];
    mean0=calculateMean(td0,feature_index);
    mean1=calculateMean(td1,feature_index);
    variance=[calculateVariance(td0,feature_index) calculateVariance(td1,feature_index)];
    test=csvread('pima_test.csv');
    for j=1:size(test,1)
        likelihood = [calculateLikelihood(test(j,feature_index),mean0,variance(1)) calculateLikelihood(test(j,feature_index),mean1,variance(2))];
        c2=loss(1,2)-loss(2,2)*prior(2);
        c1=loss(2,1)-loss(1,1)*prior(1);
        gross=c2/c1;
        like=likelihood(1)/likelihood(2);
        if(like>gross)
            det_class=0;
        else
            det_class=1;
        end
        if test(j,ClassIndex)~=det_class
             miss_class= miss_class+1;
        end
    end
    error= (miss_class/size(test,1))*100
end