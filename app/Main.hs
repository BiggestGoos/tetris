module Main (main) where

import System.Random

import Tetris

main :: IO ()
main = do
  g <- newStdGen
  let tetrominoSequence = randomRs (0, 6) g :: [Int]

  let gameInfo = GameInfo {
    boardWidth = 10,
    boardHeight = 22,
    ticksPerFall = 1,
    tetrominoSequence
  }
  let game = create gameInfo

  print $ player game

  let input = Input {
    movement = Just R,
    rotationDirection = Nothing
  }

  let game2 = tick game input

  print $ player game2
