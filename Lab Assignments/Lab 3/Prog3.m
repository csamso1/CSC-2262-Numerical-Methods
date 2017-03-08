% Clayton Samson
% CSC 2262
% cs226276
% Prog 3

R1 = 2.5;
R2 = 2.1;
Z = 2.65;
Y = 1.7;
guess1 = 25/pi*180;
guess2 = 75/pi*180;
guess3 = 35/pi*180;
accuracy = 1e-7;
count = 0;

for Z=0:0.01:2.7;
    count = count + 1;
    f1 = @(t1, t2, phi) R1*sin(t1)*cos(phi) + R2*sin(t1+t2)*cos(phi) - X;
    f2 = @(t1, t2, phi) R1*sin(t1)*sin(phi) + R2*sin(t1+t2)*sin(phi) - Y;
    f3 = @(t1, t2, phi) R1*cos(t1) + R2*cos(t1+t2) - Z;
    
    df1dt1 = @(t1, t2, phi) R1*cos(t1)*cos(phi) + R2*cos(t1+t2)*cos(phi);
    df1dt2 = @(t1, t2, phi) R2*cos(t1+t2)*cos(phi);
    df1dphi = @(t1, t2, phi) -R1*sin(t1)*sin(phi)-R2*sin(t1+t2)*sin(phi);
    
    df2dt1 = @(t1, t2, phi) R1*cos(t1)*sin(phi) + R2*cos(t1+t2)*sin(phi);
    df2dt2 = @(t1, t2, phi) R2*cos(t1+t2)*sin(phi);
    df2dphi = @(t1, t2, phi) R1*sin(t1)*cos(phi) + R2*sin(t1+t2)*cos(phi);
    
    df3dt1 = @(t1, t2, phi) -R1*sin(t1) - R2*sin(t1+t2);
    df3dt2 = @(t1, t2, phi) -R2*sin(t1+t2);
    df3dphi = @(t1, t2, phi) 0;
    
    [t1, t2, phi] = newton3(f1, f2, f3, df1dt1, df1dt2, df1dphi, df2dt1, df2dt2, df2dphi, df3dt1, df3dt2, df3dphi, guess1, guess2, guess3, accuracy);
    
    %Plotting Graph
    R1x = [0 (R1*sin(t1))*cos(phi)];
    R1y = [0 (R1*sin(t1))*sin(phi)];
    R1z = [0 R1*cos(t1)];
    
    R2x = [(R2*sin(t1+t2))*cos(phi) X];
    R2y = [(R2*sin(t1+t2))*sin(phi) Y];
    R2z = [R2*cos(t1+t2) Z];
    
    line1x = [0 R1*sin(t1)*cos(p1)];
    line1y = [0 R1*sin(t1)*sin(p1)];
    line1z = [0 R2*cos(t1)];
    line2x = [R1*sin(t1)*cos(p1) X];
    line2y = [R1*sin(t1)*sin(p1) Y];
    line2z = [R2*cos(t1) Z];
    
    plot3(line1x, line1y, line1z, 'b', line2x, line2y, line2z, 'r',x,y,z,'ko');
    axis([0 3 0 3 0 3])
    set(gca, 'xtick', 0:1:3)
    set(gca, 'ytick', 0:1:3)
    set(gca, 'ztick', 0:1:3)
    pbaspect([1 1 1]);
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    title('Assignment 3');
    pause(.01);
    if(count == 1)
        pause(7);
    end
end