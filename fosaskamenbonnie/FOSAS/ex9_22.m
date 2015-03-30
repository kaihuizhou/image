% Example 9.22
%
% calculate w = [.1 2 10 50 1000] for the magnitude plot
% constant term
w = [.1 2 10 50 1000];
term1 = 20*log10(4)*ones(1,length(w));
term2 = 20*log10(.5*w);
term2(1) = 0;
term3 = -20*log10(.1*w);
term3(1:2) = [0 0];
term4 = -20*log10(.02*w);
term4(1:3) = [0 0 0];
mag = term1+term2+term3+term4;
wmag = w; clf
subplot(211),semilogx(w,mag,'-',w,term1,'--',w,term2,'--',w,term3,'--',w,term4,'--')
axis([.1 1000 -40 40])
grid
ylabel('decibel')
xlabel('Frequency (rad/sec)')
text(2,30,'final')
text(500,20,'1')
text(150,32,'2')
text(20,-17,'3')
text(500,-13,'4')
%
w = [.1 .2 1 5 20 100 500 1000]; 
term2 = [0 0 45*log10(1/.2) 45*log10(5/.2) 90 90 90 90];
term3 = [0 0 0 -45*log10(5/1) -45*log10(20/1) -90 -90 -90];
term4 = [0 0 0 0 -45*log10(20/5) -45*log10(100/5) -90 -90];
phase = term2+term3+term4;
wphase = w;
subplot(212),semilogx(w,phase,'-',w,zeros(1,length(w)),'--',w,term2,'--',...
w,term3,'--',w,term4,'--')
axis([.1 1000 -100 100])
grid
ylabel('degrees')
text(10,33,'final')
text(20,75,'2')
text(100,20,'1')
text(5,-50,'3')
text(20,-40,'4')
xlabel('Frequency (rad/sec)')
ytick = [-90 0 90];
set(gca,'ytick',ytick);
subplot(111)
pause
% obtain actual Bode plot
num = 1000*[1 2];
den = conv([1 10],[1 50]);
wa = logspace(-1,3,300);
[maga,phasea] = bode(num,den,wa);
maga = 20*log10(maga);
%
% obtain the asymptotic plot
% calculate w = [.1 2 10 50 1000] for the magnitude plot
% constant term
subplot(211)
semilogx(wmag,mag,'--',wa,maga,[22 22],[27 32],'w',...
   [22 22],[23 18],'w')
grid
ylabel('|H| dB')
xlabel('Frequency (rad/sec)')
text(8,35,'Asymptote')
text(20,15,'Exact')
%
subplot(212)
semilogx(wphase,phase,'--',wa,phasea,...
    [.55 .4],[28 40],'w',[.7 1.1],[10 -25],'w');
grid
ylabel('Angle(H), degrees')
xlabel('Frequency (rad/sec)')
text(.2,55,'Asymptote')
text(1.2,-20,'Exact')
ytick = [-90 0 90];
set(gca,'ytick',ytick);
subplot(111)