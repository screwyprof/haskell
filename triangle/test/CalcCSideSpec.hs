module CalcCSideSpec (spec) where

import Test.Hspec
import Triangle

spec :: Spec
spec = describe "calcCSide" $
    it "Calculates the hypothenus" $
        calcCSide 3 4 `shouldBe` 5
