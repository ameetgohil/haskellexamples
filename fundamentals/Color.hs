data Color = RGB Int Int Int deriving Show

red :: Color -> Int
red (RGB r _ _) = r 

green :: Color -> Int
green (RGB _ g _) = g

blue :: Color -> Int
blue (RGB _ _ b) = b 


data Pixel = Pixel Int Int Int Color

pixelRed :: Pixel -> Int
pixelRed (Pixel _ _ _ (RGB r _ _)) = r

main :: IO ()
main = do
  let c = RGB 10 20 30
  print $ red c
  print $ green c
  print $ blue c
  
  let p = Pixel 100 100 100 (RGB 10 20 30)
  print $ pixelRed p
