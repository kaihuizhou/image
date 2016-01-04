% Example 6.1
t1=0:.01:2;t2=2:.01:4;
x=[1-t1 t2-3];
t=[t1 t2];
s=x.*cos(5*pi*t);
clf
subplot(211),plot(t,x);
xlabel('Time (sec)')
ylabel('x(t)')
subplot(212),plot(t,s);
xlabel('Time (sec)')
ylabel('x(t)cos(5*pi*t)')
subplot(111)