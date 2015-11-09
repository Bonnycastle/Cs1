module listTest

import list
import pair
import nat

-- li: list bool
-- li = true :: false :: true :: true :: nil c

-- l2': list nat
-- l2 = (cons (S O) cons (S (S O)) nil))

l2': list' nat
l2' = (S O)::(S (S O))::(S (S (S O)))::nil

lengthA: nat
lengthA = length nil

lengthB: nat
lengthB = length l2'

appendA: list nat
appendA = appen nil l2'

appendB: list
appendB = appen l2 l2'
