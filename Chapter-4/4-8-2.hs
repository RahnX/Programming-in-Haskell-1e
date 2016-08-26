safetail_conditional xs =
    if null xs
        then []
        else tail xs

safetail_guarded xs | null xs = []
                    | otherwise = tail xs

safetail_pattern [] = []
safetail_pattern xs = tail xs