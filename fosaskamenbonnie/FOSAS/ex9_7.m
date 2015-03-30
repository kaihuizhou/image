%  example 9.7
% first order step response
%
p = 1; 
t = 0:.01:2;
num = 1; den = [1 -p];
y1 = step(num,den,t);
p = 2; 
den = [1 -p];
y2 = step(num,den,t);
p = 3; 
den = [1 -p];
y3 = step(num,den,t);
plot(t,y1,'-',t,y2,'--',t,y3,'-.');
xlabel('Time (sec)')
ylabel('y(t)')
title('First order step response')
% the following commands inserts the legend into the plot
text(1.7,9,'p = 1')
text(1.65,25,'p = 2')
text(1.3,40,'p = 3')
pause
%
p = -1; 
t = 0:.05:10;
num = -p; den = [1 -p];
y1 = step(num,den,t);
p = -2; 
num = -p; den = [1 -p];
y2 = step(num,den,t);
p = -5; 
num = -p; den = [1 -p];
y3 = step(num,den,t);
plot(t,y1,'-',t,y2,'--',t,y3,'-.');
xlabel('Time (sec)')
ylabel('y(t)')
title('First order step response')
% the following inserts a legend
hold on
plot([4 4.75],[.6 .6],[4 4.75],[.5 .5],'--',[4 4.75],[.4 .4],'-.')
text(5,.6,'p = -1')
text(5,.5,'p = -2')
text(5,.4,'p = -5')
hold off