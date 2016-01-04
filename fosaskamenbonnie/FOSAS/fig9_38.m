% Figure 9.38
%
%  Compares the Butterworth and Chebyshev filters
%
w = 0:.01:8;
fprintf('Butterworth filter: \n')
[z,p,k] = buttap(3);      
[b,a]=zp2tf(z,p,k);
Wo=2;  % change cutoff frequency to 2 rad/s
[b,a] = lp2lp(b,a,Wo)
disp('b = ');disp(b');
disp('a = ');disp(a');
[magb,phaseb] = bode(b,a,w);
%
fprintf('Chebyshev filter: \n')
[z,p,k] = cheb1ap(3,3); 
b=poly(z)*k;          
a=poly(p);
[b,a] = lp2lp(b,a,Wo)
disp('b = ');disp(b');
disp('a = ');disp(a');
[magc,phasec] = bode(b,a,w);
%
clf
subplot(211)
p71=1/sqrt(2);
plot(w,magb,'-',w,magc,'-.',[0 2],[p71 p71],'r--',...
[2 2],[0 p71],'r--')

% the following inserts a legend and adds identifying lines
hold on
plot([3 3.7],[1.1 1.1],[3 3.7],[0.75 0.75],'-.');
ylabel('       |H|')
text(-1.2,p71,'0.707');
text(3.8,1.1,'Three-pole Butterworth');
text(3.8,0.75,'Three-pole Chebyshev');
text(0.5,0.15,'Passband');
hold off
%
subplot(212)
H=plot(w,phaseb,'-',w,phasec,'-.');
ylabel('Phase (deg)')
xlabel('Frequency (rad/sec)')
subplot(111)