% Copyright

implement main
    open core, console
clauses
  %  descendant(Y,X) :- parent(X,Y).
   % mother(X,Y) :- parent(X,Y), woman(X).
   % father(X,Y) :- parent(X,Y), man(X).
%    sisters(X,Y) :- mother(Z,X) mother(Z,Y), woman(X), woman(Y), X>Y.

  %  grandparent(X,Y) :- parent(X,Y), parent(Y,Z), !.
   % sister(X,Y) :- parent(Z,X), parent(Z,Y), woman(X), woman(Y), X>Y.
   % ancestor(X,Z) :- parent(X,Z).
    %ancestor(X,Z) :- parent(X,Y), ancestor(Y,Z), !.
    %grandson(X, Y) :- parent(Z,X), parent(Y,Z), man(X).
    %granddauther(X, Y) :- parent(Z,X), parent(Y,Z), woman(X).


   % brother(X,Y) :- parent(Z,X), parent(Z,Y), man(X).
    %wife(X,Y) :- father(Y,Z),  mother(X,Z), woman(X).
    %husband (X,Y) :- father(X,Z), mother(Y,Z), man(X).
    %child (X,Y) :- parent(Y,X).
  %  married (X,Y) :- mother(X,Z),father(Y,Z);mother(Y,Z),father(X,Z).
    %count(
    person(X,Y) :- father(X,Z), gender(Y); mother(X,Z), gender(Y).

gender("male").
gender("female").

father("Владимир","Ольга").
father("Владимир","Ксения").
father("Алексей","Дмитрий").
father("Алексей","Иван").
father("Андрей","Настя").
father("Андрей","Егор").
father("Андрей","Мария").
father("Дмитрий","Лёша").
father("Дмитрий","Ева").

mother("Людмила","Ольга").
mother("Людмила","Ксения").
mother("Елена","Дмитрий").
mother("Елена","Иван").
mother("Ольга","Мария").
mother("Ольга","Егор").
mother("Ольга","Настя").
mother("Ксения","Лёша").
mother("Ксения","Ева").

/*man("Владимир").
man("Андрей").
man("Егор").
man("Алексей").
man("Дмитрий").
man("Иван").
man("Лёша").

woman("Людмила").
woman("Елена").
woman("Ольга").
woman("Ксения").
woman("Мария").
woman("Настя").
woman("Ева").

parent("Владимир","Ольга").
parent("Владимир","Ксения").
parent("Людмила","Ольга").
parent("Людмила","Ксения").
parent("Алексей","Дмитрий").
parent("Алексей","Иван").
parent("Елена","Дмитрий").
parent("Елена","Иван").
parent("Ольга","Мария").
parent("Ольга","Егор").
parent("Ольга","Настя").
parent("Андрей","Настя").
parent("Андрей","Егор").
parent("Андрей","Мария").
parent("Ксения","Лёша").
parent("Ксения","Ева").
parent("Дмитрий","Лёша").
parent("Дмитрий","Ева").
*/
clauses %запросы
    q1() :-
       write("1. Всех людей мужского пола"), nl, person(Who, "male"), write(Who), nl, fail.
    q1().

 /*     q2() :-
        write ("2. Кто мамы"), nl, mother(Who, Whom), write(Who), write(" - мама "), write (Whom), nl, fail.
      q2().

     q3() :-
        write ("3. Кто является предком?"), nl, grandparent(Who, Whom), write(Who), write(" - это дед/бабушка "), write (Whom), nl, fail.
     q3().

     q4() :-
        write ("4. Кто сестры?"), nl, sister(Who, Whom), write(Who), write(" - это сестра "), write (Whom), nl, fail.
     q4().

    q5() :-
        write ("5. Кто предок?"), nl, ancestor(Who, Whom), write(Who), write(" - это внук "), write (Whom), nl, fail.
      q5().

         q6() :-
        write ("6. Кто брат Еве?"), nl, brother(Who, "Ева"), write (Who), write(" - это брат Евы"), nl, fail.
     q6().*/
clauses
    run():-
        console::init(),
        write ("Лабораторная работа №1. Вариант 12"), nl,
        q1()/*,q2(), q3(), q4(), q5(), q6()*/.
end implement main

goal
    console::runUtf8(main::run).
