-- COMP30026 - Tutorial 1 Solution for Question 4
-- Approach by Combinations (incomplete, still gives
-- incorrect answers)
--
-- by Naufal Fikri <github.com/naufik>

fact :: Integer -> Integer

fact 0 = 1
fact x = x * fact (x-1)

choose :: Integer -> Integer -> Integer

choose n k = div (fact n) ((fact k) * (fact (n-k)))

paths :: Integer -> Integer -> Integer

paths m n = choose (m + n - 2) (n - 1)
