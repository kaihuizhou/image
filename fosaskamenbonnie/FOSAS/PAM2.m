% PAM example with sinc pulses 
Ts = 0.1;
t1 = 0:Ts:8;
x = [2*[0:Ts:1] -4*[1+Ts:Ts:2]+6 [2+Ts:Ts:4]-4 [4+Ts:Ts:5]-4 ...
      -[5+Ts:Ts:6]+6 -1.5*sin(pi*([6+Ts:Ts:8]-6))]; % sampled signal

% channel encoder(create sequence of symbols)
input('input M ');
xscal = (x/2+1)*(M-1)/2; % normalize to size M
z = round(xscal);  % quantize to M values
z = (z-(M-1)/2)*2/(M-1);
u=z;

% modulator (create s(t) to transmit)
T = Ts;  % symbol interval
nsl = 7; % number of sides lobes of sinc to include
tsi = -nsl*T:T/50:nsl*T;
s = zeros(1,length(t1)*50+2*nsl*50);
g = sinc(tsi/T);
for k = 1:length(u),
   s((k-1)*50+1:(k-1)*50+length(tsi)) = s((k-1)*50+1:(k-1)*50+length(tsi))+ u(k)*g; 
end
s=s((length(tsi)-1)/2+1:length(s)-nsl*50);
t = 0:T/50:T/50*(length(s)-1);
wb = 2*pi*100;  % channel bandwidth
Hnum = wb^2;
Hden = [1 2*.707*wb wb^2];
r = lsim(Hnum,Hden,s,t)+0.05*randn(size(t))';  % received signal including noise

% filter done in receiver to filter out noise
wbn = 2*pi*100;  % filter bandwidth
Hfn = wbn;
Hfd = [1 wbn];
rfilt = lsim(Hfn,Hfd,r,t);

% demodulate
ssamp = rfilt(1:50:length(t));
uhat = ((round(ssamp*(M-1)/2+(M-1)/2)-(M-1)/2))*2/(M-1);
zhat = uhat;
xhat = zhat*2;

figure(1)
subplot(221),plot(t1,x)
xlabel('Time (sec)')
ylabel('x(t)')
title('Original signal')

subplot(223),plot(t,s);  %Figure 6.39 for M=8
xlabel('Time (sec)')
ylabel('s(t)')
title('Transmitted Signal')
axis([0 8 -2 2])
subplot(224),plot(t,r);
xlabel('Time (sec)')
title('Received Signal')
ylabel('r(t)')
axis([0 8 -2 2])

subplot(222),plot(t1(1:length(xhat)),xhat)
xlabel('Time (sec)')
ylabel('xhat(t)')
title('Reconstructed signal')
subplot(111)

figure(2)
e = u(1:length(uhat))-uhat';
subplot(211),stem(e)
ylabel('Error in u')
xe = x(1:length(xhat)) - xhat';
subplot(212),plot(t1(1:length(xe)),xe)
ylabel('Error in x(t)')
xlabel('Time (sec)')



