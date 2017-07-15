-module(tailperfect).
-export([perfect/1]).
per(_X,N,N)->
  _X==N;
per(_X,_Y,N) when N rem  _Y == 0 ->
  per(_X+_Y,_Y+1,N);
per(_X,_Y,N) ->
  per(_X,_Y+1,N).

perfect(N)->
  per(0,1,N).
