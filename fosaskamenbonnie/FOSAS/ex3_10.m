% Example 3.10

%
% numerical convolution of a continuous time system
%
% The example is run with 3 different values of T.
% For each value of T, the numerical convolution is 
% compared to the exact answer.  The response is calculated 
% for 40 sec
% 
% T = 2 sec
% numerical convolution
% to determine n, note that y(40) = y(20*2)
n=0:20;                 
kf = 0.1; m = 1; T = 2;
h = (1-exp(-kf*n*T/m))/kf;
x = [ones(1,5) -ones(1,5) zeros(1,10)];
y = conv(T*h,x);
%
% exact solution
t1 = 0:.1:9.9;		% defines the segments of t
t2 = 10:.1:19.9;
t3 = 20:.1:40;
ya = [100*(0.1*t1-1+exp(-0.1*t1)),-100*(0.1*t2-3+(2*exp(1)-1)...
*exp(-0.1*t2)),100*(1-2*exp(1)+exp(1)^2)*exp(-0.1*t3)];
t = [t1,t2,t3];
plot(n*T,y(1:length(n)),'o',t,ya,'-')
title('Example 3.10, T = 2 sec')
xlabel('Time (sec)')
ylabel('y(t)')
% insert legend
hold on
plot([23 24 25],[50 50 50],'o',[23 24 25],[45 45 45]);
text(26,50,'Approximate solution')
text(26,45,'Exact solution')
hold off
pause
%
%  Rerun with T = 1 sec
% convolution
n=0:40;
kf = 0.1; m = 1; T = 1;
h = (1-exp(-kf*n*T/m))/kf;
x = [ones(1,10) -ones(1,10) zeros(1,20)];
y = conv(T*h,x);
plot(n*T,y(1:length(n)),'o',t,ya,'-')
title('Example 3.10, T = 1 sec')
xlabel('Time (sec)')
ylabel('y(t)')
% insert legend
hold on
plot([23 24 25],[50 50 50],'o',[23 24 25],[45 45 45]);
text(26,50,'Approximate solution')
text(26,45,'Exact solution')
hold off
pause
%
% Rerun with T = 0.5
% convolution
n=0:80;
kf = 0.1; m = 1; T = .5;
h = (1-exp(-kf*n*T/m))/kf;
x = [ones(1,20) -ones(1,20) zeros(1,40)];
y = conv(T*h,x);
%
% exact solution
plot(n*T,y(1:length(n)),'o',t,ya,'-')
title('Example 3.10, T = 0.5 sec')
xlabel('Time (sec)')
ylabel('y(t)')
% insert legend
hold on
plot([23 24 25],[50 50 50],'o',[23 24 25],[45 45 45]);
text(26,50,'Approximate solution')
text(26,45,'Exact solution')
hold off
