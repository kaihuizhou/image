% Example 2.5
%
a = [-1 -2]; b = [0 0 0];
n = 2:10;
x = zeros(1,length(n));     % creates a zero vector
x0 = [0 0]; y0 = [1 3];
y1 = recur(a,b,n,x,x0,y0);  % solution via recursion
y2 = (4*(2).^n - (-1).^n)/3;  % analytical solution
% n is a vector, so the operation .^ is used to compute 
%   the exponent separately for each element
%
% augment initial conditions onto vectors for plotting
y1 = [y0 y1]; y2 = [y0 y2];
n = 0:10;
plot(n,y1,'o',n,y2,'+')
title('Example 2.5')
ylabel('y[n]')
xlabel('n')
text(1,1000,'o solution obtained using recur')
text(1,850,'+ solution obtained from analytical expression')