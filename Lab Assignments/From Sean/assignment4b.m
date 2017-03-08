%Sean Marino
%CSC2262 - Numerical Methods
%cs226245
%Assignment 4b

t = 0:.001:70;
u0 = [1000 300 600];
options=odeset('RelTol',1e-7, 'AbsTol',1e-7);
[t u] = ode45('assignment4bf', t, u0, options);
plot(t, u(: ,1),'b',t, u(: ,2),'g',t, u(: ,3), 'r');
axis([0 70 -100 1100]);
set(gca, 'xtick', 0:10:70);
set(gca, 'ytick', -100:100:1100);
xlabel('t');
ylabel('x(blue), y(green), z(red) Populations');
title('Assignment 4b');
