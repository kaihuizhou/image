%  Example 2.3
a=[-1.5 1]; b=[0 0 2];
y0 = [2 1]; x0 = [0 0];
n=0:20;
x = ones(1,length(n));
y = recur(a,b,n,x,x0,y0);
stem(n,y)
xlabel('n')
ylabel('y[n]')
title('Example 2.3')