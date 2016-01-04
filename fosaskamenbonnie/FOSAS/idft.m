%
%  Inverse Discrete Fourier Transform
%  
function x = idft(Xn)
[N,M] = size(Xn);
  if M ~= 1,   % makes sure that Xn is a column vector
     Xn = Xn.';
     N = M;
  end
x=zeros(N,1);
n = 0:N-1;
for k=0:N-1
  x(k+1) = exp(j*2*pi*k*n/N)*Xn;
end
x = x/N;