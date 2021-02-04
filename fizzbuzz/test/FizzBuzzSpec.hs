module FizzBuzzSpec (spec) where

import FizzBuzz
import Test.Hspec

spec :: Spec
spec = describe "fizbuzz" $ do
  it "returns 'Fizz' when the number is divizable by 3" $
    fizzbuzz 3 `shouldBe` "Fizz"

  it "returns 'Buzz' when the number is divizable by 3" $
    fizzbuzz 5 `shouldBe` "Buzz"

  it "returns 'FizzBuzz' when the number is divizable by 3 and 5" $
    fizzbuzz 15 `shouldBe` "FizzBuzz"

  it "returns the number when the number is not divizable by 3 or 5" $
    fizzbuzz 4 `shouldBe` "4"