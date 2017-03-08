%Clayton Samson
%CSC 2262
%cs2262XX
%Assignment 1B
accuracy = 1e-7;
h = 70;
d = 5500;
g = 9.81;
for(u = 240:30:390)
f = @(theta)u*cos(theta)*(u*sin(theta)/g +(u^2*sin(theta)^2/g^2-2*h/g)^(1/2)) -d;
stepsize = 1*pi/180;
for(grid_point = 0:stepsize:90*pi/180)
    left_end_point = grid_point;
    right_end_point = grid_point + stepsize;
    function_left = f(left_end_point);
    function_right = f(right_end_point);
    if(function_left * function_right < 0)
        guess = (left_end_point + right_end_point)/2;
        theta = fzero(f, guess);
        fprintf('u=%d theta=%.5f\n', u, theta * 180/pi);
    end
    if(funtion_left == 0)
        theta = left_end_point;
        fprintf('u=%d theta=%.5f\n', u, theta*180/pi);
    end
end
fprintf('\n');
end
        