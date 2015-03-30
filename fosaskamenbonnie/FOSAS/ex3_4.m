% Example 3.4
%
p = [0 ones(1,10) zeros(1,5)];  % corresponds to n=-1 to n=14
x = p; v = p;
y = conv(x,v);
n=-2:25;
stem(n,y(1:length(n)))  % see the tutorial for obtaining closed circle
title('Example 3.4')
axis([-2 25 0 10])
ylabel('x[n]*v[n]')
xlabel('n')