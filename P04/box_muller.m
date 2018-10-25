function y = box_muller(N, m, var)
    y = zeros(1, N);
    for(i=1:N)
        u1 = rand();
        u2 = rand();
        xi = ( (-2 * log(u1))^(1/2) ) * cos(2 * pi * u2);
        yi = ( (-2 * log(u1))^(1/2) ) * sin(2 * pi * u2);
        ...