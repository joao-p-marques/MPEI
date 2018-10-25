
alpha = 1;

p_ = 0;

for(k=0:1)
	p_ += alpha^k * e^(-alpha) / factorial(k);
end

p = 1 - p_

