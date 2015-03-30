% Example 4.1
% gives example of the frequency representation of
% a system
t = 0:20/400:20;
w1 = 1; w2 = 4; w3 = 8;
A1 = input('Input the amplitude A1 for w1 = 1: ');
A2 = input('Input the amplitude A2 for w2 = 4: ');
A3 = input('Input the amplitude A3 for w3 = 8: ');
x = A1*cos(w1*t)+A2*cos(w2*t+pi/3)+A3*cos(w3*t+pi/2); 
clf
subplot(211),plot(t,x)
title('Example 4.1')
ylabel('x(t)')
xlabel('Time (sec)')
subplot(212),stem([w1 w2 w3],[A1 A2 A3])
v = [0 10 0 1.5*max([A1,A2,A3])];
axis(v);
ylabel('An')
xlabel('Frequency (rad/sec)')
axis;
subplot(111)
% see the m-file fig4_4.m to get the phase plot