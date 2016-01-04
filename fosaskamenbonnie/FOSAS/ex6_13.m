% Example 6.13

w = -300:300;
S = .1*sinc(.1*w/2/pi).*exp(-.05*j*w);
subplot(221),plot(w,abs(S))
axis([-300 300 0 .1])
xlabel('\omega')
ylabel('Magnitude')
subplot(223),plot(w,angle(S)*180/pi);
xlabel('\omega')
ylabel('Angle (deg)')
axis([-300 300 -200 200])
pause


% modulation by cosine 
wc = 1000;
w = -1500:1500;
S1 = sqrt(2)*(.05*sinc(.1*(w-wc)/2/pi).*exp(-.05*j*(w-wc))...
   +.05*sinc(.1*(w+wc)/2/pi).*exp(-.05*j*(w+wc)));
subplot(211),plot(w,abs(S1))
xlabel('\omega')
ylabel('Magnitude')
subplot(212),plot(w,angle(S1)*180/pi);
xlabel('\omega')
ylabel('Angle (deg)')
pause

% modulation by sine
S2 = -sqrt(2)*(-.05*j*sinc(.1*(w-wc)/2/pi).*exp(-.05*j*(w-wc))...
   +.05*j*sinc(.1*(w+wc)/2/pi).*exp(-.05*j*(w+wc)));
subplot(211),plot(w,abs(S2))
xlabel('\omega')
ylabel('Magnitude')
subplot(212),plot(w,angle(S2)*180/pi);
xlabel('\omega')
ylabel('Angle (deg)')
