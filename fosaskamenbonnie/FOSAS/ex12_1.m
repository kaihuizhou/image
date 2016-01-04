% Example 12.1
%
numd = 0.0302*[1 2 1];
dend = [1 -1.4514 .5724];
w = -pi:2*pi/300:pi;
H = freqz(numd,dend,w);
plot(w,abs(H))
axis([-pi pi 0 1])
title('Figure 12.6')
ylabel('|Hd|')
xlabel('\Omega')
% The following adds text to the plot.
hold on
plot([w(1) .3948],[.707 .707],'r--',[.3948 .3948],[0 .707],'r--')
text(1,.7,'W','FontName','Symbol')
text(1.15,.7,'c = 0.3948')
hold off