let in_range x a b = if x > a && x < b then true else false;;

assert (in_range 4 1 5 = true);;