module Minesweeper.MinesweeperSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import Minesweeper.Minesweeper

main :: IO ()
main = hspec spec

sampleGrid :: [String]
sampleGrid =
  [ "5 5"
  , "...*."
  , "**..."
  , "....."
  , "*...*"
  , "*...*"
  ]

spec :: Spec
spec = do
  describe "loadGrid" $ do
    it "returns Just Grid when given valid input" $ do
      loadGrid sampleGrid `shouldNotBe` Nothing
