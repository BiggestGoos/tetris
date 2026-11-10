module Data.Tetromino.Type where

data Tetromino = I | O | T | J | L | S | Z deriving (Show, Eq)

fromInt :: Int -> Tetromino
fromInt 0 = I
fromInt 1 = O
fromInt 2 = T
fromInt 3 = J
fromInt 4 = L
fromInt 5 = S
fromInt 6 = Z
fromInt x = error $ show x ++ " is not a valid tetromino!"
