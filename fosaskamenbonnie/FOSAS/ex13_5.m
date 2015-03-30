% Example 13.5
%
%  Numerical solution of the state equations
%
A = [-3 1;-2 -1]; B = [3 2;2 1]; 
C = [1 2;-2 2;1 -1]; D = zeros(3,2);
t = 0:.04:5;     % simulate for 0<t<8 sec
% compute and plot the free response
%
x0 = [1 1]';     % define the I.C.
v = zeros(length(t),2);   % zeros the input vector
[y,x] = lsim(A,B,C,D,v,t,x0);
clf  % clears current figure
subplot(211),
plot(t,x(:,1),t,x(:,2));
title('Figure 13.7: Free response for Example 13.5');
xlabel('Time (sec)')
ylabel('x(t)')
text(.75,.3,'x1') 
text(.5,-.1,'x2')
subplot(212),
plot(t,y(:,1),t,y(:,2),t,y(:,3));
axis([0 5 -2 4])
xlabel('Time (sec)')
ylabel('y(t)')
text(.4,1.4,'y1') 
text(1.25,.5,'y2') 
text(.5,-.8,'y3');
pause
%
% compute the response to an input of v = [u e^-t]'
v(:,1) = ones(length(t),1);
v(:,2) = exp(-t)';
x0 = [0 0]';
[y,x] = lsim(A,B,C,D,v,t,x0);
subplot(211),
plot(t,x(:,1),t,x(:,2));
title('Figure 13.8: Forced response for Example 13.5');
xlabel('Time (sec)')
ylabel('x(t)')
text(3,1.2,'x1') 
text(2,.1,'x2')
subplot(212),
plot(t,y(:,1),t,y(:,2),t,y(:,3));
xlabel('Time (sec)')
ylabel('y(t)')
text(.75,2.6,'y1') 
text(2,1.8,'y2')
text(1,-1.8,'y3');
subplot(111)