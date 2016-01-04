
% an iteration of y = x^2
% dy/dt = y'
% ynext = y + y'*dt

clear all;
close all;

x = 0:0.1:3;
y = x.^2;

figure
plot(x,y)

numIter = 10
dt = 0.1
for k=1:numIter
    yplusone = x;
    yplusone(1:30) = y(2:31);
    yplusone(31) = y(31);
    derivative = (yplusone - y)/0.1;

    y = y + derivative * dt;
    pause(.1);
    hold on;
    plot(x,y)
    hold off;
end;
