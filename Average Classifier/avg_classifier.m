function avg_classifier() 
    sd=[];
    error=[];
    misClassifiedDatapoint=0;
    TrainDataset=csvread('train.csv');
    for j=1:8
        prompt = sprintf('Enter feature index:');
        featureIndex = input(prompt);
        classIndex = 9;
        avg=calculateAvg(TrainDataset, featureIndex, classIndex);
        TestDataset=csvread('test.csv');
        sdclass=calculatesd(TestDataset,avg, featureIndex);
        for i=1: size(TestDataset,1)
            if  sdclass(i,3)~=TestDataset(i, classIndex)
                 misClassifiedDatapoint= misClassifiedDatapoint+1;
            end
        end
        error=[error (misClassifiedDatapoint/ size(TestDataset,1))*100]
         misClassifiedDatapoint=0;
     end
    %error=calculateError(TestDataset, featureIndex, classIndex, avg);
end