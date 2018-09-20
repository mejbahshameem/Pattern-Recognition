function l= calculateLikelihood(x,mean0,variance)
    a=exp(-1*((x-mean0)^2/(2*variance)));
    b=(1/sqrt(2*pi*variance));
   l=a*b;
end