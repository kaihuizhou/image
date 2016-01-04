% Figure 12.20
%
N = 21;
n = 0:N-1;
w1 = ones(1,N);   % rectangular window
w2 = .5*(1-cos(2*pi*n/(N-1)));  %Hanning
%  w2 = [0; hanning(N-2); 0];    % alternate expression 
w3 = .54-.46*cos(2*pi*n/(N-1));  % Hamming
%w3 = hamming(N);       % alternate expression 
plot(n,w1,n,w2,n,w3);
title('Figure 12.20')
ylabel('w[n]')
xlabel('n')
axis([0 20 0 1.2])
text(13,1.05,'Rectangular') 
text(16,.45,'Hamming') 
text(13.5,.2,'Hanning')
