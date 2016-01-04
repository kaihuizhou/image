% Example 2.10
%
y0=2; a=2;
y=zeros(1,5);
y(1) = .5*(y0 + a/y0); 
for n=2:5
  y(n) = .5*(y(n-1) + a/y(n-1));
end
format long e
y'
format short e