% Example 10.5
%  Kd = 0.19; Kp = 0.2;
num = [1.9 2];
den = [1 2 2];
t = 0:.05:10;
y1=step(num,den,t);
Kd = 0.19; Kp = 0.123;
num = 10*[Kd Kp];
den = [1 .1+10*Kd 10*Kp];
y2=step(num,den,t);
plot(t,y1,t,y2)
xlabel('Time (sec)')
ylabel('v(t)')
% the following adds a legend
hold on
plot([2 3],[1.19 1.25],[3.8 4.8],[1.08 1.14])
text(5,1.14,'KP = 0.123')
text(3.2,1.25,'KP = 0.2')
hold off