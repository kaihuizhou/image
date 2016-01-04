% plots Fourier transform of triangular pulse
%
w = -50:.3:50;
tau = 1;
V = tau/2*sin(tau*w/4).^2./(tau*w/4).^2;
% alternately, use V = tau/2*sinc(tau*w/4/pi).^2;
clf
subplot(211);plot(w,V)
xlabel('Frequency (rad/sec)')
ylabel('V') 
title('Figure 4.31')
subplot(111)