amostra = 5;
p = 0.3;
k = 3;

probAnalitica = factorial(amostra)/(factorial(amostra-k)*factorial(k)) * p^k * (1-p)^(amostra-k)