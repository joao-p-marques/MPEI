nLan = 15;
p = 0.5;
k = 6;

prob = 0;

for k=6 : 15
  prob = prob + factorial(nLan)/(factorial(nLan-k)*factorial(k)) * p^k * (1-p)^(nLan-k);
end

prob
probSimulacao = simulacao(15, 10000, 6, 0.5)