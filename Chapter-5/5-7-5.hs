comprehensions x_range y_range = concat [compre y | y <- y_range]
                                 where compre z = [(x, z) | x <- x_range]