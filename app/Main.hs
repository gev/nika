module Main where

import Eval
import Parse

main :: IO ()
main = do
    putStrLn "Enter an expression:"
    s <- getLine
    let expr = parse s
    putStrLn ("Result: " ++ show (eval expr))
