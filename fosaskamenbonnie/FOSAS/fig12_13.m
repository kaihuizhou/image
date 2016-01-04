% Figure 12.13
%
N = 10;
Omega = -pi:2*pi/300:pi;
Omega = Omega + (Omega==0)*eps;   % replaces Omega = 0 with eps
W = sin(Omega*(N)/2).*exp(-j*Omega*(N-1)/2)./sin(Omega/2);
plot(Omega,abs(W));
axis([-pi pi 0 10])
title('Figure 12.13')
xlabelg('W')
ylabel('|W|')