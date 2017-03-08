% Clayton Samson
% CSC 2262
% cs226276
% Assignment 7b

a = 2;
b = 4;
g = @ (x) (x.^2.*(x-2).^3)./(x.^2+3*x+4);
h = @ (x) ((x+1).^2+3)./(1+(x-1).*sin(pi/4*(x-2)));
f = @ (x, y) ((y.^4.*log(x+y))./(x+3*y+2))+y.*log(y.^2.*sqrt(x+y.^3));
mass = quad2d(f, a, b, g, h, 'AbsTol', 1e-8, 'RelTol', 1e-8);
fprintf('mass = %.5f\n', mass);