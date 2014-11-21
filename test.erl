-module(test).
-export([fac/1, find/1,addright/2]).


fac(0) -> 1;
fac(N) -> N * fac(N-1).

find(AgeLimit) ->
  People=[{pawel,30},{piotr,28},{grzegorz,35},{karolina,18}],
  [{Name,Age} || {Name,Age} <- People, Age<AgeLimit].

addright([],A) -> [A];
addright([Head|Tail],A) -> [Head|addright(Tail,A)].
