type card = Joker | Val of int;;

let win c1 c2 = 
  match(c1, c2) with
    (Val a, Val b) -> (a > b) 
  | (_, Joker) -> false
  | (Joker, _) -> true;;

assert (win (Joker) (Val 3) = true);;