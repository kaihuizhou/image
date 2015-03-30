% Example 12.11
num = .2*[1 .1];
den = [1 2];
T = input('Input T: ');
[numd,dend] = c2dm(num,den,T,'zoh')
% compare to result obtained in Example 11.11
numd = [.2 -.01*exp(-2*T)-.19]
dend = [1 -exp(-2*T)]