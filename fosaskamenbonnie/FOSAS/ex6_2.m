% Example 6.2
t1=0:.01:2;t2=2:.01:4;
x=[1-t1 t2-3];
t=[t1 t2];
s=(1+.8*x).*cos(5*pi*t);
clf
subplot(211),plot(t,s);
xlabel('Time (sec)')
ylabel('s(t)')
subplot(111)

