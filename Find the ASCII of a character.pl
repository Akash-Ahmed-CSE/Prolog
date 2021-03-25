% Find the ASCII of a character
go:- write("Enter a character: "),nl,
	get(X),
	ascii(X).

	ascii(X):-
		format("The ASCII is : ~w",[X]),nl.
