module dnaTest

import dna
import pair
import nat
import list

-- complement_base: base -> base

complementAbase: base
complementAbase = complement_base A

complementTbase: base
complementTbase = complement_base T

complementCbase: base
complementCbase = complement_base C

complementGbase: base
complementGbase = complement_base G

--complement_strand: list base -> list base

strandA: list base
strandA = A :: T :: C :: G :: nil

complementAstrand: list base
complementAstrand = complement_strand strandA

-- strand1: list (pair base base) -> list base

strandB: list (pair base base)
strandB =(mkPair A T) :: (mkPair C G) :: nil

strandFst: list base
strandFst = strand1 strandB

-- strand2: list (pair base base) -> list base

strandSnd: list base
strandSnd = strand2 strandB

-- complete: list base -> list (pair base base)

completeA: list (pair base base)
completeA = complete strandA

-- countBase: list base -> base -> nat

countBaseofA: nat
countBaseofA = strandA query
