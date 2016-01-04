% Example 2.7
% exact solution is plotted with a solid line
T = 0.2; R = 2;L=1;C=1;
vc0=[1 1-T];x0=[0 sin(T)];
n=2:40;
c=[R*T/L-2 1-R*T/L+T^2/L/C];
d=[0 0 T^2/L/C];
x=sin(T*n);
vc1=recur(c,d,n,x,x0,vc0);
vc1=[vc0 vc1];     % augments the I.C. onto the solution
n = 0:40;          % define n accordingly
%
% calculate exact answer
t=0:.04:8;
vc2 = 0.5*((3+t).*exp(-t)-cos(t));
plot(n*T,vc1,'o',t,vc2,'-')
% the following inserts a legend
hold on
plot([.5 .8 1.1],-.3*[1 1 1],'o',[.5 .8 1.1],-.15*[1 1 1])
title('Example 2.7, T=0.2')
ylabel('vc(t)')
xlabel('Time (sec)')
text(1.3,-.15,'Exact solution')
text(1.3,-.3,'Approximate solution, T=0.2')
hold off
pause
%
% rerun with T = 0.1
T = 0.1; R = 2;L=1;C=1;vc0=[1 1-T];x0=[0 sin(T)];
n=2:80;
a=[R*T/L-2 1-R*T/L+T^2/L/C];
b=[0 0 T^2/L/C];
x=sin(T*n);
vc1=recur(a,b,n,x,x0,vc0);
vc1=[vc0 vc1];  n = 0:80;
%
plot(n*T,vc1,'o',t,vc2,'-')
% insert the legend
hold on
plot([.5 .8 1.1],-.3*[1 1 1],'o',[.5 .8 1.1],-.15*[1 1 1])
title('Example 2.7, T=0.1')
ylabel('vc(t)')
xlabel('Time (sec)')
text(1.3,-.15,'Exact solution')
text(1.3,-.3,'Approximate solution, T=0.1')
hold off