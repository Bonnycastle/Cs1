module nat2

import bool
import pair
import nat

HOMEWORK PROBLEMS

PROBLEM #1: Multiplication as iterated addition

What we see in the preceding example is that **addition it repeated
incrementing*. What we're now going to see is that multiplication is just
repeated addition!

Here are the key observations in English.

(1) Zero times anything is zero, AND (2) (One more than n) times m
is m+nm. Well, fill in the blank yourself. Note: this isn't
programming, it's just the most basic rules of arithmetic! But you
might not have thought about them for a while. So begin by completing
the English language statement before you try to write the Idris code.
Writing the Idris code should then mostly be a matter of syntax and
typechecking.

Here's the skeleton for the code. Add this code to your nat.idr file,
complete it by replacing the right hand sides of the rules, and add test
cases to verify that it's working!

||| given a pair of natural numbers, return its sum
multp: pair nat nat -> nat
multp (mkPair O m) = O
multp (mkPair (S n) m) = addp (mkPair m (addp (mkPair n m)))

PROBLEM #2:  Factorial

Many functions are defined recursively. The factorial function is one. That's
your base case. The recursive case is that the factorial of any larger natural
number is that number times the factorial of its predecessor. Put another way,
the factorial of the successor (S n) of any natural number is (S n) times the
factorial of n.

factp: nat -> nat
factp O = (S n)
factp (S n) = addp (mkPair (S n) n)
