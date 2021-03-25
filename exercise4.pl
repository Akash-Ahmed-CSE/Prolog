father(shohidul,satcho).
father(jamal,shohidul).
father(rahaman,jamal).
father(someone,rahman).



grantfather(X,Y):-father(X,shohidul),father(shohidul,Y).
