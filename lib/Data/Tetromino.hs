module Data.Tetromino
(
  module Type,
  Rotation(..),
  squares
)
where

import Data.Tetromino.Type as Type
import Data.Square

data Rotation = Zero | One | Two | Three deriving (Eq, Ord, Show)

-- I | O | T | J | L | S | Z

n, i, o, t, j, l, s, z :: Square

n = Nothing
i = Just I
o = Just O
t = Just T
j = Just J
l = Just L
s = Just S
z = Just Z

squares :: Tetromino -> Rotation -> Squares

squares I Zero =
  [
    [n,n,n,n],
    [i,i,i,i],
    [n,n,n,n],
    [n,n,n,n]
  ]
squares I One =
  [
    [n,n,i,n],
    [n,n,i,n],
    [n,n,i,n],
    [n,n,i,n]
  ]
squares I Two =
  [
    [n,n,n,n],
    [n,n,n,n],
    [i,i,i,i],
    [n,n,n,n]
  ]
squares I Three =
  [
    [n,i,n,n],
    [n,i,n,n],
    [n,i,n,n],
    [n,i,n,n]
  ]

squares O _ =
  [
    [n,o,o,n],
    [n,o,o,n],
    [n,n,n,n],
    [n,n,n,n]
  ]

squares T Zero =
  [
    [n,t,n,n],
    [t,t,t,n],
    [n,n,n,n],
    [n,n,n,n]
  ]
squares T One =
  [
    [n,t,n,n],
    [n,t,t,n],
    [n,t,n,n],
    [n,n,n,n]
  ]
squares T Two =
  [
    [n,n,n,n],
    [t,t,t,n],
    [n,t,n,n],
    [n,n,n,n]
  ]
squares T Three =
  [
    [n,t,n,n],
    [t,t,n,n],
    [n,t,n,n],
    [n,n,n,n]
  ]

squares J Zero =
  [
    [j,n,n,n],
    [j,j,j,n],
    [n,n,n,n],
    [n,n,n,n]
  ]
squares J One =
  [
    [n,j,j,n],
    [n,j,n,n],
    [n,j,n,n],
    [n,n,n,n]
  ]
squares J Two =
  [
    [n,n,n,n],
    [j,j,j,n],
    [n,n,j,n],
    [n,n,n,n]
  ]
squares J Three =
  [
    [n,j,n,n],
    [n,j,n,n],
    [j,j,n,n],
    [n,n,n,n]
  ]

squares L Zero =
  [
    [n,n,l,n],
    [l,l,l,n],
    [n,n,n,n],
    [n,n,n,n]
  ]
squares L One =
  [
    [n,l,n,n],
    [n,l,n,n],
    [n,l,l,n],
    [n,n,n,n]
  ]
squares L Two =
  [
    [n,n,n,n],
    [l,l,l,n],
    [l,n,n,n],
    [n,n,n,n]
  ]
squares L Three =
  [
    [l,l,n,n],
    [n,l,n,n],
    [n,l,n,n],
    [n,n,n,n]
  ]

squares S Zero =
  [
    [n,s,s,n],
    [s,s,n,n],
    [n,n,n,n],
    [n,n,n,n]
  ]
squares S One =
  [
    [n,s,n,n],
    [n,s,s,n],
    [n,n,s,n],
    [n,n,n,n]
  ]
squares S Two =
  [
    [n,n,n,n],
    [n,s,s,n],
    [s,s,n,n],
    [n,n,n,n]
  ]
squares S Three =
  [
    [s,n,n,n],
    [s,s,n,n],
    [n,s,n,n],
    [n,n,n,n]
  ]

squares Z Zero =
  [
    [z,z,n,n],
    [n,z,z,n],
    [n,n,n,n],
    [n,n,n,n]
  ]
squares Z One =
  [
    [n,n,z,n],
    [n,z,z,n],
    [n,z,n,n],
    [n,n,n,n]
  ]
squares Z Two =
  [
    [n,n,n,n],
    [z,z,n,n],
    [n,z,z,n],
    [n,n,n,n]
  ]
squares Z Three =
  [
    [n,z,n,n],
    [z,z,n,n],
    [z,n,n,n],
    [n,n,n,n]
  ]
