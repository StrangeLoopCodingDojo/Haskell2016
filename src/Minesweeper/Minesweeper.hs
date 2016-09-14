module Minesweeper.Minesweeper where

data Grid = Grid deriving (Eq, Show)

loadGrid :: [String] -> Maybe Grid
loadGrid _ = Nothing
