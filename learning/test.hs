main :: IO ()
main = putStrLn $ greet "World"

greeting = "Howdy"
greet who = greeting ++ ", " ++ who

add :: Int -> Int -> Int
add a b = a + b

type Count = Int

processString :: [Char] -> Int
processString = undefined

data Compass = North | South | East | West
  deriving (Eq, Ord, Enum, Show)

data Expression = Number Int
                | Add Expression Expression
                | Subtract Expression Expression
                deriving (Eq, Ord, Show)

calculate :: Expression -> Int
calculate (Number x) = x
calculate (Add x y) = (calculate x) + (calculate y)
calculate (Subtract x y) = (calculate x) - (calculate y)

newHead :: [a]  -> a
newHead [] = error "Empty List"
newHead (x:xs) = x

newTail :: [a]  -> [a]
newTail [] = error "Empty List"
newTail (x:xs) = xs

