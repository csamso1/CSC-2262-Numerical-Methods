%Sample9b
alpha = 62*pi/180;
beta = 73*pi/180;
gamma = 38*pi/180;
W = 300;
H = 350;
d =[0
	0
	9
	W
	0
	0
	H
	0];
a =[cos(alpha)	0			0			1	0	0	0	0
	sin(alpha)	0			0			0	0	1	0	0
	0			-cos(beta)	0			-1	1	0	0	0
	0			sin(beta)	0			0	0	0	0	0
	0			0			-cos(gamma)	0	-1	0	0	0
	0			0			sin(gamma)	0	0	0	1	0
	-cos(alpha)	cos(beta)	cos(gamma)	0	0	0	0	0
	-sin(alpha)	-sin(beta)	-sin(gamma)	0	0	0	0	0];
b = inv(a);
F = b*d;
%Prints array F
F