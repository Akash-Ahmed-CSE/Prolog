%basic artihmatic operation

go:- write("Enter tow number: "),nl,
	read(A),read(B),
	art(A,B).

	art(A,B):-
		S is A+B,
		Z is A-B,
		M is A*B,
		D is div(A,B),
		write("The sum is :"),write(S),nl,
		write("The sub is :"),write(Z),nl,
		write("The mult is :"),write(M),nl,
		write("The div is :"),write(D),nl.
