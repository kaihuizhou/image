% Example 11.20
%
num = [1 -1 0];
den = [1 1.5 .5];
n = 0:20;
x = ones(1,length(n));
zi = [-1.5*2-0.5*1, -0.5*2];
y = filter(num,den,x,zi);
title('Figure 11.2')
stem(n,y)
xlabel('n')
ylabel('y[n]')