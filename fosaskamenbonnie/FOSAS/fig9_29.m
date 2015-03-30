% Figure 9.29
% asymptotic plot
wa = [.01 .1 1 10 100];
maga = [0 0 0 40 80];
phasea = [0 0 90 180 180];
clf
subplot(211),semilogx(wa,maga);
ylabel('Magnitude, dB')
axis([.01 100 0 80]);
ytick = [0 20 40 60];
set(gca,'ytick',ytick);
grid
subplot(212),semilogx(wa,phasea);
ylabel('Angle, degrees')
axis([.01 100 0 240]);
ytick = [0 90 180];
set(gca,'ytick',ytick);
grid
subplot(111)