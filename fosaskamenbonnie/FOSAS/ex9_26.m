% Example 9.26
%
%  Analog Chebyshev filter design for a highpass filter
%
%
w0 = 4;                   % cutoff frequency
% create a 3 pole Chebyshev Type I filter with 3-dB passband
[z,p,k] = cheb1ap(3,3);   % 3 pole Chebyshev Type I filter; 
[b,a] = zp2tf(z,p,k);     %coverts the zeros and poles to polynomials
[b,a]=lp2hp(b,a,w0);      % converts the lowpass filter to a highpass
                          %  with cutoff frequency w0
% plot the frequency response
w = 0:.025:10;
[mag,phase] = bode(b,a,w);     % numerator and denom. must be row vectors
phase = unwrap(phase);         %   removes jumps of 360 deg for smoother plot
disp('b = ');disp(b');
disp('a = ');disp(a');
%
clf
subplot(211)
plot(w,mag)
ylabel('|H|')
xlabel('Frequency (rad/sec)')
title('Example 9.25 Highpass Filter Design')
subplot(212)
plot(w,phase)
ylabel('Angle(H), degrees')
xlabel('Frequency (rad/sec)')
subplot(111)