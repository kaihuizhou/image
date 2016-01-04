% Figure 6.40
% gets Fourier transform for PAM signals (shows best with M=4)
% First, run PAM1 and set s1 = s, and T1 = T; 
%   then run PAM2 and set s2 = s and T2 = T.  Now run this.
[S1,w1]=contfft(s1,T1);
 clf
 subplot(221)
 plot(w1,abs(S1));
 title('(a): Square Pulses')
 axis([0 20 0 2.5])
 ylabel('|S|')
 xlabel('Frequency (rad/sec)')
 subplot(222)
 [S2,w2]=contfft(s2,T2);
 plot(w2,abs(S2))
 axis([0 20 0 2.5])
 title('(b): Sinc Pulses')
 ylabel('|S|')
 xlabel('Frequency (rad/sec)')
 