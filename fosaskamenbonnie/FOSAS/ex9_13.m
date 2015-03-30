%  Example 9.13
% second order response
%  varying wn, zeta is constant
t = 0:.05:20;
wn = .5;
zeta = .4;
num = wn^2; den = [1 2*zeta*wn wn^2];
y1 = step(num,den,t);
wn = 1;
num = wn^2; den = [1 2*zeta*wn wn^2];
y2 = step(num,den,t);
wn = 2;
num = wn^2; den = [1 2*zeta*wn wn^2];
y3 = step(num,den,t);
plot(t,y1,'-',t,y2,'--',t,y3,'-.');
xlabel('Time (sec)')
ylabel('y(t)')
title('Second order step response, zeta = 0.4')
% the following inserts a legend
hold on
plot([9 11],[.5 .5],[9 11],[.4 .4],'--',[9 11],[.3 .3],'-.');
text(12,.5,'wn = 0.5')
text(12,.4,'wn = 1')
text(12,.3,'wn = 2')
hold off