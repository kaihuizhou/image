% Figure 1.17
% 
n=0:30;
x = exp(-.1*n).*sin(2/3*n);
stem(n,x)
axis([0 30 -1 1]);
ylabel('x[n]')
xlabel('n')
title('Figure 1.17')