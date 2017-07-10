-module(second).
-export([hypo/2,peri/2,area/2]).
hypo(X,Y)->
    math:sqrt(first:sqrt(X)+first:sqrt(Y)).
peri(X,Y)->
    hypo(X,Y)+X+Y.
area(X,Y)->
    (X*Y)/2.
