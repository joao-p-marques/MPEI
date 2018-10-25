
% 1 A

y = lcg(3, 3, 3, 5, 1000);
%hist(y);
%n_g = unique(y)
% nestas condiçoes, lcg() gera a sequencia 0, 2, 3, 4 repetidamente

% 1 B

y = lcg(3, 3, 3, 5, 1000);
y = y / 5; %para gerar n.os entre 0 e 1
%hist(y);
%n_g = unique(y)
% gera sequiencia 0.00000   0.40000   0.60000   0.80000

% 1 C

a = 13^13;
m = 2^29;
X0 = 3;
y = lcg_2(X0, a, m, 1000);
hist(y);
n_g = unique(y)