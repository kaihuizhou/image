% Example 13.8
%
%  similarilty transformation
%
A = [0 1; -3 -2]; B = [0 1]'; C = [2 1]; D = 0;
P = [ 1 1; 0 1];
Abar = P*A*inv(P)
Bbar = P*B
Cbar = C*inv(P)
Dbar = D
% the last 4 lines can be replaced by the following command
%[Abar,Bbar,Cbar,Dbar] = ss2ss(A,B,C,D,P);
pause
% to obtain the transfer function
disp('Transfer function of original model:')
[num,den] = ss2tf(A,B,C,D,1)
pause
disp('Transfer function of transformed model:')
[num1,den1] = ss2tf(Abar,Bbar,Cbar,Dbar,1)