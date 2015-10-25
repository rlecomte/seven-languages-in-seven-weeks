-module(day1).
-export([countw/1,count/0,error/1]).

% ----------------------------------------

cw(Sum,"") -> Sum;
cw(Sum, Sentence) -> 
	Idx = string:str(Sentence," "),
	if Idx == 0 -> Sum + 1;
		true -> 
			Substr = string:substr(Sentence, Idx + 1),
                        cw(Sum + 1, Substr)
	end.

countw(Sentence) -> cw(0,Sentence).

% ----------------------------------------

c(I) when I < 11 -> 
	lists:append([I],c(I + 1));
c(_) -> [].

count() -> c(0).

%-----------------------------------------

error({error, Message}) -> string:concat("error : ",Message);
error(_) -> "Success".
	
