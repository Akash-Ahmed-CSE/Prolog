

go:- write("Enter a number: "),nl,
	read(N),
	loop(1,N).


	loop(1,N):-
		between(1,N,X),
		writeln(X),
		X>=N ,!.
		loop(1,N).
