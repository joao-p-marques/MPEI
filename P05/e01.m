str = string_generator(3, 20);
list_size = 100;

hash_code_string2hash = rem( string2hash(str), list_size )
hash_code_hashstring = rem( hashstring(str), list_size )
hash_code_DJB31MA = rem( DJB31MA(str, 0), list_size ) %seed=0 ???
hash_code_hashcode = rem( hashcode(str) , list_size )
