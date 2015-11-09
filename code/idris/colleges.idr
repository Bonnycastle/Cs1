module college

import list

data college = UVA | JMU | WM

data enroll = mkEnroll college Nat Nat Nat Nat

||| college enrollment per 1000

undergrad: enroll -> Nat
undergrad (mkEnroll c y u g t) = u

grad: enroll -> Nat
grad (mkEnroll c y u g t) = g

max: enroll -> Nat
max (mkEnroll c y u g t) = t

year: enroll -> Nat
year (mkEnroll c y u g t) = y

uva: enroll
uva = mkEnroll UVA 2015 15 6 21

jmu: enroll
jmu = mkEnroll JMU 2015 19 1 20

wm: enroll
wm = mkEnroll WM 2015 6 2 8

collegetable: list enroll
collegetable = cons uva (cons jmu (cons wm nil))

||| nextyear shows the enrollment for the successive year
nextyear: enroll -> Nat -> Nat -> enroll
nextyear (mkEnroll c y u g t) l = mkEnroll c l u g t
