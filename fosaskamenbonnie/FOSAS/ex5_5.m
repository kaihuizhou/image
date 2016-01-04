% Example 5.5
RC = input('Input RC ');
%  perform Frequency Domain analysis
w = -40:.3:40;
X = 2*sin(w/2)./w;
H = (1/RC)./(j*w+1/RC);
Y = X.*H;
magY = abs(Y);
angY = 180*angle(Y)/pi;
%  plot X(w)
clf
subplot(211),plot(w,abs(X));
ylabel('|X|')
xlabel('Frequency (rad/sec)')
title(['Example 5.5, RC = ' num2str(RC)]);
subplot(212),plot(w,180*angle(X)/pi);
ylabel('Angle(X), degrees')
xlabel('Frequency (rad/sec)')
pause
%  plot H(w)
subplot(211),plot(w,abs(H));
ylabel('|H|')
xlabel('Frequency (rad/sec)')
title(['Example 5.5, RC = ' num2str(RC)]);
subplot(212),plot(w,180*angle(H)/pi);
ylabel('Angle(H), degrees')
xlabel('Frequency (rad/sec)')
pause
%  plot Y(w)
subplot(211),plot(w,magY);
ylabel('|Y|')
xlabel('Frequency (rad/sec)')
title(['Example 5.5, RC = ' num2str(RC)]);
subplot(212),plot(w,angY);
ylabel('Angle(Y), degrees')
xlabel('Frequency (rad/sec)')
pause
clf
% 
%  perform time domain analysis
%  use the numerical convolution described in Example 3.10
%  for accuracy, choose T <= RC/10
if RC >= .1, 
  T = .01; 
  kh = 0:400;        % defines indices for h,
                     %  corresponds to t=0 to t=4
  h = exp(-1/RC*kh*T)/RC;
  kx = -60:100;      % defines indices for x,
                     %  corresponds to t=.6 to t=1
  x = [zeros(1,10) ones(1,101) zeros(1,50)];
elseif RC >=0.01,
  T = 0.001;
  kh = 0:400;
  h = exp(-1/RC*kh*T)/RC;
  kx = -600:1000;
  x = [zeros(1:100) ones(1,1001) zeros(1,500)];
else,
  error('RC is too small for accurate results using the numerical convolution method')
end
  y = conv(x,h*T);
  ky = kx(1)+kh(1):kx(length(kx))+kh(length(kh));
clf
subplot(211), plot(ky*T,y)
title(['Pulse Response, RC = ' num2str(RC)])
ylabel('y(t)')
xlabel('Time (sec)')
subplot(111)