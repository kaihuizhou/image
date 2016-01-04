% ex6.5
Tspan = 0:.2/500:5;
y0 = 0;
 options = odeset('RelTol',1e-9,'AbsTol',1e-9);
[t,y] = ode45('ex6_5d',Tspan,y0,options);
subplot(111)
H=plot(t,y,t,(1+.5*cos(pi*t)).*cos(20*pi*t),'--');
xlabel('Time (sec)')
