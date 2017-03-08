% Clayton Samson
% CSC 2262
% cs226276
% Newton 3

function [x, y, z] = newton3(f1, f2, f3, df1d1, df1d2, df1d3, df2d1, df2d2, df2d3, df3d1, df3d2, df3d3, guess1, guess2, guess3, accuracy)

x_new = guess1;
y_new = guess2;
z_new = guess3;
x_old = guess1+1;
y_old = guess2+1;
z_old = guess3+1;

while (abs(x_new-x_old) >= accuracy || abs(y_new-y_old) >=accuracy || abs(z_new-z_old) >= accuracy)
	x_old = x_new;
	y_old = y_new;
	z_old = z_new;
    
	d = [f1(x_old,y_old,z_old)
         f2(x_old,y_old,z_old)
         f3(x_old,y_old,z_old)];

	a = [df1d1(x_old,y_old,z_old) df1d2(x_old,y_old,z_old) df1d3(x_old,y_old,z_old)
         df2d1(x_old,y_old,z_old) df2d2(x_old,y_old,z_old) df2d3(x_old,y_old,z_old)
         df3d1(x_old,y_old,z_old) df3d2(x_old,y_old,z_old) df3d3(x_old,y_old,z_old)];

	b = inv(a);
	p = b*d;

	x_new = x_old - p(1);
	y_new = y_old - p(2);
	z_new = z_old - p(3);
end

x = x_new;
y = y_new;
z = z_new;