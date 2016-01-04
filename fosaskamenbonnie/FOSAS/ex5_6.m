% Example 5.6
%  This program uses advanced commands that will not
%  be introduced until later chapters
% plot H
wnh=40;
w = 0:.5:100;
H = wnh^2./((wnh^2-w.^2)+.707*2*wnh*j*w);
clf
subplot(211),plot(w,abs(H));
title(' Example 5.6');
xlabel('Frequency (rad/sec)')
ylabel('|H|')
subplot(212),plot(w,180*unwrap(angle(H))/pi);
xlabel('Frequency (rad/sec)')
ylabel('Angle H, degrees')
pause
% plot X
w = 0:.5:100;
wn1 = 10; %wn1 = input('wn1 ');
wn2 = 70;% wn2 = input('wn2 ');
zeta1 = .3; % zeta1 = input('zeta1 ');
zeta2 = .03; % zeta2 = input('zeta2 ');
X =wn1^2 ./(((wn1^2)-w.^2)+2*zeta1*wn1*j*w)*wn2^2./(((wn2^2)-w.^2)+2*zeta2*wn2*j*w);
subplot(211),plot(w,abs(X));
title(' Example 5.6');
xlabel('Frequency (rad/sec)')
ylabel('|X|')
subplot(212),plot(w,180*unwrap(angle(X))/pi);
xlabel('Frequency (rad/sec)')
ylabel('Angle X, degrees')
pause
%
% plot Y
Y = H.*X;
subplot(211),plot(w,abs(Y));
title(' Example 5.6');
xlabel('Frequency (rad/sec)')
ylabel('|Y|')
subplot(212),plot(w,180*unwrap(angle(Y))/pi);
xlabel('Frequency (rad/sec)')
ylabel('Angle Y, degrees')
pause;
%
%
% Time domain plots
Xn1 = wn1^2;Xd1 = [1 2*zeta1*wn1 wn1^2];
Xn2 = wn2^2;Xd2 = [1 2*zeta2*wn2 wn2^2];
t=0:2/400:2;  
[Xn,Xd] = series(Xn1,Xd1,Xn2,Xd2);
x = impulse(Xn,Xd,t);
Hn = wnh^2 ; Hd = [1 2*.7*wnh wnh^2];
[Yn,Yd]=series(Xn,Xd,Hn,Hd);
y = impulse(Yn,Yd,t);
clf
subplot(211),plot(t,x);
xlabel('Time (sec)')
ylabel('x(t)')
subplot(212),plot(t,y);
xlabel('Time (sec)')
ylabel('y(t)')
subplot(111)