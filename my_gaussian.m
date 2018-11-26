function g=my_gaussian(Filter_size, sigma)
size=Filter_size;
g=zeros(size,size);
for i=-(size-1)/2:(size-1)/2
    for j=-(size-1)/2:(size-1)/2
        x0=(size+1)/2;
        y0=(size+1)/2;
        x=i+x0;
        y=j+y0;
        g(y,x)=exp(-((x-x0)^2+(y-y0)^2)/2/sigma/sigma);
    end
end
sum1=sum(g);
sum2=sum(sum1);
g=g/sum2;
end