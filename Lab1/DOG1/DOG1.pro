% Copyright
/*
implement dOG1
implement main
    open core, console
clauses

    vnuk(X, Y) :- parent(Z,X), parent(Y,Z), dog(X).

    dog("reks").
    dog("boss").
    dog("bim").
    dog("bek").
    dog("ban").
    dog("kim").
    dog("ben").

    parent ("boss", "bim").
    parent ("bek", "ban").
    parent ("bim", "reks").
    parent ("ban", "reks").
    parent ("reks", "kim").
    parent ("reks", "ben").

clauses %запросы
    q1() :-
       write("1. Кто является собакой?"), nl, dog(Who), write(Who), write(" - собака"), nl, fail.
    q1().

      q2() :-
        write ("2. Кто является родителем ?"), nl, parent(Who, Whom), write(Who), write(" - это родитель "), write (Whom), nl, fail.
      q2().

     q3() :-
        write ("3. Кто является внуком (внучкой) ?"), nl, vnuk(Who, Whom), write (Who), write(" - это внук "), write (Whom), nl, fail.
     q3().

     q4() :-
        write ("4. Bek – собака ?"), nl, if dog("bek") then write("Да") else write("Нет") end if, nl, fail.
     q4().

    q5() :-
        write("5. Кто родитель собаки Bek?"),nl, write("Родитель Bek - "), if  parent(Who, "bek") then write(Who)
        else write("неизвестно") end if, nl, fail.
      q5().

         q6() :-
        write ("6. Кому Bek является родителем?"), nl, vnuk(Who, Whom), write (Who), write(" - это внук "), write (Whom), nl, fail.
     q6().
clauses
    run():-
        console::init(),
        write ("Лабораторная работа №1. Вариант 12"), nl,
        q1(), q2(), q3(), q4(), q5(), q6().
end implement main

goal
    console::runUtf8(main::run).
    open core


end implement dOG1*/