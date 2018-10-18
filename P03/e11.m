
N = 1e5;

desvio_padrao = 2;
media = 14;

f = randn(1, N) * desvio_padrao + media;
n_notas = sum(f > 0 & f < 20);

%f = [];
%for(i = 1 : N)
%	if(f_r(i)<=20 && f_r(i)>=0)
%		f.append(f_r(i));
%	end
%end

%hist(f_r, [1 : 20]);

p_1 = sum(f >= 12 & f <= 16) / n_notas
p_2 = sum(f >= 10 & f <= 18) / n_notas
p_3 = sum(f >= 10 & f <= 20) / n_notas

