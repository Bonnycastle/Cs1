module Box

import eq

data Box t = mkBox t

unbox: Box t -> t
unbox (mkBox b) = b

-- typeclass instances / overloaded operators

eql_box: (eq a) => Box a -> Box a -> bool
eql_box (mkBox v1) (mkBox v2) = eql v1 v2

instance (eq a) => eq (Box a) where
  eql (mkBox v1) (mkBox v2) = eql_box v1 v2
