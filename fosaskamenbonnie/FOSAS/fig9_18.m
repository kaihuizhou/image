% Figure 9.18
num = 2;
den = [1 2];
w = 0:0.05:10;
[mag,phase] = bode(num,den,w);
clf
subplot(211)
plot(w,mag);
xlabel('Frequency (rad/sec)')
ylabel('|H|')
title('Figure 9.18')
subplot(212),plot(w,phase);
axis([0 10 -90 0])
xlabel('Frequency (rad/sec)')
ylabel('Angle(H), degrees')
subplot(111)