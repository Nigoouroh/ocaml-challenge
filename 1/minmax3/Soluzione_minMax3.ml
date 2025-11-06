let minmax3 (a: int) b c = 
  min a (min b c), max a (max b c);;

assert (minmax3 1 8 5 = (1, 8))