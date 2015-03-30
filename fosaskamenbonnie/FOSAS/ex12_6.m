% Example 12.6
%
numd = [0.0309 0.0619 0.0309];  % define digital filter
dend = [1 -1.444 0.5682];
n = 0:80;
T = 0.2;
x = 1 + cos(n*T) + cos(5*n*T);   % sampled input, x[n]
y = filter(numd,dend,x);
clf  % clears figure
subplot(211),stem(n,x(1:length(n)));  % sampled input, x[n]
xlabel('n')
ylabel('x[n]')
title('Figure 12.8')
subplot(212),stem(n,y(1:length(n)));  % filter output, y[n]
xlabel('n')
ylabel('y[n]')
pause
% plot x(t) with smaller resolution
t = 0:.06:15;
xa = 1 + cos(t) + cos(5*t);
subplot(211), plot(t,xa);  % analog input, x(t)
xlabel('Time (sec)')
ylabel('x(t)')
title('Figure 12.9')
subplot(212),plot(n*T,y);  % output of ideal reconstructor
xlabel('Time (sec)')
ylabel('y(t)')
subplot(111)