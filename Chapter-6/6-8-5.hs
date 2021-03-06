halve xs = (take n xs, drop n xs)
           where n = length xs `div` 2

merge [] list = list
merge list [] = list
merge x_list y_list = concat [[(head small)], merge (tail small) large]
                      where (small, large) = if (head x_list) < (head y_list)
                                                 then (x_list, y_list)
                                                 else (y_list, x_list)

msort []   = []
msort [x]  = [x]
msort list = merge (msort first_half) (msort second_half)
             where (first_half, second_half) = halve list