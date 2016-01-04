% Figure 12.14

n = 0:10;
hd = [1 2 3 4 4 3 2 1 0 0 0];
subplot(211),stem(n,hd)
axis([0 10 0 5])
xlabel('n')
ylabel('hd[n]')
hd = [1 2 3 4 3 2 1 0 0 0 0];
subplot(212),stem(n,hd)
axis([0 10 0 5])
xlabel('n')
ylabel('hd[n]')
subplot(111)