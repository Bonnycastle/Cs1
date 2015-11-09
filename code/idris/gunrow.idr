module gunrow

import list

data country = Argentina | Australia | Austria | Honduras | USA

||| A record of this type represents a country and the death rate
||| per 10,000,000 by gun for homicides, suicides, unintentional, other

data gunrow = mkGunrow country Nat Nat Nat Nat

homicideper10M: gunrow -> Nat
homicideper10M (mkGunrow c h s u o) = h

suicideper10M: gunrow -> Nat
suicideper10M (mkGunrow c h s u o) = s

unintentionalper10M: gunrow -> Nat
unintentionalper10M (mkGunrow c h s u o) = u

otherper10M: gunrow -> Nat
otherper10M (mkGunrow c h s u o) = o

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

austra: gunrow
austra = mkGunrow Australia 11 62 5 8

austri: gunrow
austri = mkGunrow Austria 18 268 1 8

hond: gunrow
hond = mkGunrow Honduras 6480 0 0 0

usa: gunrow
usa = mkGunrow USA 355 670 16 9

table: list gunrow
table = cons argen (cons austra (cons austri (cons hond (cons usa nil))))
-- table = argen :: austra :: austri :: hond :: usa :: nil
