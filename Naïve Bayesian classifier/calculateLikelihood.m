function like= calculateLikelihood(a,mean,variance)
    a=exp(-1*((a-mean)^2/(2*variance)));
    b=(1/sqrt(2*pi*variance));
    like=a*b;
end