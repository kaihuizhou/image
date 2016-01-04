% Example 5.4
t = -3:6/800:3;
w0 = pi;
k=1:50;
%  first plot the amplitude spectrum for x and for y
ckx = sin(k*pi/2)./k/pi;
ckx = [ckx(length(ckx):-1:1), .5, ckx];
k = -50:50;
clf
subplot(211),stem(k*pi,abs(ckx));
axis([-80 80 0 .5])
xlabel('Frequency (rad/sec)')
ylabel('|ckx|')
RC = input('Input value of RC: ');
H = (1/RC)./(j*k*w0 + 1/RC);
cky = ckx.*H;
subplot(212),stem(k*pi,abs(cky));
xlabel('Frequency (rad/sec)')
ylabel('|cky|')
axis([-80 80 0 .5])
pause
clf
%
% compute y(t)
c0 = .5; H0 = 1; N = 50;
y = c0*H0*ones(1,length(t));
counter = 0;
for k=1:2:N,
  if counter == 0,
     ck = 1/k/pi;          
     counter = 1;
  else
     ck = -1/k/pi;
     counter = 0;
  end
  H = (1/RC)/(j*k*w0 + 1/RC);
  y = y + ck*H*exp(j*k*w0*t) + ck*conj(H)*exp(-j*k*w0*t);  % note ck is real
end
clf
subplot(211),plot(t,y)
title(['Example 5.4 RC = ' num2str(RC)])
xlabel('Time (sec)')
ylabel('y(t)')
axis([-3 3 -.5 1.5])
subplot(111)