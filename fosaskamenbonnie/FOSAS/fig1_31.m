% Figure 1.31
% Loan Balance program
% Program computes loan balance y[k]
y0 = input('Amount of loan ');
I = input('Yearly Interest rate ');
c = input('Monthly loan payment ');    % x[n] = c
y = [];      % defines y as an empty vector
y(1) = (1 + (I/12))*y0 - c;
for n=2:360
   y(n) = (1 + (I/12))*y(n-1) - c;
   if y(n) < 0, break, end
end
%  The following commands are for displaying the results
format bank 
n=1:length(y); i = 1;
fprintf(' \n           n     y[n] in dollars ')               
while i <= length(n)
  m = min([19 length(n)-i]);
  out = [n(i:i+m)',y(i:i+m)']
  i = i + 20; 
fprintf('(Hit return to continue)')
  pause
end
format short e
