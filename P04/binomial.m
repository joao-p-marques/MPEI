function y = binomial(n, p, N)
    exp = rand(n, N) < p;
    y = sum(exp);