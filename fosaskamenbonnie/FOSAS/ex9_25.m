% Example 9.25
%
%  Analog Butterworth filter design
%
%  design an 3-pole filter with a bandwidth of 5 Hz
%
[z,p,k] = buttap(3);      % 3 pole filter
[b,a] = zp2tf(z,p,k);     % convert the zeros and poles to polynomials
wb = 5*2*pi;              % new bandwidth in rad/sec
[b,a] = lp2lp(b,a,wb);    % transforms to the new bandwidth
f = 0:15/200:15;      % define the freq. in Hz for plotting
w = 2*pi*f;
[mag,phase] = bode(b,a,w);  
fprintf('2 pole filter \n')   % print to MATLAB command window
disp('b = ');disp(b');
disp('a = ');disp(a');
%
% plot versus frequency in Hz
clf
subplot(211)
plot(f,mag)
ylabel('|H| dB')
xlabel('Frequency (Hz)')
title('Example 9.25 Lowpass Filter Design')
subplot(212)
plot(f,phase)
ylabel('Angle(H), degrees')
xlabel('Frequency (Hz)')
subplot(111)