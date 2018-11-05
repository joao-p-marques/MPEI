function s = string_generator(min_length, max_length)
  % Generates a random string of characters with length between min_length and max_length
  str_length = randi([min_length max_length], 1, 1);
  s_ascii_codes = zeros(1, str_length);
  for(i=1:str_length)
    m_or_M = randi([1 2], 1, 1);
    if(m_or_M==1) %min
      s_ascii_codes(i) = randi([97 122], 1, 1);
    else % mai
      s_ascii_codes(i) = randi([65 90], 1, 1);
    end
  end
  s_ascii_codes;
  s = char(s_ascii_codes)
end