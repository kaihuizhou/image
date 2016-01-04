% Figure 9.26
w=logspace(-2,2,200);
% exact plot 
n = [1 0]; 
d = 1;  
[mag,phase] = bode(n,d,w);
mag = 20*log10(mag);
clf
subplot(211),semilogx(w,mag);
ylabel('Magnitude, dB')
axis([.01 100 -40 40]);
grid
subplot(212),semilogx(w,phase);
ylabel('Angle, degrees')
axis([.01 100 0 180]);
ytick = [0 90 180];
set(gca,'ytick',ytick);
xlabel('Frequency, (rad/s)')
grid
subplot(111)