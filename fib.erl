-module(fib).
-export([fib/1,piece/1,pic/1]).
fib(0)->
  0;
fib(1)->
  1;
fib(N) when n>1 ->
  fib(N-1)+fib(N-2). 
piece(0)->
  1;
piece(X)->
  X+piece(X-1).
pic(0)->
  1;
pic(1)->
  2;
pic(Y)->
(Y*(Y-1))+2. 
