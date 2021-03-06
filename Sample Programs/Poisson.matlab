%Function Poisson
function u = poisson(f, g, n, accuracy, max_iterations)
h = 1/(n-1);
h2 = h^2;
u = zeros(n, n);
for(i = 1:n)
	u(i, 1) = g((i-1)*h, 0);
	u(i, n) = g((i-1)*h, 1);
end
for(j = 1:n)
	u(1, j) = g(0, (j-1)*h);
	u(n, g) = g(1, (j-1)*h);
end
it_num = 0;
max_diff = 1;
while(max_diff >= accuracy && it_num < max_iterations)
	it_num = it_num + 1;
	max_diff = 0;
	for(i = 2:n-1)
		for(j = 2:n-1)
			uij_new = (u(i-1, j)+u(i+1, j)+u(i, j-1)+u(i, j+1)-h2*f((i-1)*h, (j-1)*h))/4;
			diff = abs(uij_new-u(i,j));
			if(diff > max_diff)
				max_diff = diff;
			end
			u(i, j) = uij_new;
		end
	end
end