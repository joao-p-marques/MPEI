n_exp = 1e5;
n_lan = 10;
prob_cara = 0.5;

exp = rand(n_lan, n_exp)>prob_cara;
casos_p = sum(exp)==10;
casos_f = n_exp;
prob = sum(casos_p)/casos_f