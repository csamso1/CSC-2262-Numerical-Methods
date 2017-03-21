% Clayton Samson
% CSC 2262
% cs226276
% Assignment 8a

[xd, yd] = textread('prog8a.dat');
n = length(xd);
color = ['k', 'c', 'm', 'k', 'g', 'b', 'r', 'k', 'k'];
figure(1);
hold on;
box on;
for(k = 2:n-1)
    xd3 = [xd(k-1) xd(k) xd(k+1)];
    yd3 = [yd(k-1) yd(k) yd(k+1)];
    c2 = polyfit(xd3, yd3, 2);
    x = xd(k-1) : .001 : xd(k+1);
    y2 = polyval(c2, x);
    plot(x, y2, color(k), xd, yd, 'ko');
    axis([-1 11 1 13]);
    set(gca, 'xtick', 0:11);
    set(gca, 'ytick', 1:13);
    xlabel('x');
    ylabel('y');
    title('Filtered 2nd Order Polynomials');
end

figure(2);
hold on;
box on;
for(k = 3:n-2)
    xd5 = [xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2)];
    yd5 = [yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2)];
    c4 = polyfit(xd5, yd5, 4);
    x = xd(k-2) : .001 : xd(k+2);
    y4 = polyval(c4, x);
    plot(x, y4, color(k), xd, yd, 'ko');
    axis([-1 11 0 14]);
    set(gca, 'xtick', -1:11);
    set(gca, 'ytick', 0:14);
    xlabel('x');
    ylabel('y');
    title('Fitted 4th Order Polynomials');
end

figure(3);
hold on;
box on;
for(k = 4:n-3)
    xd7 = [xd(k-3) xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2) xd(k+3)];
    yd7 = [yd(k-3) yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2) yd(k+3)];
    c6 = polyfit(xd7, yd7, 6);
    x = xd(k-3) : .001 : xd(k+3);
    y6 = polyval(c6, x);
    plot(x, y6, color(k), xd, yd, 'ko');
    axis([-1 11 -5 18]);
    set(gca, 'xtick', -1:11);
    set(gca, 'ytick', -5:18);
    xlabel('x');
    ylabel('y');
    title('Fitted 6th Order Polynomials');
end