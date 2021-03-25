% Find the largest between tow numbers.

go:- write("Enter two numbers: "),nl,
	read(A),read(B),
	com(A,B).

	com(A,B):- A>B, write("A is larger");nl.
	com(A,B):- A<B, write("B is larger");nl.
	com(A,B):- A=:=B, write("A and B is equal"),nl.

