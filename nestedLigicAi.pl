parent(a,d).
parent(a,w).
parent(a,v).

parent(z,d).
parent(z,w).
parent(z,v).

parent(b,e).
parent(b,f).
parent(b,u).
parent(y,e).
parent(y,f).
parent(y,u).

parent(c,g).
parent(c,t).
parent(c,s).

parent(x,g).
parent(x,t).
parent(x,s).

parent(d,h).
parent(u,h).

parent(v,q).
parent(e,q).
parent(v,i).
parent(e,i).

parent(f,p).
parent(t,p).
parent(u,j).
parent(g,j).
parent(f,o).
parent(t,o).

parent(h,k).

parent(h,w2).
parent(h,v2).
parent(q,k).
parent(q,w2).
parent(q,v2).

parent(i,l).
parent(i,m).
parent(i,u2).
parent(j,n).
parent(j,t2).
parent(j,s2).
parent(o,n).
parent(o,t2).
parent(o,s2).



mother(X, Y):- parent(X,Y), female(X).

father(X,Y):- parent(X,Y),male(X).


child(X,Y):- parent(Y,X).

sibling(X,Y):- parent(Z,Y),parent(Z,X).

spouse(X,Y):- parent(Y,Z),parent(X,Z).
cousin(X,Y) :- father(X,A),father(Y,B),sibling(A,B).















