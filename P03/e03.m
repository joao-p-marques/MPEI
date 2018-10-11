
n_exp = 1e5;
x = [0 1 2 3 4]; # S(X)

exp = randi([0 1], 4, n_exp); #0-cara 1-coroa
fd = zeros(1, 5); #funçao distribuiçao

for(i=1:n_exp)
  fd(sum(exp(:, i))+1)++;
end

fd /= n_exp; # fd = nº vezes que sairam x coras / nº experiencias
subplot(1, 2, 1);
stairs(fd);

e_x = sum(x.*fd) # E[X] - Valor esperado / media
var_x = sum(x.^2.*fd) - e_x^2
desvio_padrao = sqrt(var_x)

#
# X é uma variável binomial
#
# F(k) = (combinaçoes n, k a k) * p_sucesso^k * (1-p_sucesso)^(n-k)
#

fd_def = zeros(1, 5);
n=4; #nº lançamentos
p=0.5; #p sucesso
for(x=0:n)
  fd_def(1, x+1) = nchoosek(n,x) * p^x * (1-p)^(n-x);
end
subplot(1, 2, 2);
stairs(fd_def);

p_1 = sum(fd_def(1, 3:end)) # p de obter pelo menos 2 coroas
p_2 = sum(fd_def(1, 1:2)) # p de obter ate uma coroa
p_3 = sum(fd_def(1, 2:4)) # p de obter entre 1 e 3 coroas
