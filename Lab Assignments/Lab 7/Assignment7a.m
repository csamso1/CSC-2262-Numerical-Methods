% Clayton Samson
% CSC 2262
% cs226276
% Assignment 7a

a = 4;
b = 8;
accuracy = 1e-7;
f = @ (x) sqrt((2*x.^4)+(3*x)).*cos(5*x).*log((4*x.^3+7*x)./(x.^2+1))./ ...
    (x.^2.*sin((3*x+1)./(2*x)).*exp(-((5*x.^3+2*x)./(6*x.^2+2))));
I = quad(f, a, b, accuracy);
fprintf('I = %.5f\n', I);
