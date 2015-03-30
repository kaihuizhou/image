% This plots Figure 1.21 a) and b)
%
n = -10:30;
OMEGA1 = pi/3;
OMEGA2 = 1;
x1 = cos(OMEGA1*n);
x2 = cos(OMEGA2*n);
clf
subplot(221),stem(n,x1)
xlabel('n')
ylabel('x[n]')
title('Figure 1.21 a')
axis([-10,30,-1.5,1.5]);
subplot(222),stem(n,x2)
xlabel('n')
ylabel('x[n]')
title('Figure 1.21 b')
axis([-10,30,-1.5,1.5]);
subplot(111)