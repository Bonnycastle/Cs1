module list

import bool
import nat
import ite
import eq
import Serialize

infixr 7 ::,++

data list a = nil | (::) a (list a)

||| return the length of any given list
length: list a -> nat
length nil = O
length (n :: l') = S (length l')

||| return the result of appending two lists
appen: list a -> list a -> list a
appen nil l2 = l2
appen (h :: l1') l2 = (h :: (appen l1' l2))

||| append as an infix operator ++
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h :: t) l2 = h :: (t ++ l2)

||| map a function over the elements of a list
map: (a -> b) -> list a -> list b
map f nil = nil
map f (h :: t) = (f h) :: (map f t)

||| given a list and a predicate on elements return
||| the sublist of elements for which the predicate
||| is true
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h :: t) = ite (f h)
                        (h :: (filter f t))
                              (filter f t)

||| The code is polymorphic in the type, a, of elements
||| in the list to be reduced. The function then uses
||| the recursive computation to reduce the list of elements
foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h)
                  true
                  (member v t)

subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil l2 = false
subset_elements (h::t) l2 = ite (member h l2)
                                (subset_elements t l2)
                                false

same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 = and (subset_elements l1 l2) (subset_elements l2 l1)

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)

toStringList: (Serialize a) => (list a) -> String
toStringList nil = ""
toStringList (h::t) = (toString h)
toStringList (h::t) = (toString h) ++ ", " ++ (toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString nil = "[]"
  toString (h::t) = "[" ++ "(toStringList l)" ++"]"
