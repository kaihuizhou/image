% Figure 9.25
% asymptotic plot
wa = [.01 .1 1 10 100];
maga = [0 0 0 20 40];
phasea = [0 0 45 90 90];
w = logspace(-2,2);
Hw = j*w+1;
clf
subplot(211),semilogx(wa,maga,w,20*log10(abs(Hw)),'-.',...
     [.9 .8],[4 7],'w',[2.2 3.2],[5 5],'w');
ylabel('decibels')
grid
xlabel('Frequency (rad/sec)')
axis([.01 100 0 40]);
text(.5,12,'Exact')
text(3.5,5,'Asymptote')
subplot(212),semilogx(wa,phasea,w,angle(Hw)*180/pi,'-.',...
    [.35 .25],[30 33],'w',[.42 .55],[20 15],'w')
ylabel('degrees')
text(.03,35,'Asymptote')
text(.6,15,'Exact')
grid
xlabel('Frequency (rad/sec)')
subplot(111)