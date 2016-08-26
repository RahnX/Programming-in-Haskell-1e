import Data.Char

int_to_bin 0 = []
int_to_bin n = n `mod` 2 : int_to_bin (n `div` 2)

bin_to_int bits = sum [w*b | (w, b) <- zip weights bits]
                  where weights = iterate (*2) 1

make8 bits = take 8 (bits ++ repeat 0)

encode = concat . map (make8 . int_to_bin . ord)

parity = \bits -> sum bits `mod` 2

add_parity_bit bits = bits ++ [parity bits]

security   = concat . (map add_parity_bit) . chop8
desecurity = concat . (map remove_parity_bit) . chop9

remove_parity_bit bits =
    if last bits == parity (take 8 bits)
        then take 8 bits
        else error "Bit Error!"

chop8 []   = []
chop8 bits = take 8 bits : chop8 (drop 8 bits)

chop9 []   = []
chop9 bits = take 9 bits : chop9 (drop 9 bits)

decode = map (chr . bin_to_int) . chop8

transmit = decode . channel . encode
channel = desecurity . security