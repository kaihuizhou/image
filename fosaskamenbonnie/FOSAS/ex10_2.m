% Example 9.2
t = 0:.4:50;
Kp = 100;
num = .06*Kp;
den = [1 .01+.001*Kp];
y1 = step(num,den,t);
Kp = 200;
num = .06*Kp;
den = [1 .01+.001*Kp];
y2 = step(num,den,t);
Kp = 500;
num = .06*Kp;
den = [1 .01+.001*Kp];
y3 = step(num,den,t);
plot(t,y1,t,y2,t,y3);
xlabel('Time (sec)')
ylabel('y(t)')
% the following adds a legend
hold on
plot([13 21],[39 37],[9 21],[45 41],[5 21],[52 45])
text(22,45,'Kp = 500')
text(22,41,'Kp = 200')
text(22,37,'Kp = 100')
hold off