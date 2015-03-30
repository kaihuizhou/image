% Example 12.8
%
% send through a lowpass filter
numd = [0.0309 0.0619 0.0309];  % define digital filter
dend = [1 -1.444 0.582];
n = 0:150;
x = rand(1,length(n));   % sampled input, x[n]
% note: each time that you run this program within 
%   a session, x will change so the plots will be different
y = filter(numd,dend,x);
clf %clears figure
subplot(211), plot(n*T,x);  % input signal, x(t)
xlabel('Time (sec)')
ylabel('x(t)')
title('Figure 12.11')
subplot(212),plot(n*T,y);  % output of ideal reconstructor, y(t)
xlabel('Time (sec)')
ylabel('y(t)')
pause
%
% send through the highpass filter
%
numd = [0.5697 -1.1394 0.5697];  % define the digital filter
dend = [1 -1.516 0.7028];
y = filter(numd,dend,x);
subplot(211),plot(n*T,x);     % input to system, x(t)
xlabel('Time (sec)')
ylabel('x(t)')
title('Figure 12.12')
subplot(212),plot(T*n,y);  % output of ideal reconstructor, y(t)
xlabel('Time (sec)')
ylabel('y(t)')
subplot(111)