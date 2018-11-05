function hash_code = DJB31MA(str, seed)
  hash_code = seed;
  for(i=1:length(str))
    hash_code = 31 * hash_code + str(i);
  end
end