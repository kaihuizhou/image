% Example 6.11
T =1;
w = 2*pi;
t1 = 0:.05:1;
sm = [cos(w*t1) cos(w*t1) -cos(w*t1) cos(w*t1) -cos(w*t1) -cos(w*t1)];
t = [0:.05:1, 1:.05:2, 2:.05:3, 3:.05:4, 4:.05:5, 5:.05:6];
clf
subplot(211),plot(t,sm,'k');
xlabel('Time (sec)')
ylabel('s_m(t)')

