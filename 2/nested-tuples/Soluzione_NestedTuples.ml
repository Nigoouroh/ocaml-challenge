let total_score ((_: string), (written, oral)) = 
  written+oral
;;

let passed ((_:string), (written, oral)) =
  (written>=18) && (oral>=18);;

let string_of_results (nome, (written, oral)) =
  if(passed (nome, (written, oral))) then
    nome^" passed with total "^(string_of_int(total_score (nome, (written, oral))))
else
  nome^"did not pass"

let merge (name1, (written1, oral1)) (name2, (written2, oral2)) =
  if name1 <> name2 then
    failwith "The two inputs are not results of the same student"
  else
    (name1, ((max written1 written2), (max oral1 oral2)))

