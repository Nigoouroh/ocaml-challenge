let is_even a = a mod 2 = 0;;

let win a b =
  let a_ok = a >= 1 && a <= 5 in
  let b_ok = b >= 1 && b <= 5 in
  match (a_ok, b_ok) with
  | false, false -> 0
  | true, false  -> 1
  | false, true  -> -1
  | true, true   -> if is_even (a + b) then 1 else -1
