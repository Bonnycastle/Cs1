module bool

import Serialize

data bool = true | false

id: bool -> bool
id b = b

not: bool -> bool
not true = false
not _  = true

constTrue: bool -> bool
constTrue _ = true

constFalse: bool -> bool
constFalse _ = false

and: bool -> bool -> bool
and true true = true
and _ _ = false

or: bool -> bool -> bool
or false false = false
or _ _ = true

nand: bool -> bool -> bool
nand n m = not (and n m)

xor: bool -> bool -> bool
xor true false = true
xor false true = true
xor _ _ = false

eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false

instance Serialize bool where
  toString true = "true"
  toString false = "false"
