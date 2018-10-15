module Main where

import Triangle

main :: IO ()
main = do
    (a, b) <- readLegs
    let c = calcCSide a b
    if isRightTriangle a b c 
        then printTriangle a b c 
        else printInvalidTriangleErr