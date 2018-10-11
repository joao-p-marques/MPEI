n_exp = 1e5;
prob_rapaz = 0.5;
n_filhos = 5;

exp = rand(n_filhos, n_exp)>prob_rapaz;
casos_f = sum(exp)>=2; #2 rapazes
casos_p = sum(exp)>=1; #1o filho rapaz
prob = sum(casos_f)/sum(casos_p)