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

age(john, 73).
age(alice,70).
age(florence,38).
age(terry,24).
age(tommy,6).
age(jerry,43).
age(tomek,43).

%RULES (; - alternative  ,- coniunction)
parent(X,Y) :- child(Y,X).
ancestor(X,Y) :- parent(X,Y); (parent(X,Z),ancestor(Z,Y)).
descendand(X,Y) :- ancestor(Y,X).
married(X,Y) :-  parent(X,Z), parent(Y,Z), X \= Y.


% =========AGE========
older(X,Y) :- age(X,A), age(Y,B), A>B.
younger(X,Y) :- age(X,A), age(Y,B), A<B.
equeal(X,Y) :-age(X,A), age(Y,B), A==B.

%=========LIKE========
likes(tommy,apple).
likes(tommy,potato).
likes(terry,pear).
likes(X,Y):- parent(Y,X); child(Y,X); married(Y,X).

who_likes_to_eat_what :- food(Y),likes(X,Y), format('~w likes to eat ~w\n',[X,Y]),fail.
/*
 * Possible equeal
 * X =:= Y -> EQUEAL
 * X \= NOT EAQUEAL
 * X =< Y
 * X >= Y
 *
*/


