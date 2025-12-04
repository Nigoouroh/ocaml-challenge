let rec rev_list l = match l with 
  [] -> []
| a::tail -> (rev_list tail) @ [a];;

(*
[1; 2; 3]

(rev [2; 3]) @ [1]
(rev [3]) @ [2]
(rev []) @ [3]
[] @ [3]
*)
