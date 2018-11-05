function hash_code = hashcode(str)
  hash_code = 0;
  for(i=1:length(str))
    hash_code = hash_code + str(i)*31^(length(str)-i);
  end