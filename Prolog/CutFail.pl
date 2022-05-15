maxc(X,Y,Max) :- X >= Y, !, Max = X; Max = Y.
maxcf(X,Y,Max) :- X >= Y, !, fail, Max = X; Max = Y.
