(*Espressione regolare:*)

let xor a b = (a && not b) || (not a && b);;

(*Condizionale:*)

let xorif a b = if a then not b else b;;

(*Pattern matching:*)

let xorpa a b = match (a, b) with
    (false, false) -> false
  | (false, true) -> true
  | (true, false) -> true
  | (true, true) -> false;;