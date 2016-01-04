% Example 11.17
%
num = [1 0 0 1];
den = [1 -1 -1 -2 0];
[r,p] = residue(num,den)
pause
% numerical method
den = [1 -1 -1 -2];
x = dimpulse(num,den,20)