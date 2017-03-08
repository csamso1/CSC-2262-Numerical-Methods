% prog3a

R1 = 2.4;
R2 = 2.2;
x = 2.67;
y = 1.5;
guess1 = 20*pi/180;
guess2 = 70*pi/180;
guess3 = 30*pi/180;
accuracy = 1e-7;
count = 0;
for z=0:.01:2.5
    count = count+1;
    f1 = @(t1, t2, p1) R1*sin(t1)*cos(p1)+R2*sin(t1+t2)*cos(p1)-x;
    f2 = @(t1, t2, p1) R1*sin(t1)*sin(p1)+R2*sin(t1+t2)*sin(p1)-y;
    f3 = @(t1, t2, p1) R1*cos(t1)+R2*cos(t1+t2)-z;
    df1d1 = @(t1, t2, p1) R1*cos(t1)*cos(p1)+R2*cos(t1+t2)*cos(p1);
    df1d2 = @(t1, t2, p1) R2*cos(t1+t2)*cos(p1);
    df1d3 = @(t1, t2, p1) -R1*sin(t1)*sin(p1)-R2*sin(t1+t2)*sin(p1);
    df2d1 = @(t1, t2, p1) R1*cos(t1)*sin(p1)+R2*cos(t1+t2)*sin(p1);
    df2d2 = @(t1, t2, p1) R2*cos(t1+t2)*sin(p1);
    df2d3 = @(t1, t2, p1) R1*sin(t1)*cos(p1)+R2*sin(t1+t2)*cos(p1);
    df3d1 = @(t1, t2, p1) -R1*sin(t1)-R2*sin(t1+t2);
    df3d2 = @(t1, t2, p1) -R2*sin(t1+t2);
    df3d3 = @(t1, t2, p1) 0;
    [t1,t2,p1] = newton3(f1,f2,f3,df1d1,df1d2,df1d3,df2d1,df2d2,df2d3,df3d1,df3d2,df3d3,guess1,guess2,guess3,accuracy);
    line1x = [0 R1*sin(t1)*cos(p1)];
    line1y = [0 R1*sin(t1)*sin(p1)];
    line1z = [0 R2*cos(t1)];
    line2x = [R1*sin(t1)*cos(p1) x];
    line2y = [R1*sin(t1)*sin(p1) y];
    line2z = [R2*cos(t1) z];
    plot3(line1x, line1y, line1z, 'r', line2x, line2y, line2z, 'b',x,y,z,'ko');
    axis([0 3 0 3 0 3]);
    set(gca, 'xtick' ,0:1:3);
    set(gca, 'ytick' ,0:1:3);
    set(gca, 'ztick' ,0:1:3);
    xlabel('x');
    ylabel('y');
    zlabel('z');
    title('Assignment 3a');
end
    

    