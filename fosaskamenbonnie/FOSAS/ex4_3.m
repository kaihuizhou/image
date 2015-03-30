% computes exponential Fourier series for Example 4.3
% used to generate Figures 4.8 - 4.11
t = -3:6/1000:3;
N = input('Number of harmonics ');
c0 = 0.5;
w0 = pi;
xN = c0*ones(1,length(t));   % dc component
for k=1:N,
  ck = 1/k/pi*sin(k*pi/2);         
  c_k = ck;
  xN = xN + ck*exp(j*k*w0*t) + c_k*exp(-j*k*w0*t);
end
plot(t,xN)
title(['Example 4.3, N = ',num2str(N)])
xlabel('Time (sec)')
ylabel(['x',num2str(N),'(t)'])
