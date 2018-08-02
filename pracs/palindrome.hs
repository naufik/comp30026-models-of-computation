-- Solution to "Palindrome Check" on Codesignal
-- by Naufal Fikri <github.com/naufik>

import Data.List

palindrome :: [Char] -> Bool

palindrome [] = True
palindrome [a] = True
palindrome (x:xs) = (x == last xs) && palindrome (init xs) 
