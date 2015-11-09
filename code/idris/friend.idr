module friend

import bool

||| A friend is either male (true) or female,
||| trustworthy or not, has a name, an age in
||| years and a happiness rank (scale 1-10)

record friend where
    constructor mkFriend
    gender: bool
    trustworthy : bool
    name : String
    age : Nat
    happiness : Nat

||| These are all my friends!

f: friend
f = (mkFriend true true "Chris" 18 4)

f1: friend
f1 = (mkFriend true false "Joey" 5 10)

f2: friend
f2 = (mkFriend false true "Casey" 30 1)

f3: friend
f3 = (mkFriend true true "Sammy" 24 7)

f4: friend
f4 = (mkFriend false false "Kai" 11 5)

||| Some test cases for my Number One friend Chris

trustChris: bool
trustChris = trustworthy f
-- expect true

nameChris: String
nameChris = name f
-- expect "Chris"

ageChris: Nat
ageChris = age f
-- expect 18
