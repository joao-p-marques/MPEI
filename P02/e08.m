n_exp = 100;

exp = randi([1 3], 2, n_exp);

casos_f_um_dois = 0;
casos_f_um = 0;
casos_f_um_o_dois = 0;
for (i=1:n_exp)
  if (exp(1, i)==1 && exp(2, i)==2)
    casos_f_um_dois = casos_f_um_dois + 1;
  end
  if (ismember(1, exp(:, i)))
    casos_f_um = casos_f_um + 1;
  end
  if (ismember(2, exp(:, i)) || ismember(2, exp(:, i)))
    casos_f_um_o_dois++;
  end
end
p_seq_um_dois = casos_f_um_dois / n_exp
p_um = casos_f_um / n_exp
p_um_o_dois = casos_f_um_o_dois / n_exp