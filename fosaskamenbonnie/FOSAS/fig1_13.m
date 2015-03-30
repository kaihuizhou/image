% Figure 1.13
%  gives example of a continuous-time signal
t=0:0.1:30;
x = exp(-.1*t).*sin(2/3*t);
plot(t,x)
grid
axis([0 30 -1 1]);
ylabel('x(t)')
xlabel('Time (sec)')
title('Figure 1.13')