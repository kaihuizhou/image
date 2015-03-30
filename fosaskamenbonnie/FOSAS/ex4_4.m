% computes trigonometric Fourier series for Example 4.4
% used to generate Figures 4.8 - 4.11
t = -3:6/1000:3;
N = input('Number of harmonics ');
c0 = 0.5;
w0 = pi;
xN = c0*ones(1,length(t));   % dc component
for k=1:2:N,                 % even harmonics are zero
  theta = ((-1)^((k-1)/2) - 1)*pi/2;
  xN = xN + 2/k/pi*cos(k*w0*t + theta);
end
plot(t,xN)
title(['Example 4.4, N = ',num2str(N)])
xlabel('Time (sec)')
ylabel(['x',num2str(N),'(t)'])
