module Data.Player where

import Data.Position
import Data.Tetromino

data Player = Player Tetromino Position Rotation deriving (Show)

type Number = Int

zero :: Player
zero = Player I (-1,-1) Zero

new :: Number -> Position -> Player
new nr (x,y) =
  let
    tetromino = fromInt nr
    -- All tetrominoes are stored in such a way that relative to the
    -- starting offset (center of the board), they should be moved two squares to the left.
    defaultOffset = -2
    finalPosition = (x + defaultOffset, y)
  in
    Player tetromino finalPosition Zero
