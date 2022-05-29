%member(Name,[Name|_]):-!.
%member(Name,[_|Tail]):- member(Name,Tail).
% is member of list

% append
append([],L,L).
append([X|L1],L2,[X|L3]):- append(L1,L2,L3).

% add to list
add(X,L,[X|L]).
del(X,[X|L],L).
del(X,[Y|L],[Y|L1]):-del(X,L,L1).

%
