% function newton3
function [t1 t2 p1] = newton3(f1, f2, f3, df1d1, df1d2, df1d3, df2d1, df2d2, df2d3, df3d1, df3d2, df3d3, guess1, guess2, guess3, accuracy);
 
t1_new = guess1;
t2_new = guess2;
p1_new = guess3;
t1_old = guess1 + 1;
t2_old = guess2 + 1;
p1_old = guess3 + 1;
 
while (abs(t1_new - t1_old) >= accuracy || abs(t2_new - t2_old) >= accuracy || abs(p1_new - p1_old) >= accuracy)
t1_old = t1_new;
t2_old = t2_new;
p1_old = p1_new;
d = [ f1(t1_old, t2_old, p1_old)
f2(t1_old, t2_old, p1_old)
f3(t1_old, t2_old, p1_old) ];
a = [df1d1(t1_old, t2_old, p1_old) df1d2(t1_old, t2_old, p1_old) df1d3(t1_old, t2_old, p1_old)
    df2d1(t1_old, t2_old, p1_old) df2d2(t1_old, t2_old, p1_old) df2d3(t1_old, t2_old, p1_old)
    df3d1(t1_old, t2_old, p1_old) df3d2(t1_old, t2_old, p1_old) df3d3(t1_old, t2_old, p1_old) ];
 
b = inv(a);
p = b * d;
t1_new = t1_old - p(1);
t2_new = t2_old - p(2);
p1_new = p1_old - p(3);
end
t1 = t1_new;
t2 = t2_new;
p1 = p1_new;