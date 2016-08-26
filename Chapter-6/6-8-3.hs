new_and []   = True
new_and list =
    if not (head list)
        then False
        else new_and (tail list)

new_concat [x]  = x
new_concat list = (head list) ++ (new_concat (tail list))

new_replicate 0 _ = []
new_replicate n x = [x] ++ new_replicate (n-1) x

new_select list 0 = head list
new_select list n = new_select (tail list) (n-1)

new_elem _ []   = False
new_elem x list =
    if x == head list
        then True
        else new_elem x (tail list)