module boolTest

import bool
import pair

-- and
andA: bool
andA = and true true

andB: bool
andB = and true false

andC: bool
andC: and false true

andD: bool
andD: and false false

-- or
orA: bool
orA = or true true

orB: bool
orB = or true false

orC: bool
orC = or false true

orD: bool
orD = or false false

-- nand
nandA: bool
nandA = not (and true true)

nandB: bool
nandB = not (and true false)

nandC: bool
nandC = not (and false true)

nandD: bool
nandD = not (and false false)

--xor
xorA: bool
xorA = xor true true

xorB: bool
xorB = xor true false

xorC: bool
xorC = xor false true

xorD: bool
xorD = xor false false
