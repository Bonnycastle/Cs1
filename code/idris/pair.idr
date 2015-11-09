module pair

import bool
import eq

data pair a b = mkPair a b

fst: pair a b -> a
fst (mkPair f s) = f

snd: pair a b -> b
snd (mkPair f s) = s

-- typeclass instances

instance (eq a, eq b) => eq (pair a b) where
  eql (mkPair f1 s1) (mkPair f2 s2) = and (eql f1 f2) (eql s1 s2)
