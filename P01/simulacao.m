function probSimulacao = simulacao(nLan, nExp, k, p)
  lancamentos = rand(nLan, nExp)>p;
  sucessos = sum(lancamentos)==k;
  probSimulacao = sum(sucessos)/nExp;
end