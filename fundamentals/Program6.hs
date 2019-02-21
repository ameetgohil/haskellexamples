f = do
  a
  b
  c

g = do a
       b
       c

a :: IO () -- type signature required to give f an unambigous type
a = undefined; b = undefined; c = undefined
main = undefined
