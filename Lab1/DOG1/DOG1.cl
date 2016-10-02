% Copyright
/*
class dOG1
open core
domains
    name=string.
predicates
    dog : (name)determ (i) multi(o).
    parent : (name, name) nondeterm(i,o) nondeterm(o,i) multi(o,o) determ(i,i).
    vnuk : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o).

    q1 : () procedure.
    q2 : () procedure.
    q3 : () procedure.
    q4 : () procedure.
    q5 : () procedure.
    q6 : () procedure.
    run: core::runnable.

end class dOG1*/