module pairTest

import pair
import bool
import unit

p1: pair bool bool
p1 = mkPair true false

p3: pair unit bool
p3 = mkPair mkUnit false

p4: pair unit bool
p4 = mkPair mkUnit true

