% Example 13.7
%
%  Numerical solution of the discrete time state equations
%
A = [0 -1 0;1 0 0;0 1 0]; B = [1 0 1;0 1 0;0 0 1];
C = [0 1 0;1 0 1]; D = [0 0 0;0 1 0];
x0 = [1 1 0]';     % define the I.C.
% compute the free response to the I.C.
%
n = 0:1:10;
v = zeros(length(n),3);
[y,x] = dlsim(A,B,C,D,v,x0);
x
pause
%
% compute the transfer function
[num1,den] = ss2tf(A,B,C,D,1);
[num2,den] = ss2tf(A,B,C,D,2);
[num3,den] = ss2tf(A,B,C,D,3);
disp('The denominator is: ')
den
disp('First Column of Transfer Function is: ')
num1
disp('Second Column of Transfer Function is: ')
num2
disp('Third Column of Transfer Function is: ')
num3
