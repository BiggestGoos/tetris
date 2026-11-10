module Data.Player where

import Data.Position
import Data.Tetromino

data Player = Player Tetromino Position Rotation deriving (Show)
