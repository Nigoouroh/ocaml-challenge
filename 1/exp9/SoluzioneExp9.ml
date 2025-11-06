let square x = x * x;;

assert (square 3 = 9)

let exp9 x = (square (square(square(x))))*x;;

assert (exp9 3 = 19683);;