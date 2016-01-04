%  Figure 12.21
%
clf
N = 20;
w1 = ones(1,N+1);   % rectangular window
w3 = hamming(N+1);
w2 = [0; hanning(N-1); 0];  % to correspond to our def. 

% plot frequency response
Omega = -pi:2*pi/1000:pi;
W1 = freqz(w1,1,Omega);
W2 = freqz(w2,1,Omega);
W3 = freqz(w3,1,Omega);
subplot(211), plot(Omega,20*log10(abs(W1)));
title('Rectangular Window')
axis([-pi pi -100 50])
xlabel('\Omega')
ylabel('|W| dB')

subplot(212), plot(Omega,20*log10(abs(W2)));
title('Hanning Window')
xlabel('\Omega')
ylabel('|W| dB')
axis([-pi pi -100 50])
pause

clf
subplot(211), plot(Omega,20*log10(abs(W3)));
title('Hamming Window')
xlabel('\Omega')
ylabel('|W| dB')
axis([-pi pi -100 50])
subplot(111)

