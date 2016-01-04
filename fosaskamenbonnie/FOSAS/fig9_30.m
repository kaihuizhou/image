% Figure 9.30
%
% denominator term
w = logspace(-1,1,300);
zeta = .1;
n = 1;
d = [1 2*zeta 1];     % for w_n = 1
[mag1,phase1] = bode(n,d,w);
mag1 = 20*log10(mag1);
zeta = .2;
d = [1 2*zeta 1];     % for w_n = 1
[mag2,phase2] = bode(n,d,w);
mag2 = 20*log10(mag2);
zeta = .3;
d = [1 2*zeta 1];     % for w_n = 1
[mag3,phase3] = bode(n,d,w);
mag3 = 20*log10(mag3);
zeta = .5;
d = [1 2*zeta 1];     % for w_n = 1
[mag5,phase5] = bode(n,d,w);
mag5 = 20*log10(mag5);
zeta = .7;
d = [1 2*zeta 1];     % for w_n = 1
[mag7,phase7] = bode(n,d,w);
mag7 = 20*log10(mag7);
zeta = 1;
d = [1 2*zeta 1];     % for w_n = 1
[mag10,phase10] = bode(n,d,w);
mag10 = 20*log10(mag10);
wa = [.1 1 10]; maga = [0 0 -40];  % for asymptote
clf
subplot(211),
semilogx(wa,maga,'--',w,mag1,w,mag2,w,mag3,w,mag5,w,mag7,w,mag10)
ylabel('|H| dB')
axis([.1 10 -40 20]);
grid
subplot(212),
wa = [.1 10]; phasea = [0 -180];  % for asymptote
semilogx(wa,phasea,'--',w,phase1,w,phase2,w,phase3,w,phase5,w,phase7,w,phase10)
ylabel('Angle(H), degrees')
axis([.1 10 -240 0]);
grid
ytick = [-180 -90 0];
set(gca,'ytick',ytick)