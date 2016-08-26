new_curry func = \x y -> func (x, y)

new_uncurry func = \(x, y) -> func x y