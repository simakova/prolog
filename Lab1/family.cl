% Copyright

class family

domains
    name=string.
predicates
    father : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    mother : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    child : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    dauther : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    son : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    sibling : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    brother : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    sister : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    sisters: (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    aunt : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    uncle : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    cousinM : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    cousinW : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    nephew : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    niece : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    grandparent : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    granddauther : (name, name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).

    run: ().

end class family