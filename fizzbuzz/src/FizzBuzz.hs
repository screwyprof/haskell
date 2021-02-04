module FizzBuzz where

printFizzBuzz :: IO ()
printFizzBuzz = putStr . unlines $ map fizzbuzz [1 .. 100]

fizzbuzz :: Int -> String
fizzbuzz x
  | x `mod` 3 == 0 && x `mod` 5 == 0 = "FizzBuzz"
  | x `mod` 3 == 0 = "Fizz"
  | x `mod` 5 == 0 = "Buzz"
  | otherwise = show x
