% Example 7.15
N = input('Input N: ');
T = input('Input T: ');
%
% compute the approximate of X(w)
t=0:T:2;
x = [t-1 zeros(1,N-length(t))];    
[Xapp,w] = contfft(x,T);  % uses the m-file contfft
gam = 2*pi/N/T;
k = 0:10/gam;    % for plotting purposes
%
%  compute the actual X(w)
w = 0.05:.05:10;
Xact = j*2*(w.*cos(w)-sin(w))./(w.*w);
plot(w,abs(Xact),k*gam,abs(Xapp(1:length(k))),'o')
title(['Example 7.15, N = ',num2str(N),', T = ',num2str(T)])
ylabel('|X|')
xlabel('Frequency (rad/sec)')
% the following adds a legend
hold on
plot([4.5 5.1],[.8 .8],[4.5 4.8 5.1],[.7 .7 .7],'o')
text(5.3,.8,'Actual')
text(5.3,.7,'Approximate')
hold off