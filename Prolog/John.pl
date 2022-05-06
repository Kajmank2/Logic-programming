% john like anyone who likes wine

likes(mary,wine).
likes(bob,beer).
likes(wini,apple).
likes(charlie,wine).

likes(john,X):- likes(X,wine).

%john the thief

thief(wini).
thief(wini).
thief(wiliam).

likes(wini,ball).
likes(william,shoe).
likes(john,snow).
likes(john,dollar).

may_steal(john,X):- likes(X,dollar); thief(X).


