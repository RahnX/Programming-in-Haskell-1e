pyths n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], pythagorean x y z]
          where pythagorean a b c = a^2 + b^2 == c^2