%Juliet likes Romeo. Everybody likes Julie.
% Everyone who likes Julie also likes what ˙Julia likes. Tybalt is
% related to Juliet. All relatives like each other. How to write and
% whether the program in Prolog allows you to prove that
%(a) Romeo likes himself.
%(b) Someone likes Romeo. ´
%(c) Someone likes Romeo and Juliet
all(romeo).
all(julia).
all(tybalt).
family(tybalt).
family(julia).
like(julia,romeo).
like(X,julia):- all(X).
like(X,julia):- all(X), like(julia,X).
like(X) :-

