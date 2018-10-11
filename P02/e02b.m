n_exp = 1e5;
n_lan = 11;
prob_cara = 0.5;

exp = rand(n_lan, n_exp)>prob_cara;
casos_f = sum(exp)==11;
casos_p = sum(exp(1:10, :))==10;
prob = sum(casos_f)/sum(casos_p)