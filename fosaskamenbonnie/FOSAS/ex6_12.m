% Example 6.12
T =1;
w = 2*pi;
t1 = 0:.02:1;
sm = [sin(w*t1) sin(w*t1) sin(2*w*t1) sin(w*t1) sin(2*w*t1) sin(2*w*t1)];
t = [0:.02:1, 1:.02:2, 2:.02:3, 3:.02:4, 4:.02:5, 5:.02:6];
clf
subplot(211),plot(t,sm,'k');
xlabel('Time (sec)')
ylabel('s_m(t)')