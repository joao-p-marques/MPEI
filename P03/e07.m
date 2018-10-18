
alpha = 15;

% A
k = 0;
p_a = (alpha^k * e^(-alpha)) / factorial(k)

% B
p_b_ = 0; % prob. de chegarem menos de 10 mensagens
for(k = 0 : 10)
	p_b_ += (alpha^k * e^(-alpha)) / factorial(k);
end
p_b = 1 - p_b_

