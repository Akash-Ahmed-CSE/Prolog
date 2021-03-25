% Find second largest number of three number.
go:- write("Enter three numbers: "),nl,
	read(A),read(B),read(C),
	com(A,B,C).


	com(A,B,C):- A>B,B>C, write("B is second largest"),nl.
	com(A,B,C):- A<B,B<C, write("B is second largest"),nl.
	com(A,B,C):- B>A,A>C, write("A is second largest"),nl.
	com(A,B,C):- B>A,A>C, write("A is second largest"),nl.
	com(A,B,C):- A>C,C>B, write("C is second largest"),nl.
	com(A,B,C):- A>C,C>B, write("C is second largest"),nl.
