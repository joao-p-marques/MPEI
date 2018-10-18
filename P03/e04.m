%
% A variável X é do tipo binomial.
% A sua função distribuição será do tipo
% 	F_analitico(x+1) = nchoosek(n, x) * p_sucesso^x * (1-p_sucesso)^(n-x);
%


%Analítico
p_sucesso = 0.3;
n = 5;

F_analitico = zeros(1, n+1);

for(x = 0 : n)
	F_analitico(x+1) = nchoosek(n, x) * p_sucesso^x * (1-p_sucesso)^(n-x);
end

F_analitico
subplot(1, 2, 1);
stem([0 : 5], F_analitico);
xlabel('x');
ylabel('p(x)');
title('Analítico');

% Prob. de no max. 2 serem defeituosas:
p_a = sum(F_analitico(1, 1:3))

%Simulação
n_exp = 1e5;

exp = rand(n, n_exp) < p_sucesso;
F_sim = zeros(1, n+1);

for(i = 1 : n_exp)
	F_sim(sum(exp(1:end, i)) + 1) += 1;
end

F_sim /= n_exp;

subplot(1, 2, 2);
stem([0 : 5], F_sim);
xlabel('x');
ylabel('p(x)');
title('Simulação');

% Prob. de no max. 2 serem defeituosas:
p_sim = sum(F_sim(1, 1:3))
