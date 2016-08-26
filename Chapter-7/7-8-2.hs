new_all _ []   = True
new_all f list =
    if not (f (head list))
        then False
        else new_all f (tail list)

new_any _ []   = False
new_any f list =
    if f (head list)
        then True
        else new_any f (tail list)

new_takeWhile f []   = []
new_takeWhile f list =
    if not (f (head list))
        then []
        else [(head list)] ++ (new_takeWhile f (tail list))

new_dropWhile f [] = []
new_dropWhile f list =
    if not (f (head list))
        then list
        else new_dropWhile f (tail list)