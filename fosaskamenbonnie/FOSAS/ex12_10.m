% Example 12.10
%
Omegac = .4;
N = 41;   % length of filter
m = (N-1)/2;       % phase shift
n = 0:2*m+10;
n_m = n-m + ((n-m)==0)*eps;  % to avoid dividing by zero
h = sin(Omegac*(n_m))/pi./(n_m);
% use the rectangular window first
w = [ones(1,N) zeros(1,length(n)-N)];
hd = h.*w;
clf % clears current figure
subplot(211),stem(n,hd)
title('Figure 12.22:  Rectangular Window')
xlabel('n')
ylabel('hd[n]')
Omega = -pi:2*pi/500:pi;
Hd1 = freqz(hd,1,Omega);
subplot(212),plot(Omega,abs(Hd1));
axis([-pi pi 0 1.5])
ylabel('|Hd|')
xlabel('\Omega')
% mark text on graph
hold on
plot([-.37 .37],[.707 .707],'--r',[-.37 -.37],[0 .707],'--r',...
   [.37 .37],[0 .707],'--r',[.35 .5],[1.071 1.071],'r',[.35 .5],[0.971 .971],'r',...
   [.16 .19],[.105 .105],'r');
text(.62,1.03,'Passband ripple is 0.1')
text(.47,.707,'0.707')
text(.62,.2,'Stopband ripple is 0.104')
hold off
pause
% redo with the Hanning window
w = [0 hanning(N-2)' zeros(1,length(n)-N+1)];    % alternate expression 
hd = h.*w;
subplot(211),stem(n,hd)
title('Figure 12.23: Hanning Window')
xlabel('n')
ylabel('hd[n]')
Omega = -pi:2*pi/500:pi;
Hd2 = freqz(hd,1,Omega);
subplot(212),plot(Omega,abs(Hd2));
axis([-pi pi 0 1.5])
ylabel('|Hd|')
xlabel('\Omega')
axis([-pi pi 0 1.5])
% mark text on graph
hold on
plot([-.33 .33],[.707 .707],'--r',[-.33 -.33],[0 .707],'--r',...
   [.33 .33],[0 .707],'--r');
text(.62,1.03,'Passband ripple is 0.005')
text(.47,.707,'0.707')
text(.62,.2,'Stopband ripple is 0.007')
hold off
pause
%
% finally, use the Hamming window
w = [hanning(N)' zeros(1,length(n)-N)];
hd = h.*w;
subplot(211),stem(n,hd)
title('Figure 12.24: Hamming Window')
xlabel('n')
ylabel('hd[n]')
Omega = -pi:2*pi/500:pi;
Hd3 = freqz(hd,1,Omega);
subplot(212),plot(Omega,abs(Hd3));
axis([-pi pi 0 1.5])
ylabel('|Hd|')
xlabel('\Omega')
hold on
plot([-.34 .34],[.707 .707],'--r',[-.34 -.34],[0 .707],'--r',...
   [.34 .34],[0 .707],'--r');
text(.62,1.03,'Passband ripple is 0.007')
text(.47,.707,'0.707')
text(.62,.2,'Stopband ripple is 0.006')
hold off
subplot(111)
