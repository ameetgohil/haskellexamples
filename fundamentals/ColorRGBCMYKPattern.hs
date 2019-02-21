data Color = RGB Int Int Int | CMYK Float Float Float Float deriving Show

colorModel :: Color -> String
{-colorModel (RGB _ _ _) = "RGB"
colorModel (CMYK _ _ _ _) = "CMYK"
-}
colorModel c =
  case c of RGB _ _ _ -> "RGB"
            CMYK _ _ _ _ -> "CMYK"
main :: IO ()
main = do
  let c = CMYK 1.0 2.0 3.0 4.0
  putStrLn $ colorModel c
  --print $ colorModel c
