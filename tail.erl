-module(tail).
-export([fib/1,fib1/3]).
fib(0)->
  0;
fib(1)->
  1;
fib(N) when N>1->
  fib1(1,1,N-1).
fib1(_X,_Y,0)->
   _Y;
fib1(_X,_Y,N) ->
  fib1(_Y,_X+_Y,N-1).
