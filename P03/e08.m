
% x = [1, 2, 3, 4];
% f(x) = (x + 5) / 30;

for(x = 1 : 4)
	if( (x+5)/30 > 1 || (x+5)/30 < 0 )
	       msg = "A função f não pode representar esta variável aleatoria"
	       exit();
       	end
end
msg = "A função pode representar a variavel aleatoria"

