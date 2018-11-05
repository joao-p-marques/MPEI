function hash_code = hashstring(str)
  hash_code = 0;
  for(i=1:length(str))
    hash_code = ( bitshift(hash_code, 1, 3) + bitshift(hash_code, -1, 28) + str(i)+33 ); % bitshift (a, k, n) A positive k leads to a left shift; A negative value to a right shift.
  end