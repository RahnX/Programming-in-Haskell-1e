positions key list = find key (zip list [0..(length list - 1)])
                     where find key t = [v | (k, v) <- t, k == key]