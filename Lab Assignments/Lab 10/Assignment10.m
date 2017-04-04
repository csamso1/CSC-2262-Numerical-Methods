% Clayton Samson
% CSC 2262
% cs226276
% Assignment 10

n = 26;
accuracy = 1e-8;
max_iterations = 10000;
f = @(x,y) -2*(x^2+y^2);
gbottom = @(x, y) 1-x^2;
gtop = @(x, y) 4*(1-x^2);
gleft = @(x, y) 1+y^2;
gright = @(x, y) 0;
u = poisson2(f, gbottom, gtop, gleft, gright, n, accuracy, max_iterations);
h = 1/(n-1);
x = 0:h:1;
y = 0:h:1;
surf(x, y, u');
axis([0 1 0 1 0 5]);
set(gca, 'xtick', 0:.2:1);
set(gca, 'ytick', 0:.2:1);
set(gca, 'ztick', 0:1:5);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Assignment 10');