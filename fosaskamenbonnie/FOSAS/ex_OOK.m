% PCM/OOK example for triangular pulse waveform

Ts = 0.1;
t1 = 0:Ts:8;
x = [2*[0:Ts:1] -4*[1+Ts:Ts:2]+6 [2+Ts:Ts:4]-4 [4+Ts:Ts:5]-4 ...
      -[5+Ts:Ts:6]+6 -1.5*sin(pi*([6+Ts:Ts:8]-6))]; % sampled signal

% channel encoder(create sequence of symbols)
nbits = 3;%input('Input the number of bits desired per sample: ');
x1 = (x/2+1)/2*(2^nbits-1);  %make positive and scale to nbits
xquan = round(x1) ; %quantize and convert to integer type
u = [];
k=nbits:-1:1;
for nsamp = 1:length(t1),   % get bits for each sample
   u= [u bitget(xquan(nsamp),k)];
end

% modulator (create s(t) to transmit)

T = Ts/nbits;  % symbol interval
tsi = 0:T/5:.8*T;
s = [];
for count = 1:length(u),
   s = [s u(count)*ones(1,length(tsi))];
end
t = 0:T/5:T/5*(length(s)-1);
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
rsamp = rfilt(4:5:length(t));
uhat = round(rsamp);  % convert back to binary (0 or 1)
xhat1 = zeros(size(x));
kk = 1:nbits:length(uhat)-nbits+1;
for kbit = nbits:-1:1;
   xhat1 = bitset(xhat1,kbit*ones(size(xhat1)),uhat(kk+nbits-kbit)');
end
xhat = xhat1/(2^nbits-1)*4 -2;

figure(1)
subplot(221),plot(t1,x)
xlabel('Time (sec)')
ylabel('x(t)')
title('Original signal')
subplot(223),plot(t,s);  %Figure 6.41
xlabel('Time (sec)')
ylabel('s(t)')
title('Transmitted Signal')
axis([0 1 -2 2])
subplot(224),plot(t,r);
xlabel('Time (sec)')
title('Received signal')
ylabel('r(t)')
axis([0 1 -2 2])
subplot(222),plot(t1,xhat)
xlabel('Time (sec)')
ylabel('xhat(t)')
title('Reconstructed signal')
subplot(111)

figure(2)
e = u-uhat';
subplot(211),stem(e)
ylabel('Error in u')
xe = x - xhat;
subplot(212),plot(t1,xe)
ylabel('Error in x(t)')
xlabel('Time (sec)')



