n_exp = 1e5;
p_cancro = 1/1000;

exp_cancro = rand(1, n_exp)<=p_cancro; #mulheres com cancro
exames = zeros(1, n_exp);

for(i=1:n_exp)
    if(exp_cancro(i)==1) 
        exames(i) = rand()<=0.9;
    else
        exames(i) = rand()<=0.1;
    end
end 

prob = sum(exp_cancro==1 & exames==1) / sum(exames==1)