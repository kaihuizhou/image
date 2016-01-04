%  Example 9.11
% second order response
%  poles are -1 + 4j and -1 - 4j
num = 17; den = [1 2 17];
t = 0:10/300:10;
y = step(num,den,t);
env = 1-sqrt(17)/4*exp(-t);
plot(t,y,t,env,'--');
xlabel('Time (sec)')
ylabel('y(t)')
title('Second order step response')
% the following inserts a legend
hold on
plot([3 4],[.6 .6],[3 4],[.5 .5],'--')
text(4.3,.6,'y(t)')
text(4.3,.5,'envelope of decay')
hold off