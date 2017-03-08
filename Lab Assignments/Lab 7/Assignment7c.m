% Clayton Samson
% CSC 2262
% cs226276
% Assignment 7c

global accuracy;
a = 2;
b = 4;
accuracy = 1e-3;
g = @ (x) x*cos(pi/4*(x-2));
h = @ (x) 2+sqrt(1+(x-2)^3);
v = @ (y, x) 2;
w = @ (y, x) x+y+4;
f = @ (z, y, x) z.^2.*cos(y+z)./(x+2*z+1)+exp((2*z+x)./(y+z+1));
mass=quad('middle',a,b,accuracy,[],'inner',g,h,f,v,w);
fprintf('mass = %.3f\n', mass);