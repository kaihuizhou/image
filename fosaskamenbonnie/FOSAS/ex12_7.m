% Example 12.7
%
numd = [0.597 -1.1394 0.5697];  % define the digital filter
dend = [1 -1.516 0.7028];
n = 0:75;
T = 0.2;
x = 1 + cos(n*T) + cos(T*5*n);
y = filter(numd,dend,x);
% get more resolution of x(t) for plotting
t = 0:.1:15;
xa = 1 + cos(t) + cos(5*t);
clf
subplot(211),plot(t,xa);     % analog input, x(t)
xlabel('Time (sec)')
ylabel('x(t)')
title('Figure 12.10')
subplot(212),plot(T*n,y);  % output of ideal reconstructor y(t)
xlabel('Time (sec)')
ylabel('y(t)')
subplot(111)