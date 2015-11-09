module length

import bool

l1 = cons O nil

l2: list_nat
l2 = (cons (S O) (cons (S (S O)) nil))

l3; list_nat
l3 = (cons (S O) cons (S (S O)) ( cons (S (s (s O))) nil)))

length: list_nat -> natlength nil = O
length nil = O
length (cons n l') = S (length l')

len_l3: nat
len_l3 = length l3
