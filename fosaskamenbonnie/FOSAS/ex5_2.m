% Example 5.2
RC = 0.001;
w = 0:50:5000;
H = (1/RC)./(j*w+1/RC);
magH = abs(H);
angH = 180*angle(H)/pi;
clf
subplot(211),plot(w,magH)
title('Example 5.2')
xlabel('Frequency (rad/sec)')
ylabel('|H|')
% the following adds lines that identify the points 
%   where |H|=.707 and |H|=.316.
hold on 
plot([800 1000],[.707 .707],'r:',...
   [2500 3000],[.316 .316],'r:',...
   [1000 1000],[0 .707],'r:',...
   [3000 3000],[0 .316],'r:'); 
hold off
text(200,.707,'0.707')
text(1800,.316,'0.316')

subplot(212),plot(w,angH);
axis([0 5000 -90 0])
xlabel('Frequency (rad/sec)')
ylabel('Angle(H), degrees')
% the following adds lines to identify the values at 
%   1000 and 3000 rad/sec
hold on 
plot([800 1000],[-45 -45],'r:',...
   [2500 3000],[-71.6 -71.6],'r:',...
   [1000 1000],[-90 -45],'r:',...
   [3000 3000],[-90 -71.6],'r:'); 
hold off
text(400,-45,'-45')
text(1800,-72,'-71.6')
subplot(111)
pause
disp('The commands to compute and plot y(t)')
disp('   are given in the m-file fig5_3.m.')
