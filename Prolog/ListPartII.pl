% List member %
member(X,[X|_]).
member(X,[_,T]). :- member(X,T).
% List Length
listLength([],0).
listLength([_|T],N):- listLength(T,N1), N is N1 + 1.
% Sum of list
sumOfList([],0).
sumOfList([H|T],N):- sumOfList(T,N1), N is N1+H.
% Check if list is sorted
isSorted([]).
isSorted([_]).
isSorted([X,Y|T]):- X=<Y,isSorted([Y|T]).

%append 2list
append([],L2,L2).
append([H|T],L2,[H|L3]). :-append(T,L2,L3).
%list accumulator
istlen(L, N) :- listacc(L, 0, N).
listacc([], A, A).
listacc([_|T], A, N) :- A1 is A+1, listacc(T, A1, N).
%max c
