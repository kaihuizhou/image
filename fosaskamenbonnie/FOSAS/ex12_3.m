% Example 12.3
%
[z,p,k] = buttap(2);  % creates a 2-pole Butterworth filter
[num,den] = zp2tf(z,p,k);  % poles & zeros to transfer function 
% need to transform the cutoff frequency to 2
wc = 2;
[num,den] = lp2lp(num,den,wc);
T = 0.2;
disp('Digital Filter')
[numd,dend] = bilinear(num,den,1/T)