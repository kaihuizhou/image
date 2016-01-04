% Example 12.5
%
N = 2;    % number of poles
Rp = 3;   % passband ripple
T = .2;   % sampling period
wc = 2;   % analog cutoff frequency
Omegac = wc*T/pi;    % normalized digital cutoff frequency
[numd,dend] = cheby1(N,Rp,Omegac,'high');
numd = real(numd) % strips off negligible imag part introduced in roundoff
dend = real(dend)
w = -pi:2*pi/200:pi;
H = freqz(numd,dend,w);
plot(w,abs(H))
% Figure in text uses command plot(w/pi,abs(H))
%   and the pi's are added by hand.
axis([-pi pi 0 1])
title('Figure 12.7')
ylabel('|Hd|')
xlabel('\Omega')