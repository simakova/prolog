% Copyright

class main
    open core
domains
    name=string.
predicates
    %count : (string,integer).
  %  man : (gender)determ (i) multi(o).
   % woman : (gender) determ (i) multi(o).
    %descendant : (string, string) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    %grandparent : (string, string) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    %sister : (string, string) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    %ancestor: (string, string) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    %grandson : (string, string) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
   % granddauther : (string, string) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
   father : (name, name) nondeterm(i,o) nondeterm(o,i) multi(o,o) determ(i,i).
    mother : (name, name) nondeterm(i,o) nondeterm(o,i) multi(o,o) determ(i,i).
%grandparent : (string, string) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o).
  %  wife : (string, string) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o).
   % child : (string, string) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o).
   % husband : (string, string) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
  %  sisters : (string, string)nondeterm(i,o) nondeterm(o,i) nondeterm(o,o).
   % married : (string, string) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o).
  %  father : (string, string) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    %mother : (string, string) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    %brother : (string, string) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    gender : (name) determ (i) multi(o).
    person: (name,name) nondeterm(i,o) nondeterm(o,i) nondeterm(o,o) nondeterm(i,i).
    q1 : () procedure.
    %q2 : () procedure.
    %q3 : () procedure.
    %q4 : () procedure.
    %q5 : () procedure.
    %q6 : () procedure.
    run: core::runnable.
end class main