-- COMP30026 - Tutorial 1 Solution for Question 4
-- Recursive Approach (note that there are other recusive
-- approaches)
--
-- by Naufal Fikri <github.com/naufik>

paths2 :: Integer -> Integer -> Integer

paths2 1 _ = 1
paths2 _ 1 = 1

paths2 m n = sum [paths2 (m - 1) (n - k) | k <- [0..n]]

-- Alternative Approach (with same base case):

-- paths2 m n = paths2 (m - 1) n + paths2 m (n - 1)
