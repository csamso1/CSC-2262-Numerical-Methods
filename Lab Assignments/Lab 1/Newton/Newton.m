%Clayton Samson
%CSC 2262
%cs2262XX
%Newton
function theta = newton(f, fp, guess, accuracy)
theta_new = guess;
theta_old = guess + 1;
while(abs(theta_new - theta_old) >= accuracy)
    theta_old = theta_new;
    theta_new = theta_old - f(theta_old)/fp(theta_old);
end
theta = theta_new;