implement dog1
    open core, console
class facts - dogs
    dog: (string).
    parent: (string, string).
class predicates
    vnuk : (string, string) nondeterm anyflow.
clauses
    vnuk(X, Y) :- parent(Z,X), parent(Y,Z), dog(X).

    run():-
        init(),
        file::consult("..\\Dogs.txt", dogs),
        write("1. Кто является собакой?"), nl, dog(Who), write(Who), write( " - собака"), nl, fail;

        write ("2. Кто является родителем ?"), nl, parent(Who, Whom), write(Who),
            write(" - это родитель "), write (Whom), nl, fail;

        write ("3. Кто является внуком (внучкой) ?"), nl, vnuk(Who, Whom), write (Who),
            write(" - это внук "), write (Whom), nl, fail;

        write ("4. Bek – собака ?"), nl, if dog("bek") then write("Да")
            else write("Нет") end if, nl, fail;
        write("5. Кто родитель собаки Bek?"),nl, write("Родитель Bek - "),
            if  parent(Who, "bek") then write(Who) else write("неизвестно") end if, nl, fail;

        write ("6. Кому Bek является родителем?"), nl, parent("bek", Whom),
            write("Bek - это родитель "), write (Whom), nl, fail.
    run().

end implement dog1