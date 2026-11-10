module Main (main) where

import Tetris qualified (someFunc)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  Tetris.someFunc
