module natTest

import nat
import bool
import pair
import Serialize

-- evenb
v: bool
v = evenb O

b: bool
b = evenb (S O)

c: bool
c = evenb (S (S O))

d: bool
d = evenb (S r)

-- add
addA: nat
addA = add O O

addB: nat
addB = add (S (S O))  O

addC: nat
addC = add O (S (S O)

addD: nat
addD = add (S (S O)) (S (S (S O)))

--mult
multA: nat
multA = mult O O

multB: nat
multB = mult (S O) O

multC: nat
multC = mult O (S O)

multD: nat
multD = mult (S (S O) (S (S (S O)))

-- fact
factA: nat
factA = fact O

factB:nat
factB = fact (S (S (S O)))

-- sub
subA: nat
subA = sub O O

subB: nat
subB = sub (S O) O

subC: nat
subC = sub O (S O)

subD: nat
subD = sub (S (S O) (S (S (S O)))

--expp
exppA: nat
exppA = expp (O) (S (S O))

exppB: nat
exppB = expp (S O) (O)

exppC: nat
exppC = expp (S (S (S O))) (S (S O))

exppD: nat
exppD = expp O O

--le
leA: bool
leA = le (O) (S O)

leB: bool
leB = le (S O) (O)

leC: bool
leB = le O O

leC: bool
leC = le (S (S (S O))) (S (S O))

leD: bool
leD = le (S O) (S O)

leE: bool
leE = le (S (S O)) (S (S (S O)))

-- eq
eqA: bool
eqA = eq O O

eqB: bool
eqB = eq O (S O)

eqC: bool
eqC = eq (S O) O

eqD: bool
eqD = eq (S O) (S (S O))

eqE: bool
eqE = eq (S (S O)) (S (S O))

-- gt
gtA: bool
gtA = gt O O

gtB: bool
gtB = gt (S O) O

gtC: bool
gtC = gt O (S O)

gtD: bool
gtD = gt (S (S O)) (S (S (S O)))

gtE: bool
gtE = gt (S (S (S O)) (S (S O)))

-- ge
geA: bool
geA = ge O O

geB: bool
geB = not (le (S O) O)

geC: bool
geC = not (le O (S O))

geD: bool
geD = not (le (S (S O)) (S (S (S O))))

geE: bool
geE = not (le (S (S (S O))) (S (S O)))

-- lt
ltA: bool
ltA = not (gt O O)

ltB: bool
ltB = not (gt (S O) O)

ltC: bool
ltC = not (gt O (S O))

ltD: bool
ltD = not (gt (S (S (S O))) (S (S O)))

ltE: bool
ltE = not (gt (S (S O)) (S (S (S O))))

-- overload operators

h4: nat
h4 = add (S (S O)) (S (S (S O))

s: String
s = toString h4
