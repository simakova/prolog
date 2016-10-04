implement dog
   open core, console

domains
    name=string.

class predicates
    dog : (name) nondeterm anyflow.
    parent : (name, name) nondeterm anyflow.

clauses

    dog(X) :- parent(X,Y), dog(Y).

    dog("reks").
    parent("jek","reks").

    run():-
        init(),

        dog(Who), write(Who),nl,fail.

    run().

end implement dog