% All lizards eat beetle and slugs. Benek is a beetle, but Alek is a
% lizard. If a lizard eats a beetle, it will get sick. If a lizard is
% sick and eats a slug, it will get better. Czesio is a slug. (a) Alek
% will get sick (b) Alek will get well (c) Alek will eat something

lizard(alek).
beetle(benek).
slugs(czesio).
eat(X,Y):- lizard(X),beetle(Y).
eat(X,Y):- lizard(X),slugs(Y).
ill(X):- lizard(X),beetle(Y),eat(X,Y).
recover(X) :- lizard(X),slugs(Y),ill(X) ,eat(X,Y).




