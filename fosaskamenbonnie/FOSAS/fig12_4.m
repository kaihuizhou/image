% Figure 12.4
w = -100:.5:100;
T = 0.2;
Hhd = (1-exp(j*w*T))./w/j;
clf   % clears the figure window
subplot(211),plot(w,abs(Hhd))
title('Figure 12.4')
xlabel('Frequency (rad/sec)')
ylabel('|Hhd|')
subplot(111)