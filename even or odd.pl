%Find a number is Even or ORR.

go:- write("Enter a number"),nl,
	read(A),
	even_odd(A).

	even_odd(A):- M is mod(A,2),
					M = 0,
					write("A is even"), nl.

	even_odd(A):- M is mod(A,2),
					M = 1,
					write("A is Odd"),nl.
