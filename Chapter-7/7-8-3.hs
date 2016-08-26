new_map f = foldr (\x y -> [f x] ++ y) []

new_filter p =  foldr item_filter []
                where item_filter = \x y -> if p x
                                                then [x] ++ y
                                                else y