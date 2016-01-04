%  Example 9.9
% second order response
%  real poles
t = 0:.01:8;
p1 = -1; p2 = -2;
num = 2; den = [1 3 2];
y = step(num,den,t);
plot(t,y);
xlabel('Time (sec)')
ylabel('y(t)')
title('Second order step response: p1 = -1 and p2 = -2')