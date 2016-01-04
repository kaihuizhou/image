% Example 10.11
num = 1;
den = [1 5 4];
clf
subplot(221), rlocus(num,den)
title('(a)')
num = [1 .01];
den = [1 5 4 0];
subplot(222), rlocus(num,den)
title('(b)')
num = [1 1];
subplot(223),rlocus(num,den)
title('(c)')
num = [1 3];
subplot(224),rlocus(num,den)
title('(d)')
subplot(111)