% Example 12.2
%
T = .2; wc = 2;
wp = 2/T*tan(wc*T/2);
K = T^2/4*wp^2;
dend =[(1+wp*T/sqrt(2)+T^2*wp^2/4) (T^2*wp^2/2-2) (1-wp*T/sqrt(2)+T^2*wp^2/4)];
K = K/dend(1)
numd = K*[1 2 1]
dend = dend/dend(1)
w = -pi:2*pi/300:pi;
H = freqz(numd,dend,w);
plot(w,abs(H))
title('Example 12.2')
ylabel('|H|')
xlabel('\Omega')