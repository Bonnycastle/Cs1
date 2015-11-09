module listExample

import list
import ite
import nat
import bool

-- map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)
-- filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

mapEven: list bool
mapEven = map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

filterEven: list nat
filterEven = filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)
