implement family
    open core, console

class facts - relatives
    parent : (name,name).
    man : (name).
    woman : (name).

clauses
    mother(X,Y) :- parent(X,Y), woman(X).
    father(X,Y) :- parent(X,Y), man(X).
    sibling(X,Y) :- parent(Z,X), parent(Z,Y).
    brother(X,Y) :- sibling(X,Y), man(X), X<>Y.
    sister(X,Y) :- sibling(X,Y), woman(X),X<>Y.
    sisters(X,Y) :- woman(X), woman(Y),sibling(X,Y), X<Y.
    child (X,Y) :- parent(Y,X).
    dauther (X,Y) :- child(X,Y), woman(X).
    son (X,Y) :- child(X,Y), man(X).
    uncle (X,Y) :- parent(Z,Y), brother(X,Z).
    aunt (X,Y) :- parent(Z,Y), sister(X,Z).
    cousinM (X,Y) :- (aunt(Z,Y); uncle(Z,Y)), parent(Z,X), man(X).
    cousinW (X,Y) :- (aunt(Z,Y); uncle(Z,Y)), parent(Z,X), woman(X).
    nephew (X,Y) :- (aunt(Y,X); uncle(Y,X)), man(X).
    niece (X,Y) :- (aunt(Y,X); uncle(Y,X)), woman(X).
    grandparent(X,Y) :- parent(Z,Y), parent(X,Z).
    granddauther (X,Y) :- grandparent(Y,X), woman(X).
run():-
    init(),
    file::consult("..\\Relatives.txt", relatives),

    write("1. Кто приходится тётей Марии?"), nl, aunt(Who, "Мария"), write(Who), nl, fail;

    write ("2. Кто чья мама?"), nl, mother(Who, Whom), write(Who), write(" - мама "),
        write (Whom), nl, fail;

    write ("3. Кто является племянником у Ольги?"), nl, nephew(Who, "Ольга"),
        write(Who), nl, fail;

    write ("4. Кто сестры?"), nl, sisters(Who, Whom), write(Who), write(" и "),
        write (Whom), nl, fail;

    write ("5. Ева - внучка Елены?"), nl, if granddauther("Ева", "Елена")
        then write("Да") else write("Нет") end if, nl, fail;

    write ("6. Кому приходится двюродным братом Егор?"), nl, cousinM("Егор", Whom),
        write (Whom), nl, fail.
run().

    end implement family