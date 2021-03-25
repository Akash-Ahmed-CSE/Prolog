aunt(X,Y):-sibling(X,Z),parent(Z,Y),female(X).

brother(X,Y):-sibling(X,Y),male(X).

brother_in_law(X,Y):-child(X,Z),married(Z,W),parent(W,Y),not(sibling(X,Y)),male(X).

child(X,Y):-parent(Y,X).

daughter(X,Y):-parent(Y,X),child(X,Y),female(X).

father(X,Y):-parent(X,Y),male(X).

father_in_law(X,Y):-child(X,Z),married(Y,Z),not(child(X,Y)),male(X).

grandparent(X,Y):-parent(X,Z),parent(Z,Y).

grandmother(X,Y):-grandparent(X,Y),female(X).

grandfather(X,Y):-grandparent(X,Y),male(X).

grandchild(X,Y):-child(X,Z),child(Z,Y).

married(X,Y):-wife(X,Y),female(X).

married(X,Y):-husband(X,Y),male(X).

mother(X,Y):-parent(X,Y),female(X).

parent(X,Y):-child(Y,X).

sibling(X,Y):-parent(Z,X),parent(Z,Y).

sister(X,Y):-sibling(X,Y),female(X).

son(X,Y):-parent(Y,X),male(X).

son_in_law(X,Y):-child(X,Z),not(child(X,Y)),married(Z,Y),male(X).

step_daughter(X,Y):-child(X,Z),married(Z,Y),not(child(X,Y)),female(X).

step_parent(X,Y):-married(X,Z),parent(Z,Y),not(parent(X,Y)).

step_father(X,Y):-step_parent(X,Y),male(X).

step_mother(X,Y):-step_parent(X,Y),female(X).

uncle(X,Y):-sibling(X,Z),parent(Z,Y),male(X).
child(X, Y) :-parent(Y, X),not(X = Y).

sibling(X, Y) :-parent(Z, X),parent(Z, Y),not(X = Y).

spouse(X, Y) :-parent(Y, Z),parent(X, Z),female(X),male(Y),not(X = Y).

cousin(X, X2) :-parent(Y, X),parent(Y2, X2),sibling(Y, Y2),not(X = Y).

child_in_law(X, Y) :-parent(Z, X),not(parent(Y, X)),spouse(Z, Y),not(X = Y).

mother(M,C) :- parent(M,C), female(M).

father(F,C) :- parent(F,C), male(F).

sibling(X, Y) :- parent(Z, X),parent(Z, Y),X\=Y.

mother(M,C) :- parent(M,C), female(M).

father(F,C) :- parent(F,C), male(F).

married(X, Y) :-mother(X, Z), father(Y, Z);father(X, Z), mother(Y, Z).

mother_in_law(X,Y) :-female(X),mother(X, Z),married(Z, Y).

grandmother(X,Y) :- female(X),parent(X,S),parent(S,Y).

sister(X,Y):- sibling(X,Y),female(X),X\=Y.

step_brother(X,Y) :-parent(A,X),parent(A,Y),parent(B,X),parent(C,Y),not(A = B),not(A = C),not(B = C),male(Y).

step_sister(X,Y) :-parent(A,X),parent(A,Y),parent(B,X),parent(C,Y),not(A = B),not(A = C),not(B = C),female(Y).

aunt(X,Y):- sibling(X,Z),parent(Z,Y),female(X).

uncle(X,Y):- sibling(X,Z),parent(Z,Y),male(X).





