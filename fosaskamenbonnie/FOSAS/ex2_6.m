%  Example 2.6
%
R = 1; C = 1; T = .2;
a =-(1-T/R/C); b = [0 T/C];
y0 = 0; x0 = 1;
n = 1:40;
x = ones(1,length(n));
y1 = recur(a,b,n,x,x0,y0);          % approximate solution
% compare to exact solution 
t = 0:.04:8;
y2 = 1 - exp(-t);        % exact solution
%
y1 = [y0 y1];            % augments I.C. onto vector for plotting
n = 0:40;		     % redefines n accordingly
plot(n*T,y1,'o',t,y2,'-')
%
% the following inserts a legend
hold on
plot([2 2.3 2.6],[.6 .6 .6],'o',[2 2.3 2.6],[.5 .5 .5])
title('Example 2.6');
xlabel('Time (sec)')
ylabel('y(t)')
text(3,.6,'Approximate solution')
text(3,.5,'Exact solution')
hold off