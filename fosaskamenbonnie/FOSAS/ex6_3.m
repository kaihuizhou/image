% Example 6.3
t=0:.01:5;
x=cos(pi*t);
spm=cos(10*pi*t+5*x);
sfm = cos(10*pi*t+2*pi*5/2/pi*sin(pi*t));
clf
subplot(311),plot(t,x);
xlabel('Time (sec)')
ylabel('x(t)')
subplot(312),plot(t,spm);
xlabel('Time (sec)')
ylabel('s(t) for PM')
subplot(313),plot(t,sfm);
xlabel('Time (sec)')
ylabel('s(t) for FM')
subplot(111)