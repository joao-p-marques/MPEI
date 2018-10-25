function y = bernoulli(p, N)
    y = rand(1, N) < p;