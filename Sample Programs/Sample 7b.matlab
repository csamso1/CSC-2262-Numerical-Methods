%Sample 7b
a = 1;
b = 3;
g = @ (x) x.*(x-1).^3./(x^2-2*x+5);
h = h(x) (x+7)./(1+1/3*x.*sin(pi/4(x-11)));
f = @ (x,y) (x......);
mass = quad2d(f, a, b, g, h, 'AbsTol', 1e-6, 'RelTol', 1e-6);
fprintf('mass = %.5f\n', mass);