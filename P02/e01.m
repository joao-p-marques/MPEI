prob_rapaz = 0.5;
n_filhos = 2;

exp = rand(n_filhos, 1e5) > prob_rapaz;
casos_f = sum(exp)>=1;
prob = sum(casos_f)/1e5