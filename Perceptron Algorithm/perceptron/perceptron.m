function perceptron()
    train=csvread('train.csv');
    w=zeros(9,1);
    optimal_w=zeros(9,1);
    p=.7;
    i=1;
    optimal_y=intmax;
    for i=1:1000
        y=0;
        j=1;
        sum=zeros(9,1);
        for j=1:size(train,1)
            x=train(j,1:8);
            x=[x 1];
            x=transpose(x);
            if transpose(w)*x>=0 && train(j,9)==1
                y=y+1;
                delx=1;
                val=(delx*x);
                sum=sum+val;
           
            elseif transpose(w)*x<=0 && train(j,9)==0
                y=y+1;
                delx=-1;
                val=(delx*x);
                sum=sum+val;
            end
            
        end
       
        w=w-(p*sum);
        if y<optimal_y
            optimal_y=y;
            optimal_w=w;
        end
        i=i+1;
    end
    y
    optimal_w
    optimal_y
end