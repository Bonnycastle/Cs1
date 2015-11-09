module DNA

import list
import pair
import nat

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand l = map complement_base l

||| Takes DNA molecule and that returns a value of
||| first strand of the given DNA molecule
strand1: list (pair base base) -> list base
strand1 l = map fst l

||| Takes DNA molecule and that returns a value of
||| second strand of the given DNA molecule
strand2: list (pair base base) -> list base
strand2 l = map snd l

listBase: base -> pair base base
listBase a = mkPair a (complement_base a)

complete: list base -> list (pair base base)
complete l = map listBase l

isEqual: base -> base -> nat
isEqual A A = (S O)
isEqual T T = (S O)
isEqual C C = (S O)
isEqual G G = (S O)
isEqual _ _ = O

countBase: list base -> base -> nat
countBase lt query = foldr add O (map (isEqual query) lt)
