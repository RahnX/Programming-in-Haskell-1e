unfold p h t x | p x = []
               | otherwise = h x : unfold p h t (t x)

new_chop8 = unfold null (take 8) (drop 8)

new_map f = unfold null (f . head) tail

new_iterate f = unfold (\_ -> False) id f