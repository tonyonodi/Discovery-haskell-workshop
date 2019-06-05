module Main where

import RIO
import RIO.List.Partial
import Lib

firstWord = head . words

data Dragon = Dragon {
  name :: String
, heads :: Int
} deriving (Show)

instance Eq Dragon where
  (Dragon n1 h1) == (Dragon n2 h2) =
    n1 == n2 && h1 == h2

main :: IO ()
main = runSimpleApp $ do
  let x = Dragon "bob" 5
  logInfo $ displayShow $ (name x)
  logInfo $ displayShow $ firstWord $ "Goodbye World!"
