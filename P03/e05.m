%
% Para o aviao de dois motores, a probabilidade de ele se despenhar é dada por:
%	p_a2 = nchoosek(n, k) * p^k * (1-p)^(n-k) , 
%		com k=2 (mais de metade dos motores), n=2 (nº de motores), p=p_falha do motor.
%
% Para o aviao de quatro motores, a probabilidade de ele se despenhar é dada por:
%	p_a4 = Somatorio(k=3 até n) [ nchoosek(n, k) * p^k * (1-p)^(n-k) ] , 
%		com k=3/4 (mais de metade dos motores), n=4 (nº de motores), p=p_falha do motor.
%

p = logspace(-3,log10(1/2),100);

% Avião de 2 motores 
n = 2;
k = 2;
p_a2 = nchoosek(n, k) * p.^k .* (1-p).^(n-k);

plot(p, p_a2, 'Color', [1 0 0]); % p_a2 - red
hold on;

% Avião de 4 motores
n = 4;
p_a4 = zeros(1, length(p));
for(k = 3 : 4)
	p_a4 += nchoosek(n, k) * p.^k .* (1-p).^(n-k);
end

plot(p, p_a4, 'Color', [0 0 1]); %p_a4 - blue
hold off;


%
% Supondo que a probabilidade de falha de motor é baixa ( < ~0.34), o aviao de 4 motores apresenta menor probabilidade de queda.
% Se a probabilidade de falha de motor é mais elevada ( > ~0.34), o aviao de 2 motores apresenta menor probabiliadade de queda.

