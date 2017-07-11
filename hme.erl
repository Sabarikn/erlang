-module(hme).
-export([xor1/2,xor2/2,xor3/2,maxthree/3,howmanyequal/3]).
maxthree(X,Y,Z)->
   max(max(X,Y),Z).
howmanyequal(A,A,A)->
    3;
howmanyequal(A,_,A)->
    2;
howmanyequal(A,A,_)->
    2;
howmanyequal(_,A,A)->
    2;
howmanyequal(_,_,_)->
    0.
xor1(X,X)->
    false;
xor1(_,_)->
    true.
xor2(X,Y)->
    (not(X) and Y ) or (not(Y) and X).
xor3(X,Y)->
    (X or Y ) and (not(X) and Y ).


    
