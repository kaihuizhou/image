% Figure 9.20
num = [1 1];
den = [1 20];
w = 0:.01:40;
[mag,phase] = bode(num,den,w);
clf
subplot(211),plot(w,mag);
xlabel('Frequency (rad/sec)')
ylabel('|H|')
subplot(212),plot(w,phase);
xlabel('Frequency (rad/sec)')
ylabel('Angle(H), degrees')
subplot(111)