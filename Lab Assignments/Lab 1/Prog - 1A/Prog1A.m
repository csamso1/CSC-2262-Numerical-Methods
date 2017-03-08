%Clayton Samson
%CSC 2262
%cs2262XX
%Assignment 1A
accuracy = 1e-7;
f = @(theta)728*theta^4-8249*theta^3+33660*theta^2-57996*theta+34992;
fp = @(theta)(728 * 4)*theta^3-(8249 * 3)*theta^2+(33660 * 2)*theta-57996;
stepsize = 1*pi/180;
for(grid_point = 0:stepsize:5)
    left_end_point = grid_point;
    right_end_point = grid_point+stepsize;
    function_left = f(left_end_point);
    function_right = f(right_end_point);
    if(function_left * function_right < 0)
        guess = (left_end_point + right_end_point)/2;
        theta = Newton(f, fp, guess, accuracy);
        fprintf('theta=%.5f\n', theta);
    end
end