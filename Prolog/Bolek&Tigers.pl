%Bolek likes tigers. Lolek likes elephants. Lolek likes everything that
% Bolek likes. Everyone who likes a tiger and an elephant likes
% themselves. Wink is a tiger. Bimbo is an elephant. How to write and
% whether a program in Prolog can prove that
%(a) There is someone who likes himself.
%(b) Someone likes Purr.
%(c) Someone likes Lolek.

tiger(mruczek).
elephant(bimbo).
like(bolek,X):- tiger(X).
like(lolek,X):- elephant(X).
like(lolek,X):- like(bolek,X).
like(X,X):- tiger(Y),like(X,Y),elephant(Z), like(X,Z).
