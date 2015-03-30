% Figure 9.39
%
%  Analog Chebyshev filter design
%
%  design an n-pole filter with a bandwidth of 1 rad/sec
%
[z,p,k] = cheb1ap(2,3);        % 2 pole filter
[b,a] = zp2tf(z,p,k);        % convert to polynomials
w = 0:0.01:4;
[mag2,phase2] = bode(b,a,w);
fprintf('2 pole filter \n')
disp('b = '); disp(b')
disp('a = '); disp(a')
fprintf('Hit any key to continue  \n')
fprintf('  \n')
pause
%
% repeat for 3-pole filter
%
[z,p,k] = cheb1ap(3,3);        % 2 pole filter
[b,a] = zp2tf(z,p,k);        % convert to polynomials
w = 0:0.01:4;
[mag3,phase3] = bode(b,a,w);
fprintf('3 pole filter \n')
disp('b = '); disp(b')
disp('a = '); disp(a')
fprintf('Hit any key to continue  \n')
fprintf('  \n')
pause
% repeat for 5-pole filter
[z,p,k] = cheb1ap(5,3);        % 2 pole filter
[b,a] = zp2tf(z,p,k);        % convert to polynomials
w = 0:0.01:4;
[mag5,phase5] = bode(b,a,w);
fprintf('5 pole filter \n')
disp('b = '); disp(b')
disp('a = '); disp(a')
fprintf('Hit any key to continue  \n')
fprintf('  \n')
pause
%
%
clf
subplot(211)
plot(w,mag2,'-',w,mag3,'-.',w,mag5,'--');
ylabel('|H|')
axis([0 4 0 1.5]);
% the following creates the legend
hold on
plot([2 2.3],[1.25 1.25],[2 2.3],[1 1],'-.',[2 2.3],[.75 .75],'--');
text(2.4,1.25,'2 pole');
text(2.4,1,'3 pole');
text(2.4,.75,'5 pole');
hold off
subplot(212)
plot(w,phase2,'-',w,phase3,'-.',w,phase5,'--');
ylabel('Angle(H), degrees')
xlabel('Frequency (rad/sec)')
subplot(111)