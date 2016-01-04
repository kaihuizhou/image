%  Example 9.8
% first order step response
%
p = -20; 
t = 0:.001:.4;
num = 2*20; den = [1 -p];
y = step(num,den,t);
plot(t,y);
xlabel('Time (sec)')
ylabel('y(t)')
title('First order step response')
grid