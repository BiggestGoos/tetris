module Data.Square where

import Data.Tetromino.Type

type Square = Maybe Tetromino

-- List of rows
type Squares = [[Square]]
