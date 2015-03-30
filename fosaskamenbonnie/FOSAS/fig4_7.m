% Figure 4.7
% Computes the frequency spectra for the pulse train
c0 = 0.5;
w0 = pi;
k = -9:9;
magck = [1/pi 0 1/pi/3 0 1/pi/5 0 1/pi/7 0 1/pi/9]; 
magck = [magck(9:-1:1) c0 magck];   
angck = [ 0    0 pi  0  0     0  pi 0 0];
angck = [-angck(9:-1:1) 0 angck];
angck = angck*180/pi;      % converts to degrees
clf
subplot(211),stem(k*w0,magck);
title('Example 4.4')
xlabel('Frequency (rad/sec)')
ylabel('|c_k|')
text(pi*.6,.4,'1/p','FontName','symbol');
text(3*pi*.8,.2,'1/3p','FontName','symbol');
text(5*pi*.9,.14,'1/5p','FontName','symbol');
text(7*pi*.93,.12,'1/7p','FontName','symbol');
text(9*pi*.95,.1,'1/9p','FontName','symbol');
text(-pi*1.5,.4,'1/p','FontName','symbol');
text(-3*pi*1.2,.2,'1/3p','FontName','symbol');
text(-5*pi*1.12,.14,'1/5p','FontName','symbol');
text(-7*pi*1.07,.12,'1/7p','FontName','symbol');
text(-9*pi*1.05,.1,'1/9p','FontName','symbol');
subplot(212),stem(k*w0,angck);
ylabel('Angle c_k')
xlabel('Frequency (rad/sec)')
subplot(111)