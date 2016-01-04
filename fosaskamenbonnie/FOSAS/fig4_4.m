%  Figure 4.4
%  Plots phase spectrum for Example 4.1
%
w = [1 4 8];
theta = [0 pi/3 pi/2];
theta = theta*180/pi;
% converts to degrees for plot
clf   % clear the figure window
subplot(211),stem(w,theta);
axis([0 10 0 100]);xlabel('Frequency (rad/sec)')
ylabel('Theta (degrees)')
title('Figure 4.4')
subplot(111)