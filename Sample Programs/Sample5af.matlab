%CSC 2262
%Sample5af

function f = Sample5af(t uf)
m = 3.6;
c = 2.8;
k = 19;
x = uf(1);
v = uf(2);
f = zeros(2, 1);
f(1) = v;
f(2) = 1/m * (32*sin(3*t)*cos(5*t) - c*v - k*x);
