% Example 7.11
q=10; N = 2*q+1;
omo=10*pi/21;
n=0:N-1;
x=cos(omo*n);
Xk=dft(x);
k=0:N-1;
clf
subplot(311),stem(k,abs(Xk))
title('Example 7.11, q = 10, N = 21, Omega = 10pi/21')
ylabel('|Xk|')
xlabel('k')
text(6,10.5,'10.5')
text(17,10.5,'10.5')
%
%  redo with a different N and Omega
q = 10;
N = 21;
omo = 9.5*pi/21;
n = 0:N-1;
x= cos(omo*n);
Xk=dft(x);
k=n;
subplot(313),stem(k,abs(Xk));
title('Example 7.11, q = 10, N = 21, Omega = 9.5pi/21')
ylabel('|Xk|')
xlabel('k')
text(6,9.5,'9.81')
text(17,9.5,'9.81')
subplot(111)