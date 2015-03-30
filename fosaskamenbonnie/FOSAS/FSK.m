% FSK from PCM/OOK example 

Ts = 0.1;
t1 = 0:Ts:8;
x = [2*[0:Ts:1] -4*[1+Ts:Ts:2]+6 [2+Ts:Ts:4]-4 [4+Ts:Ts:5]-4 ...
      -[5+Ts:Ts:6]+6 -1.5*sin(pi*([6+Ts:Ts:8]-6))]; % sampled signal

% channel encoder(create sequence of symbols)
nbits = input('Input the number of bits desired per sample: ');
x1 = (x/2+1)/2*(2^nbits-1);  %make positive and scale to nbits
xquan = round(x1) ; %quantize and convert to integer type
u = [];
k=nbits:-1:1;
for nsamp = 1:length(t1),   % get bits for each sample
   u= [u bitget(xquan(nsamp),k)];
end

% modulator, create s(t)

T = Ts/nbits;  % symbol interval
w1 = 4*2*pi/T;  % the frequency is somewhat arbitrary
w2 = 8*2*pi/T;  % the frequencies should give orthogonal signals
tsi = 0:T/50:.98*T;
s = [];
for count = 1:length(u),
   if u(count) == 0,
      s = [s cos(w1*tsi)];
   else, s = [s cos(w2*tsi)];
   end
end

t = 0:T/50:T/50*(length(s)-1);
r = s+0.05*randn(size(t));  % received signal including noise

% demodulate
uhat = [];
for k = 1:length(u),
   s1 = r((k-1)*length(tsi)+1:k*length(tsi))*cos(w1*tsi)';
   s2 = r((k-1)*length(tsi)+1:k*length(tsi))*cos(w2*tsi)';
   if s1 > s2, uhat = [uhat 0];
   else, uhat = [uhat 1];
   end
end

xhat1 = zeros(size(x));
kk = 1:nbits:length(uhat)-nbits+1;
for kbit = nbits:-1:1;
   xhat1 = bitset(xhat1,kbit*ones(size(xhat1)),uhat(kk+nbits-kbit));
end
xhat = xhat1/(2^nbits-1)*4 -2;

figure(1)
subplot(221),plot(t1,x)
xlabel('Time (sec)')
ylabel('x(t)')
title('Original signal')
subplot(223),plot(t,s)
axis([0 .3 -2 2])
xlabel('Time (sec)')
ylabel('s(t)')
title('Modulated signal')
subplot(224),plot(t,r)
axis([0 .3 -2 2])
xlabel('Time (sec)')
title('Received signal')
ylabel('r(t)')
subplot(222),plot(t1,xhat)
xlabel('Time (sec)')
ylabel('xhat(t)')
title('Reconstructed signal')
subplot(111)

figure(2)
e = u-uhat;
subplot(211),stem(e)
ylabel('Error in u')
xe = x - xhat;
subplot(212),plot(t1,xe)
ylabel('Error in x(t)')
xlabel('Time (sec)')
subplot(111)


