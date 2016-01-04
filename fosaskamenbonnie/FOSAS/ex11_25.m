% Example 11.25
%
num = [0 1];
den = [1 -.5];
OMEGA = -pi:pi/150:pi;
H = freqz(num,den,OMEGA);
clf  % clears current figure
subplot(211),plot(OMEGA,abs(H));
% The figure in the text was generated using
%    subplot(211),plot(OMEGA/pi,abs(H));
% and the pi's were added by hand.
title('Figure 11.9')
ylabel('|H|')
xlabel('\Omega')
axis([-pi pi .5 2])
subplot(212),plot(OMEGA,180/pi*unwrap(angle(H)));
ylabel('Angle(H), degrees')
xlabel('\Omega')
axis([-pi pi -600 0])
subplot(111)