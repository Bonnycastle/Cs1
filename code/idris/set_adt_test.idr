module set_adt_test

import set_spec
import bool
import option
import pair
import list
import nat
import eq
import Serialize
import list
import ite

||| true
truetrue: bool
truetrue = true

||| list of bool
l7': list bool
l7' = true::false::false::nil

||| list of true
l6': list bool
l6' = true::true::true::nil

||| list of two
l5': list nat
l5' = (S (S O))::(S (S O))::nil

||| a single nat
two: nat
two = (S (S O))

||| a copy of l2
l4': list nat
l4' = (S O)::(S (S O))::(S (S (S O)))::nil

||| empty list
l3': list nat
l3' = nil

||| list of nat
l2': list nat
l2' = (S O)::(S (S O))::(S (S (S O)))::nil

||| another list of nat
l1': list nat
l1' = (S (S (S (S (S (S O))))))::(S (S (S (S (S O)))))::(S (S (S (S O))))::(S (S (S O)))::nil


-- isEmpty: (s: set a) -> bool

isEmptyNil: bool
isEmptyNil = isEmpty (mkSet l3')
--- expect true

isEmptyNot: bool
isEmptyNot = isEmpty (mkSet l2')
-- expect false


-- set_insert: (eq a) => a -> set a -> set a

set_insertNat: set nat
set_insertNat = set_insert (S (S (S (S O)))) (mkSet l2')
-- expect l2' with 4


-- set_remove: (eq a) => (v: a) -> (s: set a) -> set a

set_removeOne: set nat
set_removeOne = set_remove (S O) (mkSet l2')
-- expect l2' without 1


-- set_cardinality: (s: set a) -> nat

set_Cardinality: nat
set_Cardinality = set_cardinality (mkSet l2')
-- expect 4


-- set_member: (eq a) => (v: a) -> (s: set a) -> bool

set_memberFalse: bool
set_memberFalse = set_member (S (S (S (S O)))) (mkSet l2')
-- expect false

set_memberTrue: bool
set_memberTrue = set_member (S O) (mkSet l2')
-- expect true


-- set_union: (eq a) => (s1: set a) -> (s2: set a) -> set a

set_Union: set nat
set_Union = set_union (mkSet l1') (mkSet l2')
-- expect a set of nil through 6


-- set_intersection: (eq a) => (s1: set a) -> (s2: set a) -> set a

set_Intersection: set nat
set_Intersection = set_intersection (mkSet l4') (mkSet l2')
-- expect a set of nil through 3


-- set_difference: (eq a) => (s1: set a) -> (s2: set a) -> set a

set_Difference: set nat
set_Difference = set_difference (mkSet l1') (mkSet l2')
- expect a set of 1 through 6


-- set_forall: (p: a -> bool) -> (s: set a) -> bool

set_Forall: bool
set_Forall = set_forall truetrue (mkSet l6')
-- expect true

set_ForallNot: bool
set_ForallNot = set_forall truetrue (mkSet l7')
--expect false



-- set_exists: (p: a -> bool) -> (s: set a) -> bool

set_Exists: bool
set_Exists = set_exists truetrue (mkSet l7')
-- expect true


-- set_witness: (p: a -> bool) -> (s: set a) -> option a

set_Witness: option bool
set_Witness = set_witness truetrue (mkSet l6')

set_Witness2: option bool
set_Witness2 = set_witness truetrue (mkSet l7')


-- set_product: (s1: set a) -> (s2: set b) -> set (pair a b)

set_Product: set (pair nat nat)
set_Product = set_product (mkSet l2') (mkSet l1')


-- set_powerset: (s: set a) -> set (set a)


-- set_eql: (eq a) => (s1: set a) -> (s2: set a) -> bool

set_AreEql: bool
set_AreEql = set_eql (mkSet l2') (mkSet l4')
-- expect true

set_NotEql: bool
set_NotEql = set_eql (mkSet l2') (mkSet l1')
-- expect false

-- set_toString: (Serialize a) => set a -> String

set_ToString: String
set_ToString = set_toString (mkSet l2')
