%  Example 9.16
% third order response
%   shows dominant poles
% no zeros
num1 = 25; den1 = [1 7 25];
num2 = 1; den2 = [1 1];
num = conv(num1,num2);  % this multiplies the polynomials
den = conv(den1,den2);
t = 0:0.01:4;
y1 = step(num,den,t);
% with a zero at 0.9
num2 = [1 0.9]/0.9;
num = conv(num1,num2);
y2 = step(num,den,t);
plot(t,y1,t,y2);
xlabel('Time (sec)')
ylabel('y(t)')
title('Third order step response, no zeros')
text(1.2,.5,'no zeros')
text(.5,.8,'zero at -0.9')