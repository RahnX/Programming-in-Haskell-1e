factors n = [x | x <- [1..n], n `mod` x == 0]

perfects n = [x | x <- [1..n], perfect x]
             where perfect num = sum (factors num) - num == num