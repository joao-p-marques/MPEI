function hash_code = string2hash(str, type)
  if(nargin<2), type='djb2'; end
  switch(type)
    case 'djb2'
      hash_code = 5381*ones(size(str,1),1); 
      for i=1:size(str,2), 
        hash_code = mod(hash_code * 33 + str(:,i), 2^32-1); 
      end
    case 'sdbm'
      hash_code = zeros(size(str,1),1);
      for i=1:size(str,2), 
        hash_code = mod(hash_code * 65599 + str(:,i), 2^32-1);
      end
    otherwise
      error('string_hash:inputs','unknown type'); 
end