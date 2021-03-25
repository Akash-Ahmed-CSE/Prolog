% Repeat predicate

go:- write("Enter two number: "),nl,
	read(A),read(N),
	loop(A,N).

	loop(A,N):-
		repeat,
		between(A,N,X),
		writeln(X),
		X = N,!.
