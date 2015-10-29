-module(find).
-export([find/2,total_price/1]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

find([], K) -> "";
find([{K,X}|Rest],K) -> X;
find([Head|Rest],K) -> find(Rest,K).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

total_price([]) -> [];
total_price(List) -> [{Item,Quantity * Price} || {Item, Quantity, Price} <- List].
