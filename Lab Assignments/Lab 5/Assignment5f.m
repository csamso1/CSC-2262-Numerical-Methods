%Clayton Samson
%CSC 2262
%cs226276
%function Assignment 5

function f = Assignment5f(t, uf)

m1 = .5;
m2 = .8;
m3 = .6;
m4 = .9;
m5 = .7;
m6 = .4;
k1 = 4.9;
k2 = 5.3;
k3 = 4.4;
k4 = 3.9;
k5 = 5.2;
k6 = 4.7;
k7 = 4.2;
x1 = uf(1);
v1 = uf(2);
x2 = uf(3);
v2 = uf(4);
x3 = uf(5);
v3 = uf(6);
x4 = uf(7);
v4 = uf(8);
x5 = uf(9);
v5 = uf(10);
x6 = uf(11);
v6 = uf(12);
f = zeros(12,1);
f(1) = v1;
f(2) = 1/m1*(-k1*x1+k2*(x2-x1));
f(3) = v2;
f(4) = 1/m2*(-k2*(x2-x1)+k3*(x3-x2));
f(5) = v3;
f(6) = 1/m3*(-k3*(x3-x1)+k4*(x4-x3));
f(7) = v4;
f(8) = 1/m4*(-k4*(x4-x3)+k5*(x5-x4));
f(9) = v5;
f(10) = 1/m5*(-k5*(x5-x4)+k6*(x6-x5));
f(11) = v6;
f(12) = 1/m5*(-k6*(x6-x5)-k7*x6);