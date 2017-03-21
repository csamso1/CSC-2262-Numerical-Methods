%Sample 9a

[xd yd] = textread('sample9a.dat');
n=length(xd);
h = xd(2)-xd(1);
for(k=3 : n-2)
	xd3 = [xd(k-1) xd(k) xd(k+1)];
	yd3 = [yd(k-1) yd(k) yd(k+1)];
	xd5 = [xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2)];
	yd5 = [yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2)];
	c2 = polyfit(xd3, yd3, 2);
	c4 = polyfit(xd5, yd5, 4);
	cder2 = polyder(c2);
	der2 = polyval(cder2, xd(k));
	cder4 = polyder(c4);
	der4 = polyval(cder4, xd(k));
	csecder2 = polyder(cder2);
	secder2 = polyval(csecder2, xd(k));
	%gets 2nd derivited of 4th order polynomeal
	csecder4 = polyder(cder4);
	%use only datapoint k (center)
	secder4 = polyval(csecder4, xd(k));
	dif3 = (yd(k+1)-yd(k-1))/(2*h);
	dif5 = (yd(k-2)-8*yd(k-1)+8*yd(k+1)-yd(k+2))/(12*h);
	secdif3 = (yd(k-1)-2*yd(k)+yd(k+1))/h^2;
	%line below is incomplete
	secdif5 = (-yd(k-2)+16*yd(k-1)-30*yd(....))......

end