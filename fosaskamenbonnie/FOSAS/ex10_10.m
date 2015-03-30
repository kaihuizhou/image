% Example 10.10
% plots Figure 10.14
num = [1 0.05];
den = [1 .1 0];
clf
subplot(221),rlocus(num,den)
title('(a)')
num = [1 0.1];
den = [1 .1 0];
subplot(222),rlocus(num,den)
title('(b)')
num = [1 0.2];
den = [1 .1 0];
subplot(223),rlocus(num,den)
title('(c)')
num = [1 1];
den = [1 .1 0];
subplot(224),rlocus(num,den)
title('(d)')
subplot(111)
pause
% plots Figure 10.15
num = [1 0.1];
[Ncl,Dcl] = cloop(num*.1,den,-1);
t = 0:.05:100;
y = step(Ncl,Dcl,t);
num = 1;
[Ncl,Dcl] = cloop(num*.005,den,-1);
y1 = step(Ncl,Dcl,t);
plot(t,y,t,y1,t,ones(size(t)),':')
ylabel('Amplitude')
title('Example 10.10')
xlabel('Time (sec)')
text(10,.9,'PD')
text(35,.8,'P')
