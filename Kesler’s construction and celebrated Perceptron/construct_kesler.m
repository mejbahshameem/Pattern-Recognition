function res= construct_kesler(td1,td2,td3,m)
    res=[];
    new=[];
    for i=1:size(td1,1)
        new=td1(i,:);
        new=[new 1];
        for j=1:m-1
            if j==1
                res=[res; new -1*new zeros(1,3) 0];
            else
                res=[res; new zeros(1,3) -1*new 0];
            end
        end
        new=[];
    end
    for i=1:size(td2,1)
        new=td2(i,:);
        new=[new 1];
        for j=1:m-1
            if j==1
                res=[res; -1*new new zeros(1,3) 0];
            else
                res=[res; zeros(1,3) new -1*new 0];
            end
        end
        new=[];
    end
     for k=1:size(td3,1)
        new=td3(i,:);
        new=[new 1];
        for j=1:m-1
            if j==1
                res=[res; -1*new zeros(1,3) new 0];
            else
                res=[res; zeros(1,3) -1*new new 0];
            end
        end
        new=[];
    end
end