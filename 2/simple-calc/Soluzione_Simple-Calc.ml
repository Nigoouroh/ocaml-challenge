type operation = Add of int * int | 
Sub of int * int | 
Mul of int * int | 
Div of int * int

let eval (op : operation) : int option = match op with
  | Add(a, b) -> Some (a + b) 
  | Sub(a,b) -> Some (a - b)
  | Mul(a, b) -> Some (a * b)
  | Div(a, b) -> 
    if b = 0 then None else Some (a / b)

let make_operation (c : char) (par1 : int) ( par2: int ) = match (c, par1, par2) with 
  | ('+', a, b) -> Add(a,b)
  | ('-', a, b) -> Sub(a, b)
  | ('*', a, b) -> Mul(a, b)
  | ('/', a, b) -> 
    if b = 0 then failwith "il den non può esser 0" else Div(a, b)
  | (_, a, b) -> failwith "Il primo parametro non corrisponde";;

let op1 = make_operation '+' 1 2;;
let op2 = make_operation '*' 2 2;;

let op3 = make_operation 'd' 2 3;;

assert (op1 = Add(1,2));;
assert (op2 = Mul(2,2));;



