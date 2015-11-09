module unit

import eq
import Serialize

-- data type

data unit = mkUnit

-- function

unit_id: unit -> unit
unit_id mkUnit = mkUnit

-- overloaded operators

instance eq unit where
  eql u1 u2 = true

instance Serialize unit where
  toString u = "()"
