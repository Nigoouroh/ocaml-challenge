let f1 x = if x > 0 then true else false

let f2 x = if x then 1 else 0

let f3 x = (x, x > 0)

let f4 x = match x with
| (n, true) -> n + 1
| (n, false) -> n - 1

let f5 x = if x > 0 then (fun y -> y + x) else failwith "error"
(*f5 prende un parametro x, che è sicuramente un intero, perché controllo se è > 0
e il tipo di ritorno è l'if then else, che devono avere lo stesso tipo*)

(*(fun y -> y + x) ha un tipo che fun con parametro y e ritorno la somma di y con x e siccome
x è un intero, y dovrà essere per forza un intero, e il tipo di ritorno è sempre un int*)

(*f10 : (int -> int) -> int*)

let f6 x = if x > 0 then (fun (y : int) -> true) else failwith "error"

let f7 x = if x then (fun (y : int) -> true) else failwith "error"

let f8 x = if x then (fun (y : bool) -> 1) else failwith "error"

let f9 x = if x then (fun (y : int) -> y + 1) else failwith "error"

let f10 g = if (g 1) = 0 then 1 else 0

let f11 g = if (g 1) = true then 1 else 0

let f12 g = if (g true) = 1 then 1 else 0

let f13 g = if (g 1) = true then true else false

let f14 g = if (g true) = true then 1 else 0

let f15 x (valore, tag) =
  if x > 0 then
    match tag with
    | 1 -> valore + 1
    | 2 -> valore + 2
    | 0 -> 0
    | _ -> valore 
  else
    -1

let f16 x = if x > 0 then (fun (y : int) -> (fun (g : int) -> x)) else failwith "error"

let f17 f = if (f 1) = 1 then (fun (y : int) -> 1) else failwith "error"

let f18 f = if (f (fun (g : int) -> 1)) = 1 then 1 else failwith "error"

let f19 f = if (f 1) = 1 then (fun (g : bool) -> true) else failwith "error"

let f20 f = if (f 1) = true then (fun (g : bool) -> 1) else failwith "error"