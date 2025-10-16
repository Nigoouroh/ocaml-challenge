type weekday = Mo | Tu | We | Th | Fr;;

type course = ALF | LIP;;

let isLecture d c = match (d, c) with 
  | (Tu, ALF) | (Th, ALF) | (Fr, ALF) -> true 
  | (We, LIP) | (Th, LIP) -> true 
  | _ -> false;;

assert (isLecture Tu ALF = true);;
