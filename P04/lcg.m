function u = lcg (X0, a, c, m, N)
    u = zeros(1, N);
    u(1) = X0;
    for(i=2:N+1)
        u(i) = rem(a * u(i-1) + c, m);
    end
end