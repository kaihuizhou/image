% Example 7.10
%
q = input('Input q: ');
N = input('Input N: ');
x = [ones(1,2*q+1) zeros(1,N-2*q-1)];
Xk = dft(x);
k = 0:N-1;
clf
subplot(211)
stem(k,abs(Xk))
title(['Example 7.10, N = ',num2str(N),', q = ',num2str(q)])
xlabel('k')
ylabel('|Xk|')
axis([0 N-1 0 15])
subplot(111)