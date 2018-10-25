function y = exponencial(N, p)
    y = zeros(1, N);
    %fx = 1 - e^(-p*x);
    for(i=1:N)
        u = rand();
        x = log( 1 - u ) / -p;
        y(i) = x;
    end
end