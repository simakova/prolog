    dog(reks).
    dog(boss).
    dog(bim).
    dog(bek).
    dog(ban).
    dog(kim).
    dog(ben).

    parent(boss,bim).
    parent(bek,ban).
    parent(bim,reks).
    parent(ban,reks).
    parent(reks,kim).
    parent(reks,ben).

vnuk(X,Y) :- parent(Z,X), parent(Y,Z).


