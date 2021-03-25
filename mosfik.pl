parent(adam,david).
parent(adam,whitney).
parent(adam,victoria).

parent(zarin,david).
parent(zarin,whitney).
parent(zarin,victoria).

parent(benzamin,evan).
parent(benzamin,faisal).
parent(benzamin,uma).

parent(yasmeen,evan).
parent(yasmeen,faisal).
parent(yasmeen,uma).

parent(chamak,george).
parent(chamak,tessa).
parent(chamak,sadia).

parent(xaria,george).
parent(xaria,tessa).
parent(xaria,sadia).

parent(uma,hector).
parent(uma,jakir).

parent(vivian,queen).
parent(vivian,ismael).

parent(evan,queen).
parent(evan,ismael).

parent(tessa,phoebe).
parent(tessa,olivia).

parent(faisal,olivia).
parent(faisal,phoebe).

parent(hector,kanak).
parent(hector,wendy).
parent(hector,vivian).

parent(queen,kanak).
parent(queen,wendy).
parent(queen,vivian).

parent(ismael,limon).
parent(ismael,mosfik).
parent(ismael,ursula).

parent(jakir,nasir).
parent(jakir,tiana).
parent(jakir,shyla).

parent(olivia,nasir).
parent(olivia,tiana).
parent(olivia,shyla).

parent(phoebe,limon).
parent(phoebe,mosfik).
parent(phoebe,ursula).

parent(david,hector).
parent(george,jakir).

male(adam).
male(david).
male(benzamin).
male(evan).
male(faisal).
male(chamak).
male(george).
male(hector).
male(kanak).
male(ismael).
male(limon).
male(mosfik).
male(jakir).
male(nasir).

female(zarin).
female(whitney).
female(victoria).
female(yasmeen).
female(uma).
female(xaria).
female(tessa).
female(sadia).
female(queen).
female(wendy).
female(victoria).
female(phoebe).
female(ursula).
female(olivia).
female(tiana).
female(shyla).

child(X, Y) :-
    parent(Y, X),
    not(X = Y).

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    not(X = Y).

spouse(X, Y) :-
    parent(Y, Z),
    parent(X, Z),
    female(X),
    male(Y),
    not(X = Y).

cousin(X, X2) :-
    parent(Y, X),
    parent(Y2, X2),
    sibling(Y, Y2),
    not(X = Y).

child_in_law(X, Y) :-
    parent(Z, X),
    not(parent(Y, X)),
    spouse(Z, Y),
    not(X = Y).
