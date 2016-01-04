% Example 9.27
%
%  Analog Butterworth filter design for a bandpass filter
%
%
w0 = 4;                   % center of band
wb = 2;                   % bandwidth
[z,p,k] = buttap(3);      % 3 pole Butterworth filter
[b,a] = zp2tf(z,p,k);     % convert the zeros and poles to polynomials
[b,a]=lp2bp(b,a,w0,wb);   % converts the lowpass filter to a bandpass                          % centered at w0 with bandwidth wb
% plot the frequency response
w = 0:.05:10;
[mag,phase] = bode(b,a,w);
clf
subplot(211)
plot(w,mag)
ylabel('|H|')
title('Example 9.27')
xlabel('Frequency (rad/sec)')
subplot(212)
plot(w,phase)
ylabel('Angle(H),degrees')
xlabel('Frequency (rad/sec)')
ytick = [-500 -270 0 270 500];
set(gca,'ytick',ytick)
subplot(111)
disp('b = ');disp(b');
disp('a = ');disp(a');