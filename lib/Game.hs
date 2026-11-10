module Game where

import Data.Square
import Data.Player

data GameInfo = GameInfo {
  boardWidth,
  boardHeight :: Int,
  ticksPerFall :: Int
}

data Game = Game {
  gameData :: GameData,
  board :: Squares,
  player :: Player
} deriving (Show)

createGame :: GameInfo -> Game
createGame info = ...
