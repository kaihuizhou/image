% Example 8.25
% for X(s)
num = [1 0 2 -4];
den = [1 4 -2];
[Q,R] = deconv(num,den)
% for V(s)
[r,p] = residue(R,den)