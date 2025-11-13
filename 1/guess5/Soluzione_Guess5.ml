Random.self_init();;

let guess5 (a : int) = if a < 1 || a > 5 then failwith "Inserisci un numero tra 1 e 5" 
else 
  let r = Random.int(5) + 1 in
  (a =  r, r);;
