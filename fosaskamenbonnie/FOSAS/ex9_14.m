%  Example 9.14
% second order response
%  varying zeta, wn is constant
t = 0:.05:10;
wn = 2;
zeta = .5;
k = 4;
num = k; den = [1 2*zeta*wn wn^2];
y1 = step(num,den,t);
zeta = 1;
num = k; den = [1 2*zeta*wn wn^2];
y2 = step(num,den,t);
zeta = 1.5;
num = k; den = [1 2*zeta*wn wn^2];
y3 = step(num,den,t);
plot(t,y1,'-',t,y2,'--',t,y3,'-.');
xlabel('Time (sec)')
ylabel('y(t)')
title('Second order step response')
% the following inserts a legend
hold on
plot([5 6],[.5 .5],[5 6],[.4 .4],'--',[5 6],[.3 .3],'-.')
text(6.5,.5,'zeta = 0.5')
text(6.5,.4,'zeta = 1')
text(6.5,.3,'zeta = 1.5')
hold off