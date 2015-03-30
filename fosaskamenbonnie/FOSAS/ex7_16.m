% Example 7.16
n=0:16; L = 32;
h = (.8).^n;
clf
subplot(211), stem(n,h)
xlabel('n')
ylabel('h[n]')
axis([0 16 0 1])
pause
Hk = fft(h,L);
k = 0:31;
subplot(211),stem(k,abs(Hk))
title('Example 7.16, plot of Hk')
ylabel('|Hk|')
xlabel('k')
axis([0 31 0 5])
subplot(212),stem(k,angle(Hk)*180/pi)
ylabel('Angle(Hk), degrees')
xlabel('k')
axis([0 31 -100 100])
pause
clf
x = [ones(1,10)];
Xk = fft(x,L);
subplot(211),stem(k,abs(Xk))
title('Plot of Xk')
ylabel('|Xk|')
xlabel('k')
axis([0 31 0 10])
subplot(212),stem(k,angle(Xk)*180/pi)
ylabel('Angle(Xk), degrees')
xlabel('k')
axis([0 31 -200 200]) 
pause
Yk = Hk.*Xk;
y = ifft(Yk,L);
n=0:31;
clf
subplot(211),stem(n,real(y))   
% y should be real, but may have some negligible imag part
title('Plot of y[n]')
ylabel('y[n]')
xlabel('n')
axis([0 31 0 5])
subplot(111)