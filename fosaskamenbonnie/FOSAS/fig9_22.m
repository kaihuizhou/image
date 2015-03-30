% Figure 9.22
num = 2;
den = [1 2];
w = 0:.05:10;
[mag1,phase1] = bode(num,den,w);
num = 3.1^2; wn = 3.1;
den = [1 2*wn wn^2];
[mag2,phase2] = bode(num,den,w);
clf
subplot(211),plot(w,mag1,w,mag2,[0 2],[.707 .707],'--',...
   [2 2],[0 .707],'--',[3.5797 3.9],[0.5035 0.6573],...
   [6.4203 6.6],[0.1678 .45]);
text(.05,.2,'Passband')
text(-1.2,.707,'0.707')
text(3,.7,'One-pole filter')
text(6,.55,'Two-pole filter')
ylabel('|H|')
xlabel('Frequency (rad/sec)')
title('Figure 9.22')
subplot(212),plot(w,phase1,w,phase2);
ylabel('Angle(H), degrees')
xlabel('Frequency (rad/sec)')
text(4,-50,'One-pole filter')
text(5,-105,'Two-pole filter')
subplot(111)