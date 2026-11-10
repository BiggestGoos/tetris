module Game
(
  Game(..),
  GameInfo(..),
  create,
  Movement(..),
  RotationDirection(..),
  Input(..),
  tick
)
where

import Data.Square
import qualified Data.Player as Player

type TetrominoSequence = [Int]

data GameInfo = GameInfo {
  boardWidth,
  boardHeight :: Int,
  ticksPerFall :: Int,
  tetrominoSequence :: TetrominoSequence
}

data Game = Game {
  gameInfo :: GameInfo,
  board :: Squares,
  player :: Player.Player
}

initBoard :: GameInfo -> Squares
initBoard (GameInfo {
  boardWidth,
  boardHeight
}) =
  let
    row = replicate boardWidth Nothing
  in
    replicate boardHeight row

spawnPlayer :: Game -> Game
spawnPlayer game@(Game {
  gameInfo = gameInfo@(GameInfo {
    boardWidth,
    boardHeight,
    tetrominoSequence
  })
}) =
  let
    (curTetromino, newSequence) = case tetrominoSequence of
      []     -> error "The tetromino sequence is empty!"
      (x:xs) -> (x, xs)
    position = (boardWidth `div` 2, boardHeight)
    player = Player.new curTetromino position
  in
    game { player } { gameInfo = gameInfo { tetrominoSequence = newSequence } }

create :: GameInfo -> Game
create info = spawnPlayer Game {
  gameInfo = info,
  board = initBoard info,
  player = Player.zero
}

data Movement = L | R | D | DD deriving (Eq)
data RotationDirection = CW | CCW deriving (Eq)

data Input = Input {
  movement :: Maybe Movement,
  rotationDirection :: Maybe RotationDirection
}

tick :: Game -> Input -> Game
tick game input = game
