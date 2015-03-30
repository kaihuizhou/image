% Example 12.19
%
Omegac = .4;
N = input('Input length of FIR filter, N = ');
%  plot impulse response of ideal filter
n = -50:50;
n = n + (n==0)*eps;  %replaces zero element in k with eps
h = sin(Omegac*n)/pi./n;
clf % clears the figure
subplot(211),stem(n,h)
title('Figure 12.16,  Ideal impulse response')
ylabel('h[n]')
xlabel('n')
% plot impulse response of FIR filter
m = (N-1)/2;   % defines phase shift
n = 0:2*m+10;
n_m = n-m + (n-m==0)*eps;  %replaces zero element in k with eps
h = sin(Omegac*n_m)/pi./n_m;
w = [ones(1,N) zeros(1,length(n)-N)];
hd = h.*w;
subplot(212),stem(n,hd)
title('Figure 12.17, FIR impulse response')
xlabel('n')
ylabel('hd[n]')
pause
% plot DTFT of FIR filter
Omega = -pi:2*pi/1000:pi;
Hd = freqz(hd,1,Omega);
subplot(111),plot(Omega,abs(Hd));
axis([-pi pi 0 1.2])
title('Figure 12.18, DTFT of FIR')
ylabel('|Hd|')
xlabel('\Omega')
pause
% response of filter to xn = 0:150;
n = 0:150;
T = .2;
x = 1+cos(n*T)+cos(5*T*n);    % sampled input, x[n]
n_m = n-m + (n-m==0)*eps;  %replaces zero element in k with eps
h = sin(Omegac*n_m)/pi./n_m;
w = [ones(1,N) zeros(1,length(n)-N)];
hd = h.*w;
y = filter(hd,1,x);            % sampled output, y[n]
t = 0:.1:30;
x = 1 + cos(t) + cos(5*t);    % input, x(t)
subplot(211), plot(t,x)
title('Figure 12.19')
xlabel('Time (sec)')
ylabel('x(t)')
subplot(212), plot(n*T,y)
xlabel('Time (sec)')
ylabel('y(t)')
subplot(111)