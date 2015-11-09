module list

import pair
import nat

data  list a = nil | cons a (list a)

||| return the length of any given list
length: list a -> nat
length nil = O
length (cons n l') = S (length l')

||| return the result of appending two lists
appen: list a -> list a -> list a
appen nil l2 = l2
appen (cons h l1') l2 = cons h (appen l1' l2)

-- ||| return the head of a list in an option
-- head: list a -> option a
-- head nil = none
