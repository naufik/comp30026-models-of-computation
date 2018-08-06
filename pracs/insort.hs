-- COMP30026 - Grok Insertion Sort Challenge Solution
-- by Naufal Fikri <github.com/naufik>

insort :: Ord a => [a] -> [a]
insort [] = []
insort (x:xs) = into x (insort xs)

into :: Ord a => a -> [a] -> [a]
into x [] = [x]
into x (k:ms)
  | x < k     = x : (k:ms)
  | otherwise = k : into x (ms)


