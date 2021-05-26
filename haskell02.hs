-- Prática 02 de Haskell
-- Nome: Guilherme Medeiros da Cunha

-- aux para comFebre
comFebreBool :: Float -> Bool
comFebreBool x = x > 37.8

comFebre :: [Float] -> [Float]
comFebre x = filter comFebreBool x

--comFebre feito com função lambda
comFebre' :: [Float] -> [Float]
comFebre' x = filter (\y -> y > 37.8) x

-- itemize com função lambda
itemize :: [String] -> [String]
itemize l = map (\y -> "<li>" ++ y ++ "</li>") l

bigCircles :: Float -> [Int] -> [Float]
bigCircles x r = filter (\z -> z > sqrt(x/pi)) (map fromIntegral r)

quarentena :: [(String, Float)] -> [(String, Float)]
quarentena x = filter (\(_, y) -> y > 37.8) x

idadesEm :: [Int] -> Int -> [Int]
idadesEm i ref = map (\y -> ref - y) i

changeNames :: [String] -> [String]
changeNames s = map (\y -> if (head y == 'A') then ("Super " ++ y) else (y)) s

onlyShorts :: [String] -> [String]
onlyShorts s = filter (\y -> length y < 5) s