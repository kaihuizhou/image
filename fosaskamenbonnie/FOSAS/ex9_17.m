% Example 9.17
%   Response to a sinusoid
%
t = 0:0.05:20;
num = 1; den = [1 1];
x = 10*cos(1.5*t);
y = lsim(num,den,x,t);
plot(t,y)
grid
title('Example 9.17')
ylabel('y(t)')
xlabel('Time (sec)')
