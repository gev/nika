module Parse where

import Expr

parse :: String -> Expr
parse s = case words s of
    [x] -> Num (read x)
    [x, "+", y] -> Add (Num (read x)) (Num (read y))
    [x, "-", y] -> Sub (Num (read x)) (Num (read y))
    [x, "*", y] -> Mul (Num (read x)) (Num (read y))
    [x, "/", y] -> Div (Num (read x)) (Num (read y))
    _ -> error "Invalid input"
