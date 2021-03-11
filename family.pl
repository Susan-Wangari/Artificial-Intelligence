male(dennis).
male(brian).
male(gift).

female(joy).
female(sharon).
female(daisy).
female(norah).

parent(dennis,joy).
parent(sharon,joy).
parent(dennis,gift).
parent(norah,gift).
parent(brian,dennis).
parent(daisy,dennis).

findmum:- write('whose mum do you want to find?'),nl,
read(A),
parent(Z,A),
female(Z),
write('the mum is '),
write(Z).

finddad:- write('whose dad you want to find?'),nl,
read(A),
parent(Y,A),
male(Y),
write('the dad is '),
write(Y).

findwife:- write('whose wife do you want to find?'),nl,
read(Y),
parent(Z,A),
parent(Y,A),
female(Z),
write('the wife is '),
write(Z).

findhusband:- write('whose husband do you want to find?'),nl,
read(Z),
parent(Z,A),
parent(Y,A),
male(Y),
write('the husband is '),
write(Y).

findgrandparent:- write('whose grandparent do you want to find?'),nl,
read(A),
parent(F,A), #mother to the child
parent(M,A), #father to the child
male(M),
female(F),
parent(G,M), #father to the parent
parent(S,M), #mother to the parent
male(G),
female(S),
write('The grand mum from dad side is '), write(S),nl,
write('The grand dad from mum side is '), write(G).