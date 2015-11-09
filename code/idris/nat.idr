module nat

import bool
import pair
import eq
import Serialize

data nat = O | S nat

s: nat
s = S (S (S (S (S (S (S O))))))

isZero: nat -> bool
isZero O = true
isZero _ = false

succ: nat -> nat
succ n = S n

pred: nat -> nat
pred O = O
pred (S n) = n

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact (S n) = mult (S n) (fact (S n))

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

expp: nat -> nat -> nat
expp O O = (S O)
expp O m = O
expp m O = (S O)
expp m (S n) = mult m (expp m n)

le: nat -> nat -> bool
le O O = true
le O m = true
le m O = false
le (S a) (S b) = le a b

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat O (S n) = false
eql_nat (S m) O = false
eql_nat (S n) (S m) = eql_nat n m

gt: nat -> nat -> bool
gt O O = false
gt O m = false
gt m O = true
gt (S a) (S b) = gt a b

ge: nat -> nat -> bool
ge O O = true
ge a b = not (le a b)

lt: nat -> nat -> bool
lt a b = not (gt a b)

fib: nat -> nat
fib (S O) = O
fib (S (S O)) = (S O)
fib (S n) = add (fib n) (fib (pred n))

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
