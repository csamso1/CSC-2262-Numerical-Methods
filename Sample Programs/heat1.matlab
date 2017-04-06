%function heat1
%u is what this function returns
Function u = heat1(f, u0, gleft, gright, a, nx, ny, L, T);
hx = L/(nx-1);
ht = T/(nt-1);
u = zeros(nx, nt);
%define unknown u at bottom boundry
%use a for loop that goes over all gridpoints on bottom boundry, x index of gridpoints on bottom boundry is noted by i
for(i = 1:nx)
	%define unknown u along bottom boundry, u is a 2D array, first index is x (i) and 2nd index goes over t (in this case we use 1...
	%to only get points on bottom boundry
	%recall u0 is a function not an array
	%(i-1)*hx = value of unknown u along bottom boundry
	u(i, 1) = u0((i-1)*hx);
end
%for loop for all point along the left and right boundry, although we have already done that for the first gridpoint on the..
%left and right boundry so we will start at 2 for our t index, k is used for t index
for(k = 2:nt)
	%left boundry, x index is 1, for t index we use k which goes over grid points on left boundry
	u(1, k) = gleft((k-1)*ht);
	%definng unknown u along right boundry where nx = something, we do k-1*ht to calculate the point times the stepsize
	u(nx, k) = gright((k-1)*ht);
end
for(k = 2:nt)
	for(i = 2:nx-1)
		u(i, k) = ht*a/hx^2*(u(i-1, k-1)-2*u(i, k-1)+u(i+1, k-1))+ht*f((i-1)*hx,(k-2)*ht)+u(i, k-1);
	end
end