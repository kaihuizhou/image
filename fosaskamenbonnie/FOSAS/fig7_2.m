% Figure 7.2
Omega = -pi:2*pi/300:pi;
a = 0.5;
X = (1-a*cos(Omega)-j*a*sin(Omega))./(1-2*a*cos(Omega)+a^2);
clf
subplot(211),plot(Omega,abs(X));
title('Figure 7.2')
xlabel('\Omega')  % uses greek characters
ylabel('|X|')
subplot(212),plot(Omega,angle(X)*180/pi);
xlabel('\Omega')
ylabel('Angle(X), degrees')
subplot(111)
% figures in text were plotted using 
%  plot(Omega/pi,abs(X)) and plot(Omega/pi,angle(X)*180/pi)
%  and the pi's in the axis labels were added by hand