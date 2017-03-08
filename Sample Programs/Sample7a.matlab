%Sample 7a
a = 1;
b = 6;
accuracy = 1e-7;
f = @ (x) (x.^3+5).*sqrt(x.^4+2*x).*exp(4*x./(x^2+1)./((x.^2+3*x+7).*sin(pi/8));
I = quad(f, a, b, accuracy);
fprintf('i = %.5f\n', I);