% print the following pattern
%*****
%****
%***
%**
%*



start:- start(0,5).

start(C,X):- C=< X, count(0,X), X1 is X-1,start(C,X1).

start(C,X):- C<X.

count(X,Y):- X=<Y, write('*'),X1 is X+1,count(X1,Y).


count(X,Y):- X>Y,nl.
