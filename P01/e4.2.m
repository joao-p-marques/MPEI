nLan = 20;
nExp = 1e5;
p = 0.5;

probs = 0:20;

for k=0:20
  probs(k+1) = simulacao(nLan, nExp, k, p);
end

probs
stem([0:20], probs)