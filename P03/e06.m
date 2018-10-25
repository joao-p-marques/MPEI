
p = 1 / 1000;
n = 8000;
k = 7;

% Forma Binomial
p_bin = nchoosek(n, k) * p^k * (1-p)^(n-k)

% Poisson
alpha = 8;
p_poisson = ((alpha^k) / factorial(k)) * e^(-alpha)

