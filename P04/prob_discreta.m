function y = prob_discreta (x, px, N)
    y = zeros(1, N);
    for(j=1:N)
        u = rand();
        i = 1 + sum( u > cumsum(px) );
        y(j) = x(i);
    end
end