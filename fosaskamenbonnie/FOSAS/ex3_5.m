% Example 3.5
%
n=0:40;
x = sin(.2*n);
h = sin(.5*n);
y = conv(x,h);
stem(n,h);     % see tutorial for instructions on closed circles
title('Example 3.5')
xlabel('n')
ylabel('h[n]')
pause
stem(n,x)
title('Example 3.5')
xlabel('n')
ylabel('x[n]')
pause
stem(n,y(1:length(n)))
title('Example 3.5')
xlabel('n')
ylabel('y[n]')