% Clayton Samson
% CSC 2262
% cs226276
% Newton 2

function [t1, t2] = Newton2(f1, f2, df1d1, df1d2, df2d1, df2d2, guess1, guess2, accuracy)
t1_new = guess1;
t2_new = guess2;
t1_old = guess1+1;
t2_old = guess2+1;
while(abs(t1_new - t1_old) >= accuracy ||...
        abs(t2_new - t2_old) >= accuracy)
    t1_old = t1_new;
    t2_old = t2_new;
    d = [f1(t1_old, t2_old)
         f2(t1_old, t2_old)];
    a = [df1d1(t1_old,t2_old) df1d2(t1_old,t2_old)
          df2d1(t1_old,t2_old) df2d2(t1_old,t2_old)];
    b = inv(a);
    p = b*d;
    t1_new = t1_old - p(1);
    t2_new = t2_old - p(2);
end
t1 = t1_new;
t2 = t2_new;