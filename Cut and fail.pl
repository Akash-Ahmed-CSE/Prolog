% Cut and fail
% akash likes animal with snakes.


animal(dog).
animal(cat).
animal(tiger).
animal(elephant).
animal(cobra).
animal(python).

snake(cobra).
snake(python).

likes(akash,A):- snake(A),!,fail.

likes(akash,A):- animal(A).
