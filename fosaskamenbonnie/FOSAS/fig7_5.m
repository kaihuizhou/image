% Figure 7.5
%
Omega = -pi:2*pi/300:pi;
X = 1./(1+0.5*exp(-j*Omega));
clf
subplot(211),plot(Omega,abs(X))
%  Note, the pi's in the x-axis in the book were added manually.
ylabel('|X|')
xlabel('\Omega')
title('Figure 7.5')
subplot(212),plot(Omega,180*angle(X)/pi)
ylabel('Angle(X), degrees')
xlabel('\Omega')
subplot(111)