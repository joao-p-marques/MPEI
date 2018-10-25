function u = lcg_2 (X0, a, m, N)
    x = zeros(1, N);
    u = zeros(1, N);
    x(1) = X0;
    for(i=1:N)
        x(i+1) = mod(a * x(i), m);
        u(i) = x(i) / m;
    end
end