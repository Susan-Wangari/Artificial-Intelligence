mother(grace,john).
mother(laurah,salome).
mother(salome,wanjiru).
mother(molly,erick).

father(paul,john).
father(paul,salome).
father(patrick,wanjiru).
father(patrick,erick).

findmum :- write('whose mum do you want to find?'),nl,
read(C),
mother(M,C),
write('The mum is '),
write(M).

finddad :- write('whose dad do you want to find?'),nl,
read(C),
father(F,C),
write('The dad is '),
write(F).

findsibling :- write('whose sibling do you want to find?'),nl,
read(S),
father(F,S),
father(F,X),
dif(X,S),
write('The sibling is '),
write(X).

findparent:-write('whose parent do you want to find?'),nl,
read(K),
mother(P,K),
father(F,K),
write('the father is '), write(F),nl,
write('the mother is '),
write(P).
