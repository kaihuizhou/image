% Example 10.9
% plots Figure 9.12
zeta = .4;
num = 1;
den = [1 .1 0];
rlocus(num,den)
axis([-.2,.2,-.2,.2])
pause
title('Figure 10.12, root locus for Example 10.9')
hold on
plot([-.04 -.04],[-.2 .2],'--',[0 -.09],[0 .09*tan(acos(zeta))],'--',...
   [0 -.09],[0 -.09*tan(acos(zeta))],'--');
plot([-.04 -.05],[0 .05*tan(acos(zeta))],'*');
text(-.03,-.015,'pL')
text(-.08,.12,'pH')
ylabel('Imag Axis')
xlabel('Real Axis')
hold off
pause
% plots Figure 9.13
K = 0.0024;
[Ncl,Dcl] = cloop(num*K,den,-1);
t = 0:.5:150;
y1 = step(Ncl,Dcl,t);
K = 0.0156;
[Ncl,Dcl] = cloop(num*K,den,-1);
y2 = step(Ncl,Dcl,t);
plot(t,y1,t,y2,t,ones(1,length(t)),':')
title('Figure 10.13, step response for Example 10.9')
ylabel('Amplitude')
xlabel('Time (sec)')
text(50,.55,'K = 0.0024')
text(37,1.25,'K = 0.0156')