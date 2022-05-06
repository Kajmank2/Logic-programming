isParent(father(X),X).
isParent(mother(X),X).
isAncestor(X,Y):- isParent(X,Y).
isAncestor(X,Y):- isParent(X,Z),isAncestor(Z,Y).
