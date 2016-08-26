merge [] list = list
merge list [] = list
merge x_list y_list = concat [[(head small)], merge (tail small) large]
                      where (small, large) = if (head x_list) < (head y_list)
                                                 then (x_list, y_list)
                                                 else (y_list, x_list)