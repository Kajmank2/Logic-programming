%Jesli klocek X stoi na klocku Y, to X jest powy ´ zej Y. Je ˙ sli
% klocek X stoi ´
% na klocku Y i klocek Y jest powyzej klocka Z, to klocek X jest powy ˙
% zej ˙
% klocka Z. Jesli klocek X jest powy ´ zej klocka Y, to Y jest szerszy ni
% ˙ z X. bu ˙
% jest klockiem. fu jest klockiem. tu jest klockiem. mu jest klockiem. bu
% stoi
%na fu. fu stoi na tu. bu jest powyzej mu. ˙
%Jak zapisac i czy program w Prologu pozwala udowodni ´ c,´ ze˙
%(a) bu stoi na mu.
%(b) tu jest szerszy niz bu. ˙
%(c) mu jest szerszy niz bu. ˙
%(d) istnieje klocek szerszy niz fu.

klocek(fu).
klocek(tu).
klocek(bu).
klocek(mu).
stoiNaY(X,Y):-
stoinNaYZ(X,Y):- stoiNaY(X,Y).
jestSzerszy(Y,X):-stoiNaY(X,Y).



