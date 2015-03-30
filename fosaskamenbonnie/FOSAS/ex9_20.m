% Example 9.20
num = 20;
den = [1 2 100];
w = 0:.1:20;
[mag,phase] = bode(num,den,w);
clf
subplot(211)
plot(w,mag,[0 11],[.707 .707],':',[9 9],[-.3 .707],':',...
   [11 11],[-.3 .707],':',[10 10],[0 1],':',...
   [0 10],[1 1],':');
axis([0 20 0 1.5])
ylabel('       |H|')
h=[text(-2.5,.707,'0.707') text(9,1.2,'Mp = 1')...
   text(11,.9,'Approximate passband:')...
   text(14,.7,'9 < w < 11','FontName','symbol')];
xlabel('Frequency (rad/sec)')
subplot(212)
H=plot(w,phase,[10 10],[0 -90],':',[0 10],[-90 -90],':');
ylabel('Angle(H), degrees')
h=[];
xlabel('Frequency (rad/sec)')
ytick = [-180 -90 0];
set(gca,'ytick',ytick);
subplot(111)