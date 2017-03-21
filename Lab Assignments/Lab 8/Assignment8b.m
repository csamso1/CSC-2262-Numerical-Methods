% Clayton Samson
% CSC 2262
% cs226276
% Assignment 8a

[xd, yd] = textread('prog8a.dat');
n = length(xd);
for(k = 4:n-3)
    %Second Order
    xd3 = [xd(k-1) xd(k) xd(k+1)];
    yd3 = [yd(k-1) yd(k) yd(k+1)];
    %Fourth Order
    xd5 = [xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2)];
    yd5 = [yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2)];
    %Sixth Order
    xd7 = [xd(k-3) xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2) xd(k+3)];
    yd7 = [yd(k-3) yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2) yd(k+3)];
    c2 = polyfit(xd3, yd3, 2);
    c4 = polyfit(xd5, yd5, 4);
    c6 = polyfit(xd7, yd7, 6);
    cder2 = polyder(c2);
    der2 = polyval(cder2, xd(k));
    csecder2 = polyder(cder2);
    secder2 = polyval(csecder2, xd(k));
    cder4 = polyder(c4);
    der4 = polyval(cder4, xd(k));
    csecder4 = polyder(cder4);
    secder4 = polyval(csecder4, xd(k));
    cder6 = polyder(c6);
    der6 = polyval(cder6, xd(k));
    csecder6 = polyder(cder6);
    secder6 = polyval(csecder6, xd(k));
    fprintf('x = %.1f der2 = %.3f der4 = %.3f der6 = %.3f secder2 = %.3f secder4 = %.3f secder6 = %.3f\n', xd(k), der2, der4, der6, secder2, secder4, secder6);
end