% Find even number between two giben number.

go:- write("Enter two number"),nl,
	read(I),read(N),
	loop(I,N).

	loop(I,N):-
		between(I,N,X),
		A is mod(X,2),
		A = 0,
		writeln(X),
		X>=N,!.
		loop(I,N).
