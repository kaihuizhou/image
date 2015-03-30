% Example 11.18
%
num = [6 2 -1];
den = [1 -1 -1 1];
[r,p] = residue(num,den)
disp('Warning, this is a numerically sensitive problem due')
disp('to the repeated poles. The answer shown may not be')
disp('correct. An alternative for this problem is to use ')
disp('the command residuez which may give a different answer.')
pause
% numerical method
num = [num 0];
x = dimpulse(num,den,20)