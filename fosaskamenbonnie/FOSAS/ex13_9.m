% Example 13.9
%
%  Discretization of a Continuous System
%
kf = .1; m=1;
A = [0 1;0 -kf/m]; B = [0; 1/m]; C = [1 0];
T = 0.1;
format long    % to show more resolution
[Ad,Bd] = c2d(A,B,T)
format short 