let best_offer a b c =
  let max_opt x y =
    match x, y with
    | None, None -> None
    | Some v, None | None, Some v -> Some v
    | Some v1, Some v2 -> Some (max v1 v2)
  in
  max_opt a (max_opt b c);;

assert (best_offer (Some 100) (Some 200) (Some 150) = Some 200);;
assert (best_offer (Some 100) None (Some 150) = Some 150);;
assert (best_offer None None None = None);;
assert (best_offer None (Some 300) None = Some 300);; 