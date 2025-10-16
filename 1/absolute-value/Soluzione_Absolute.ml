let absolute a = if a < 0 then -a else a;;

assert (absolute (-5) = 5);;