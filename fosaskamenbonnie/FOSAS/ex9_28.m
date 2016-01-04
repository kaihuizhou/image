% Example 9.28
%
%  Bandstop filter with a stopband from 4 to 6 rad/sec
%
w0 = 5; 		       % center of stopband
wb = 2;			       % width of stopband
[z,p,k] = cheb1ap(3,3);        % 3 pole filter with 3-dB ripple
[b,a] = zp2tf(z,p,k);          % convert the zeros and poles to polynomials
[b,a] = lp2bs(b,a,w0,wb);      % convert to a bandstop filter
w = 0:.02:10;
[mag,phase] = bode(b,a,w);
clf
subplot(211)
plot(w,mag)
ylabel('|H|')
xlabel('Frequency (rad/sec)')
title('Example 9.28 Bandstop Filter Design')
subplot(212)
plot(w,phase)
ylabel('Angle(H), degrees')
xlabel('Frequency (rad/sec)')
subplot(111)
disp('b = ');disp(b');
disp('a = ');disp(a');
