% Example 9.10
% second order response
%  real and equal poles
t = 0:.01:8;
p1 = -1; p2 = -2;
num = 4; den = [1 4 4];
y = step(num,den,t);
plot(t,y);
xlabel('Time (sec)')
ylabel('y(t)')
title('Second order step response: p1 = p2 = -2')
