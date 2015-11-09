module color

import bool
import pair

%default total

data color =  red | green | blue | yellow | cyan | magenta

compliment: color -> color
compliment red = cyan
compliment green = yellow
compliment blue = magenta
compliment cyan = red
compliment yellow = green
compliment magenta = blue

additive: color -> bool
additive red = true
additive green = true
additive blue = true
additive _ = false

subtractive: color -> bool
subtractive b = not (additive b)

compliments: pair color color -> bool
compliments (mkPair red cyan) = true
compliments (mkPair cyan red) = true
compliments (mkPair green yellow) = true
compliments (mkPair yellow green) = true
compliments (mkPair blue magenta) = true
compliments (mkPair magenta blue) = true
compliments _ = false

mixink: pair color color -> color
mixink (mkPair magenta cyan) = blue
mixink (mkPair magenta yellow) = red
mixink (mkPair cyan yellow) = green
mixink (mkPair cyan magenta) = blue
mixink (mkPair yellow magenta) = red
mixink (mkPair yellow cyan) = green


