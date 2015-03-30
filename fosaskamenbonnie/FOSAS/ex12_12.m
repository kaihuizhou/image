% Example 12.12
%
T = 0.14
Nc = .2*[1 .1];  % analog controller
Dc = [1 2];
[Nd,Dd] = bilinear(Nc,Dc,1/T);  % digital controller
t = 0:.5*T:10;
u = ones(1,length(t));    % step input
Np = 10;    % plant
Dp = [1 .1 0];
[thetah1,uc] = hybrid(Np,Dp,Nd,Dd,T,t,u);  % actual theta
% change w_s to 10w_n and redo
T = 0.28
[Nd,Dd] = bilinear(Nc,Dc,1/T);  % digital controller
t2 = 0:.25*T:10;
u = ones(1,length(t2));    % step input
Np = 10;    % plant
Dp = [1 .1 0];
[thetah2,uc] = hybrid(Np,Dp,Nd,Dd,T,t2,u);  % actual theta
%  change w_s to 6w_n and redo
T = 0.47
[Nd,Dd] = bilinear(Nc,Dc,1/T);  % digital controller
t3 = 0:.1*T:10;
u = ones(1,length(t3));    % step input
Np = 10;    % plant
Dp = [1 .1 0];
[thetah3,uc] = hybrid(Np,Dp,Nd,Dd,T,t3,u);  % actual theta
% also simulate response for ideal analog controller
ta = t;
[Ncl,Dcl] = cloop(conv(Nc,Np),conv(Dc,Dp),-1);
thetaa = step(Ncl,Dcl,ta);  % ideal analog theta(t)
plot(ta,thetaa,'-',t,thetah1,'--',t2,thetah2,':',...
t3,thetah3,'-.')
xlabel('Time (sec)')
ylabel('Theta(t)')
title('Figure 12.26')
% add legend to plot
hold on
plot([2 3],[.7 .7],[2 3],[.6 .6],'--',[2 3],[.5 .5],':',[2 3],[.4 .4],'-.')
text(3.3,.7,'analog control')
text(3.3,.6,'digital control with ws = 20wn')
text(3.3,.5,'digital control with ws = 10wn')
text(3.3,.4,'digital control with ws = 6wn')
hold off