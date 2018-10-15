module IsRightTriangleSpec (spec) where

import Test.Hspec
import Triangle

spec :: Spec
spec = describe "isRightTriangle" $
    it "Checks if the given figures make a right angled triangle" $
        isRightTriangle 3 4 5 `shouldBe` True    
