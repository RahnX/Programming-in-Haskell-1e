import Data.Char

shift n c | isLower c = trans c 'a'
          | isUpper c = trans c 'A'
          | otherwise = c
          where trans c base = int_to_let ((let_to_int c base + n) `mod` 26) base
                let_to_int c base = ord c - ord base
                int_to_let n base = chr (ord base + n)

encode n xs = [shift n x | x <- xs]