% Produces Figure 4.13
%
% demonstrates the relationship between the 
%   Fourier Series and the Fourier Transform
%
T = input('Input T ')
w0 = 2*pi/T;
%  plot for frequencies -30 to 30
N = 30/w0;
c0 = 1/T;
k=1:N;
ck = [sin(k*pi/T)/pi./k];
w = [w0*k 0 -w0*k];
Tck = T*abs([ck c0 ck]);
clf
subplot(211),stem(w,Tck)
%  The plot in the text was generated using stem(w/pi,Tcn)
%     and the pi's along the x axis were added by hand.  
%     The x label was also added by hand.     
axis([-30 30 0 1.25])
title(['Figure 4.13, T = ',num2str(T)])
ylabel('T|ck|')
xlabel('Frequency (rad/sec)')
subplot(111)