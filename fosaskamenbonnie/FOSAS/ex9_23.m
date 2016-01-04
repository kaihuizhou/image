% Example 9.23
%
% obtain actual Bode plot
num = 63*[1 1];
den = [1 6 100 0];
we = logspace(-1,3,300);
[mage,phasee] = bode(num,den,we);
mage = 20*log10(mage);
%
% obtain the asymptotic plot
% calculate w = [.1 2 10 50 1000] for the magnitude plot
% constant term
w = [.1 1 10 1000];
term1 = 20*log10(.63)*ones(1,length(w));
term2 = 20*log10(w);
term2(1) = 0;
term3 = -20*log10(w);
term4 = -40*log10(w/10);
term4(1:2) = [0 0];
mag = term1+term2+term3+term4;
clf
subplot(211),semilogx(we,mage,w,mag,'--')
grid
ylabel('|H| dB')
xlabel('Frequency (rad/sec)')
title('Example 9.23')
axis([.1 1000 -80 20]);
text(15,0,'Exact')
text(3,-25,'Asymptote')
%
w = [.1 1 10 100 1000]; 
term3 = [-90 -90 -90 -90 -90];
term2 = [0 45 90 90 90];
term4 = [0 0 -90 -180 -180];
phase = term2+term3+term4;
subplot(212),semilogx(w,phase,'--',w,term2,'-.',w,term3,'-.',w,term4,'-.',we,phasee)
axis([.1 1000 -200 100]);
grid
ylabel('Angle(H), degrees')
xlabel('Frequency (rad/sec)')
ytick = [-180 -90 0 90];
set(gca,'ytick',ytick)
text(10,70,'1')
text(100,-70,'2')
text(.3,-20,'3')
text(7,-20,'Exact')
text(40,-120,'Asymptote')
subplot(111)