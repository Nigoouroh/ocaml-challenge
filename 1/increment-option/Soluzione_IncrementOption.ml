let incr_opt x =
  match x with
  | None -> None
  | Some x -> Some (x + 1);;

assert (incr_opt (Some 5) = Some 6);;
assert (incr_opt None = None);;