new_exp _    0 = 1
new_exp base n = base * (new_exp base (n - 1))