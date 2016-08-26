f = \x -> x^2
p = \x -> odd x

list_comprehension   = \xs -> [f x | x <- xs, p x]
high_order           = (map f) . (filter p)