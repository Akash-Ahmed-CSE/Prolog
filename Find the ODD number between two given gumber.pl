% Find the ODD number between two given gumber.

go:- write("Enter two numebr: "),nl,
	read(I),read(N),
	loop(I,N).

	loop(I,N):-
		between(I,N,X),
		A is mod(X,2),
		A=1,
		writeln(X),
		X>=N,!.
		loop(I,N).
