implement ex_1
    open core, console, string

class predicates
    inverting: (integer*, integer*) nondeterm anyflow.
    processing: (integer, integer)nondeterm anyflow.
clauses
    inverting ([ ], [ ]).
    inverting ([H | T], [Inv_H | Inv_T]):- processing (H, Inv_H), inverting (T, Inv_T).
    processing (0,0).
    processing(H, Inv_H) :- Inv_H = -H.

    run ():- init(),
        inverting ([-2, -1, 0, 1, 2], Inv_List), write("Inv_List=", Inv_List), nl,fail.
    run().

end implement ex_1