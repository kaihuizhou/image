% Example 11.22
%
num = [2.898 -1.449 0];
den = [1 -.866 .25];
n = 0:20;
y = dstep(num,den,21);
stem(n,y)
title('Figure 11.3')
xlabel('n')
ylabel('y[n]')