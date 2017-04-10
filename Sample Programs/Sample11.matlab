%Sample 11
%L & T = Length / Height
L = 1;
T = .2;
a = 1;
f = @(x, t) 0;
%value of unknown u at t=0, gives value of unknown U along bottom boundry, only depends on X not T
u0 = (x) sin(pi*x);
%gleft gives value for unknown u alog the bottom boundry, since 0 is a constant it only depends on T
gleft = (t) 0;
%gright gives value along right boundry, x remains constant as we go up along right boundry, so gright only depends on T
gright = (t) 0;
%Number of grid points in x direction
nx = 13;
%Number of grid points in t direction
nt = 97;
%function call to head1 to calculate unknown u, heat1 returns 2D array U, u0 gives initial condition
u = heat1(f, u0, gleft, gright, a, nx, ny, L, T);
%Have to define step size in x and t directions, thats what hx and ht do
hx = L/(nx-1);
ht = T/(nt-1);
x = 0:hx:L;
t = 0:ht:T;
%plots along x and t with surf
%u' means u-Transpose, surf plots the transpose of the array, transpose flips rows and colums or something
%So we are plotting the transpose of the transpose of the array u which is the orginal array u
surf(x, t, u');
axis([0 1 0 .2 0 1]);
set(gca, 'xtick', 0:.2:1);
set(gca, 'ytick', 0:.05:.2);
set(gca, 'ztick', 0:.2:1);
xlabel('x');
ylabel('y');
zlabel('z');
title('Sample 11');