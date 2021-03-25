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

parent(u,h).
parent(u,j).

parent(v,q).
parent(v,i).

parent(e,q).
parent(e,i).

parent(t,p).
parent(t,o).

parent(f,o).
parent(f,p).

parent(h,k).
parent(h,w).
parent(h,v).

parent(q,k).
parent(q,w).
parent(q,v).

parent(i,l).
parent(i,m).
parent(i,u).

parent(j,n).
parent(j,t).
parent(j,s).

parent(o,n).
parent(o,t).
parent(o,s).

parent(p,l).
parent(p,m).
parent(p,u).

parent(d,h).
parent(g,j).

male(a).
male(d).
male(b).
male(e).
male(f).
male(c).
male(g).
male(h).
male(k).
male(i).
male(l).
male(m).
male(j).
male(n).

female(z).
female(w).
female(v).
female(y).
female(u).
female(x).
female(t).
female(s).
female(q).
female(w).
female(v).
female(p).
female(u).
female(o).
female(t).
female(s).

child(X,Y) :-parent(Y,X).

sibling(X,Y) :-parent(Z,X),parent(Z,Y).
spouse(X,Y) :-parent(Y,Z),parent(X,Z),female(X),X \= Y.

cousin(X,X2) :-parent(Y,X),parent(Y2,X2),sibling(Y,Y2).

child_in_law(X,Y) :-parent(Z,X),not(parent(Y,X)),spouse(Z,Y).





