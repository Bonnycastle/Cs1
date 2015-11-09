def hs(n):
    # define variables:
    # counter: default ? -> one line
    p = 0
    # main procedure
       
    # while n != 1:
    # (1) output n
    # (2) update counter
    # (3) update n
           # if n%2 == 0:
              # n = ?
           # else
              # n = ?
    while  (n != 1):
        print (n)
        p = p + 1
        if (n % 2 == 0):
            n = n // 2
        else:
            n = (3*n+1)
        
    # if n == 1:
    # output n
    # output counter
    # return None
    if ( n == 1):
        print ("1")
        print (p+1)
    return None

hs(1)
