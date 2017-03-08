%Sample 4a
%Clayton Samson

%will use ode45 most popular method for solving diffeq numerically
%solves one first order diffeq numerically in MatLab

k = .0547;
t = 0:.001:4;
w0 = 3;
f = @(t, w) sqrt(2*t^2+3*t+16) * log(sqrt(5*t^2+120)) -k*w^2;

%odeset sets varrious options for ode45
options = odeset('AbsTol', 1e-7, 'RelTol', 1e-7);
[t w] = ode45(f, t, w0, options);
plot(t, w, 'b');
axis([0 4 2 20]);
set(gca, 'xtick', 0:4);
set(gca, 'ytick', 2:2:20);
xlabel('t');
ylabel('omega');
title('Sample 4a');