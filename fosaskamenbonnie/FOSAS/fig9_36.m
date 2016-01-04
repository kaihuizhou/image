% Figure 9.36
%
%  Analog Butterworth filter design
%
%  design an n-pole filter with a bandwidth of 1 rad/sec
%
[z,p,k] = buttap(2);        % 2 pole filter
[b,a] = zp2tf(z,p,k);       % convert to polynomials
w = 0:.01:4;
[mag2,phase2] = bode(b,a,w);
fprintf('2 pole filter \n')
disp('b = '); disp(b')
disp('a = '); disp(a')
fprintf('Hit any key to continue  \n')
fprintf('  \n')
pause
%
% repeat for 5-pole filter
%
[z,p,k] = buttap(5); 
[b,a] = zp2tf(z,p,k);
[mag5,phase5] = bode(b,a,w);
%fprintf('5 pole filter \n')
disp('b = '); disp(b')
disp('a = '); disp(a')
fprintf('Hit any key to continue  \n')
fprintf('  \n')
pause
% repeat for 10-poles filter
[z,p,k] = buttap(10); 
[b,a] = zp2tf(z,p,k);
[mag10,phase10] = bode(b,a,w);
fprintf('10 pole filter %\n')
disp('b = '); disp(b')
disp('a = '); disp(a')
%
clf
subplot(211)
plot(w,mag2,'-',w,mag5,'-.',w,mag10,'--');
ylabel('|H|')
axis([0 4 0 1.5]);
% the following creates the legend
hold on
plot([2 2.3],[1.25 1.25],[2 2.3],[1 1],'-.',[2 2.3],[.75 .75],'--');
text(2.4,1.25,'2 pole');
text(2.4,1,'5 pole');
text(2.4,.75,'10 pole');
hold off
subplot(212)
plot(w,phase2,'-',w,phase5,'-.',w,phase10,'--');
ylabel('Angle(H), degrees')
xlabel('Frequency (rad/sec)')
subplot(111)