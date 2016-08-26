dec_to_let :: (Foldable t, Num b) => t b -> b
dec_to_let = foldl (\x y -> x*10 + y) 0