-module(assgnmnt).
-export([perimeter/1,area/1,enclose/1,bits/1,bits1/1]).
perimeter({circle,R})->                       % The arguments of the perimeter is given as a tuple where first element is the name of shape and 
  math:pi()*2*R;                              % next elements are values which gives dimensions of that particular shape   
perimeter({rectangle,B,W})->                  % different cases for functions parameter,area and enclose are formed so that each case defines
  (W+B)*2;                                    % different shapes point to note is that I considered triangle and right angled triangle differnt 
perimeter({triangle,B,L,H})->                 % for my convinience
  (B+L+H).
area({circle,R})->
  math:pi()*R*R; 
area({rectangle,A,B})->
  A*B;
area({triangle,A,B,C})->
  S=(A+B+C)/2,
  math:sqrt(S*(S-A)*(S-B)*(S-C));

area({triangle,A,B})->
  (A*B)/2 .
enclose({circle,R})->
  {rectangle,2*R,2*R};
enclose({rectangle,B,W})->
  {rectangle,B,W};
enclose({triangle,B,H})->
  {rectangle,B,H};
enclose({triangle,A,B,C})->
  H = (2*(area({triangle,A,B,C})))/A,
  {rectangle,A,H}.
bits(0)->0;                                   % bits/1 function is the normal recursive function for finding sum of binary bits which is quite 
bits(N)when N >=1->                           % a simple method    
  bits(N div 2)+ (N rem 2).
bits1(N) ->
  bitail(0,N).                                % bits1/1 function is the tail recursive function for finding sum of binary digits where 
bitail(X,0)->                                 % bitail is the reursive function with summing arguments
  X;                                          % and when number reaches 0 the out put will be printed
bitail(X,N) when N rem 2 == 0->
  bitail(X,N div 2);
bitail(X,N)->
  bitail(X+1,N div 2).

