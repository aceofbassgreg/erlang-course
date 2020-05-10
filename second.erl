-module(second).
-export([hypotenuse/2,perimeter/2,area/2]).
-import(first,[square/1]).

hypotenuse(X,Y) ->
  first:square(X) + first:square(Y).

perimeter(X,Y) ->
  L = hypotenuse(X,Y),
  X + Y + L.

area(X,Y) ->
  (X*Y)/2.
