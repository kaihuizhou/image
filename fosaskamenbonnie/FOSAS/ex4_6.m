% Gives plot for Example 4.6
%
w = 0:0.2:50;
b = 10;
X = (1)./(b+j*w);
clf
subplot(211),plot(w,abs(X));	% plot magnitude of X
title('Example 4.6')
xlabel('Frequency (rad/sec)')
ylabel('|X|')
subplot(212),plot(w,angle(X)*180/pi); % plot angle of X in deg.
xlabel('Frequency (rad/sec)')
ylabel('Angle(X), degrees')
subplot(111)