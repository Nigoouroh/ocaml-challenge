type point = {
    x: float;
    y: float;
}

let p1 = { x = 10.5; y = -3.5 }
let p2 = { x = 8.2; y = 2.1 }

let translate (p : point) (dx : float) (dy : float) : point = {
    x = p.x +. dx;
    y = p.y +. dy
} 

let distance_from_origin (p1 : point) = sqrt( (p1.x *. p1.x) +. (p1.y *. p1.y) )

type color = Red | Green | Blue 

type colored_point = {
    p : point;
    c : color;
}

let same_color (cp1 : colored_point) (cp2 : colored_point)  = 
    if cp1.c = cp2.c then true else false;;

let color1 = { p = p1; c = Red};;    
let color2 = { p = p1; c = Green};; 
   
let color3 = { p = p1; c = Red};;

assert (same_color color1 color2 = false);;
assert (same_color color1 color3 = true);;

let recolor (cp1 : colored_point) (col : color) : colored_point = {
    p = cp1.p ;
    c = col
    
};;

let recolor1 = recolor color2 Red;;

assert (same_color color1 recolor1 = true);;
