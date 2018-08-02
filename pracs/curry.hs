-- Tutorial 1: Solution to Question 5
-- by Naufal Fikri <github.com/naufik>

curry2 :: ((a, b) -> r) -> (a -> b -> r)
curry2 f x y = f (x, y)

uncurry2 :: (a -> b -> r) -> ((a -> b) -> r)
uncurry 2 f (x,y) = f x y
