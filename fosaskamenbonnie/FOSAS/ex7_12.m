% Example 7.12
N = 26;
n=0:N-1;
x = .9.^n;
clf
subplot(211),stem(n,x)
title('Example 7.12, x[n]')
ylabel('x[n]')
xlabel('n')
pause
%  plot the DTFT
Omega = 0:2*pi/400:2*pi;
X = 1./(1-.9*exp(-j*Omega));
subplot(211),plot(Omega,abs(X));
title('DTFT of x[n]')
ylabel('|X|');
axis([0 2*pi 0 10])
%
% truncate x at n = 21 and take a 21 point DFT
N = 21;
x = x(1:N);
Xk=dft(x);
k = 0:N-1;
subplot(212),stem(k,abs(Xk))
title('21-Point DFT of x[n]')
ylabel('|Xk|')
xlabel('k')
text(1,8.6,'8.9')
pause
%
% Rerun for x truncated after n=10 and take a 21 point DFT
x(12:21)=zeros(1,10);
n = 0:N-1;
clf
subplot(211),stem(n,x)
title('Truncated x[n]')
ylabel('x[n]')
xlabel('n')
pause
%
% replot the DTFT of x[n] for comparison
subplot(211),plot(Omega,abs(X));
title('DTFT of x[n]')
ylabel('|X|');
axis([0 2*pi 0 10])
%
% compute and plot the DFT of the truncated x[n]
Xk=dft(x);
subplot(212),stem(k,abs(Xk));
title('21-Point DFT of truncated x[n]')
ylabel('|Xk|')
xlabel('k')
text(1,6.6,'6.82')
subplot(111)