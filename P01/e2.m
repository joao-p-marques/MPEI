nLan = 15;
p = 0.5;
k = 6;

prob = factorial(nLan)/(factorial(nLan-k)*factorial(k)) * p^k * (1-p)^(nLan-k)