% Figure 5.3
RC = 0.001;
t = -.1:.2/1000:.1;
w1 = 100; w2 = 3000;
Hw1 = (1/RC)/(j*w1+1/RC);
Hw2 = (1/RC)/(j*w2+1/RC);
x = cos(w1*t) + cos(w2*t);
y = abs(Hw1)*cos(w1*t+angle(Hw1))+abs(Hw2)*cos(w2*t+angle(Hw2));
clf
subplot(211),plot(t,x)
title('Figure 5.3')
ylabel('x(t)')
xlabel('Time (sec)')
subplot(212),plot(t,y);
xlabel('Time (sec)')
ylabel('y(t)')
subplot(111)