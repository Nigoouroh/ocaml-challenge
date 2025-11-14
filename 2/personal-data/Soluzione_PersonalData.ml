(*Versione product type*)

type person2 = Person of (string * int * string option)

let make_person (n : string) (a : int) (e : string option) = 
  Person (n, a, e);;


let get_email (p : person2) = match p with
  | Person (_, _, email) -> email

let can_send_adult_email (p : person2) = match p with
  | Person (_, eta, Some _) -> eta > 18
  | Person (_, eta, None) -> false;;

let gino = make_person "gino" 21 (Some "gino@gmail.com");;
let pino = make_person "pino" 23 None;;
let anna = make_person "anna" 16 (Some "anna@tiscali.it");;

assert(get_email gino = Some "gino@gmail.com");;
assert(get_email pino = None);;

assert(can_send_adult_email gino);;
assert(not (can_send_adult_email pino));;
assert(not (can_send_adult_email anna));;

(*Versione con i record*)

type person1 = {
  name: string;
  age: int;
  email: string option;
}

let make_person2 (n : string) (a : int) (e : string option) = 
  if a < 0 && a > 150 then failwith "Età non valida"
   else { name = n; age = a; email = e}

let get_email2 (p : person1) = p.email

let can_send_adult_email2 (p : person1) = match p.email with
   | Some _ -> p.age >= 18 
   | None -> false;;

let gino = make_person2 "gino" 21 (Some "gino@gmail.com");;
let pino = make_person2 "pino" 23 None;;
let anna = make_person2 "anna" 16 (Some "anna@tiscali.it");;

assert(get_email2 gino = Some "gino@gmail.com");;
assert(get_email2 pino = None);;

assert(can_send_adult_email2 gino);;
assert(not (can_send_adult_email2 pino));;
assert(not (can_send_adult_email2 anna));;

