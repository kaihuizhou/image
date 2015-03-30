% Example 10.4
Kp = 500; Ki = 1;
num = .06*[Kp Ki];
den = [1 .01*(1+.1*Kp) .001*Ki];
t=0:.1:40;
y1=step(num,den,t);
Ki = 5;
num = .06*[Kp Ki];
den = [1 .01*(1+.1*Kp) .001*Ki];
y2=step(num,den,t);
Ki = 10;
num = .06*[Kp Ki];
den = [1 .01*(1+.1*Kp) .001*Ki];
y3=step(num,den,t);
plot(t,y3,t,y2,'--',t,y1,'-.')
xlabel('Time (sec)')
ylabel('v(t)')
% the following adds a legend
hold on
plot([15 18],[40 40],[15 18],[34 34],'--',[15 18],[28 28],'-.')
text(20,40,'KI = 10')
text(20,34,'KI = 5')
text(20,28,'KI = 1')
hold off