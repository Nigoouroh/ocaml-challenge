(*Espressioni regolari:*)

let multiplexer s0 a b = (s0 && a) || (not s0 && b);;

(*Condizionale:*)

let multiplexerif s0 a b = if s0 then a else b;;

(*Patter mathching:*)

let multiplexerpa s0 a b = match (s0, a, b) with
  |(false, false, false) | (false, true, false) | (true, false, false) | 
   (true, false, true) -> false 
  | (false, false, true) | (false, true, true) | (true, true, false) |
    (true, true, true) -> true;;