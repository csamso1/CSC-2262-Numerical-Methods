%Sample 4b

t = 0:.001:9;
u0 = [4000 200];
options = odeset('AbsTool', 1e-7, 'RelTol', 1e-7);
[t u] = ode45('sample4bf', t, u0, options);
plot(t, u(: ,1), 'b', t, u,(: ,2), 'r');
axis([0 9 0 10000]);
set(gcs, 'xtick', 0:9);
set(gcs, 'ytick', 0:1000:10000);
xlabel('t');
ylabel('Hare Population (Blue) and Lynx Population (Red)');
title('Sample4b');

