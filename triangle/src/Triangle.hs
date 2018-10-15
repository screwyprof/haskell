module Triangle
( calcCSide
, isRightTriangle
, calcPerimeter
, calcSquareForRightTriangle
, rad2deg
, calcAlfaWithSinusTheorem
, calcBetaWithSinusTheorem
, printSides
, printSquareAndPerimeter
, printAngles
, printTriangle
, printInvalidTriangleErr
,readLegs
) where

import System.IO (hFlush, stdout)        

calcCSide :: Double -> Double-> Double
calcCSide a b = sqrt(a^2 + b^2)

isRightTriangle :: Double -> Double -> Double -> Bool
isRightTriangle a b c = 
    a + b > c 
    && b + c > a 
    && a + c > b 
    && a^2 + b^2 == c^2

calcPerimeter :: Double -> Double -> Double -> Double
calcPerimeter a b c = a + b + c

calcSquareForRightTriangle :: Double -> Double -> Double
calcSquareForRightTriangle a b = 1 / 2 * a * b

rad2deg :: Double -> Double
rad2deg rad = 360 * rad / (2 * pi)

calcAlfaWithSinusTheorem :: Double -> Double -> Double
calcAlfaWithSinusTheorem a c = rad2deg $ asin $ a / c

calcBetaWithSinusTheorem :: Double -> Double -> Double
calcBetaWithSinusTheorem b c = rad2deg $ asin $ b / c

printSides :: Double -> Double -> Double -> IO ()
printSides a b c = do
    putStr $ "a = " ++ show a ++ " "
    putStr $ "b = " ++ show b ++ " "
    putStrLn $ "c = " ++ show c

printSquareAndPerimeter :: Double -> Double -> IO () 
printSquareAndPerimeter p s = do
    putStr $ "p = " ++ show p ++ " "
    putStrLn $ "s = " ++ show s

printAngles :: Double -> Double -> Double -> IO ()
printAngles alfa beta gamma = do
    putStr $ "alfa = " ++ show alfa ++ " "
    putStr $ "beta = " ++ show beta ++ " "
    putStrLn $ "gamma = " ++ show gamma

printTriangle :: Double -> Double -> Double -> IO()
printTriangle a b c = do
    let p = calcPerimeter a b c
    let s = calcSquareForRightTriangle a b
    let alfa = calcAlfaWithSinusTheorem a c
    let beta = calcBetaWithSinusTheorem b c
    let gamma = 90

    printSides a b c
    printSquareAndPerimeter p s 
    printAngles alfa beta gamma    

printInvalidTriangleErr :: IO ()
printInvalidTriangleErr = putStrLn "The given values don't make a right triangle!"

--readLegs :: IO[Double]
--readLegs = fmap (map read.words) getLine

readLeg :: IO Double
readLeg = readLn :: IO Double

readLegs :: IO (Double, Double)
readLegs = do
    putStr "a = "
    hFlush stdout
    a <- readLeg
    putStr "b = " 
    hFlush stdout
    b <- readLeg
    return (a, b)
