% Atoms (byty)
apple.
pear.
lime.
potato.

john.
alice.
florence.
terry.

% Facts
food(apple). %Food has apple
food(pear).
food(lime).
food(potato).

person(jonh).
person(alice).
person(florence).
person(terry).
person(tommy).
person(jerry).


child(florence, john).
child(florence, alice).
child(tommy, florence).
child(tommy, terry).
child(jerry, john).
child(jerry, alice).

%RULES (; - alternative  ,- coniunction)
parent(X,Y) :- child(Y,X).
ancestor(X,Y) :- parent(X,Y); (parent(X,Z),ancestor(Z,Y)).
descendand(X,Y) :- ancestor(Y,X).
married(X,Y) :-  parent(X,Z), parent(Y,Z).
