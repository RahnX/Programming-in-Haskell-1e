new_sum []   = 0
new_sum list = (head list) + new_sum (tail list)

new_take 0   list = (head list)
new_take num list = new_take (num-1) (tail list)

new_last [x]  = x
new_last list = new_last (tail list)