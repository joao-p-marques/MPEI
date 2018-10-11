%n_exp = 1e5;
%
%exp = randi([1 6], 1, n_exp);
%res = zeros(1, 6);
%res2 = zeros(1, 6);
%
%for(i=1:n_exp)
%  res(exp(1, i))++;
%  res2(exp(1, i):6)++;
%end
%
%stem(res);
%pause;
%stem(res2);

fp = ones(1, 6)/6; # prob = 1/6

subplot(1, 2, 1);
stem(fp);

fd = zeros(1, 6);
for(i=1:6)
  fd(1, i) = sum(fp(1:i));
end

subplot(1, 2, 2);
stem(fd);