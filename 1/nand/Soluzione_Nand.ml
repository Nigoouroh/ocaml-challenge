
(*Espressione regolare.*)
let nand1 a b = not(a && b);;

(*Condizionale.*)
let nand a b = if a then not b else not a;;
assert (nand true false = true);;

(*Pattern matching*)
let nand a b = match(a,b) with
    (false, false) -> true
  | (false, true) -> true
  | (true, false) -> true
  | (true, true) -> false;;

