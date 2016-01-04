% Example 8.35
% step response
num = [1 2 16];
den = [1 4 8 0];
t = 0:10/300:10;
y=step(num,den,t);
plot(t,y)
xlabel('Time (sec)')
ylabel('y(t)')
title('Step Response')
pause
% impulse response
y=impulse(num,den,t);
plot(t,y)
xlabel('Time (sec)')
ylabel('y(t)')
title('Impulse Response')
pause
% response to exponential
x = exp(-2*t);
y=lsim(num,den,x,t);
ya = exp(-2*t).*cos(2*t)-.5*exp(-2*t).*sin(2*t) + 1 - 2*exp(-2*t);
plot(t,y,t,ya,'--')  % ya is actual response from example 7.30
xlabel('Time (sec)')
ylabel('y(t)')
title('Response to exp(-t)')
text(2,.6,'----- Result computed from lsim')
text(2,.5,'- - - Analytical result from Ex. 8.30')