% Example 12.4
%
N = 2;    % number of poles
T = .2;   % sampling period
wc = 2;   % analog cutoff frequency
Omegac = wc*T/pi;    % normalized digital cutoff frequency
[numd,dend] = butter(N,Omegac)