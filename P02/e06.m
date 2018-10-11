n_exp = 1e3;
p_desejada = 0.9;

for (n=2:50)
  exp_a = randi([1 365], n, n_exp);
  casos_f = 0;
  casos_p = n_exp;
  for(i=1:n_exp)
    if(length(unique(exp_a(:, i)))<length(exp_a(:, i))) #2 pessoas nasceram no mesmo dia e mes
      casos_f = casos_f + 1;
    end
  end
  p = casos_f / casos_p
  if(p>=p_desejada)
    n
    break;  
  end
end